; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c___release_z3fold_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c___release_z3fold_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i32 }
%struct.page = type { i32, i32 }
%struct.z3fold_pool = type { i32, i32, i32, i32, i32 }

@PAGE_STALE = common dso_local global i32 0, align 4
@NEEDS_COMPACTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z3fold_header*, i32)* @__release_z3fold_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__release_z3fold_page(%struct.z3fold_header* %0, i32 %1) #0 {
  %3 = alloca %struct.z3fold_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.z3fold_pool*, align 8
  store %struct.z3fold_header* %0, %struct.z3fold_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %8 = call %struct.page* @virt_to_page(%struct.z3fold_header* %7)
  store %struct.page* %8, %struct.page** %5, align 8
  %9 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %10 = call %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header* %9)
  store %struct.z3fold_pool* %10, %struct.z3fold_pool** %6, align 8
  %11 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %12 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %11, i32 0, i32 0
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* @PAGE_STALE, align 4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @NEEDS_COMPACTING, align 4
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 1
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %27 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %26, i32 0, i32 4
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 0
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i32 @list_del_init(i32* %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %39 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %38, i32 0, i32 4
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %45 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %48 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %51 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %50, i32 0, i32 0
  %52 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %53 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %52, i32 0, i32 3
  %54 = call i32 @list_add(i32* %51, i32* %53)
  %55 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %56 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %59 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %58, i32 0, i32 1
  %60 = call i32 @queue_work(i32 %57, i32* %59)
  %61 = load %struct.z3fold_pool*, %struct.z3fold_pool** %6, align 8
  %62 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  ret void
}

declare dso_local %struct.page* @virt_to_page(%struct.z3fold_header*) #1

declare dso_local %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
