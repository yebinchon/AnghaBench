; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_add_to_swap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_add_to_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32 }

@__GFP_HIGH = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_swap(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @VM_BUG_ON_PAGE(i32 %11, %struct.page* %12)
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @PageUptodate(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @VM_BUG_ON_PAGE(i32 %18, %struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @get_swap_page(%struct.page* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.TYPE_5__* %4 to i8*
  %25 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

30:                                               ; preds = %1
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = load i32, i32* @__GFP_HIGH, align 4
  %33 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @__GFP_NOWARN, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @add_to_swap_cache(%struct.page* %31, i32 %38, i32 %36)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %46

43:                                               ; preds = %30
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i32 @set_page_dirty(%struct.page* %44)
  store i32 1, i32* %2, align 4
  br label %51

46:                                               ; preds = %42
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @put_swap_page(%struct.page* %47, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %43, %29
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @get_swap_page(%struct.page*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_to_swap_cache(%struct.page*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @put_swap_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
