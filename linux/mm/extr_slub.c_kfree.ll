; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_kfree.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i32, i32* @_RET_IP_, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @trace_kfree(i32 %7, i8* %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @ZERO_OR_NULL_PTR(i8* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call %struct.page* @virt_to_head_page(i8* %16)
  store %struct.page* %17, %struct.page** %3, align 8
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @PageSlab(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %15
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @compound_order(%struct.page* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @PageCompound(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @kfree_hook(i8* %34)
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @page_pgdat(%struct.page* %36)
  %38 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 1, %39
  %41 = sub nsw i32 0, %40
  %42 = call i32 @mod_node_page_state(i32 %37, i32 %38, i32 %41)
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @__free_pages(%struct.page* %43, i32 %44)
  br label %54

46:                                               ; preds = %15
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.page*, %struct.page** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* @_RET_IP_, align 4
  %53 = call i32 @slab_free(i32 %49, %struct.page* %50, i8* %51, i32* null, i32 1, i32 %52)
  br label %54

54:                                               ; preds = %46, %25, %14
  ret void
}

declare dso_local i32 @trace_kfree(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ZERO_OR_NULL_PTR(i8*) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @kfree_hook(i8*) #1

declare dso_local i32 @mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @slab_free(i32, %struct.page*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
