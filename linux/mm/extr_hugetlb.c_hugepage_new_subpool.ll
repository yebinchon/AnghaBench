; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugepage_new_subpool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugepage_new_subpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugepage_subpool = type { i32, i64, i64, i64, %struct.hstate*, i32 }
%struct.hstate = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hugepage_subpool* @hugepage_new_subpool(%struct.hstate* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hugepage_subpool*, align 8
  %5 = alloca %struct.hstate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hugepage_subpool*, align 8
  store %struct.hstate* %0, %struct.hstate** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hugepage_subpool* @kzalloc(i32 48, i32 %9)
  store %struct.hugepage_subpool* %10, %struct.hugepage_subpool** %8, align 8
  %11 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %12 = icmp ne %struct.hugepage_subpool* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.hugepage_subpool* null, %struct.hugepage_subpool** %4, align 8
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %16 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %15, i32 0, i32 5
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %19 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %22 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.hstate*, %struct.hstate** %5, align 8
  %24 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %25 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %24, i32 0, i32 4
  store %struct.hstate* %23, %struct.hstate** %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %28 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %14
  %32 = load %struct.hstate*, %struct.hstate** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @hugetlb_acct_memory(%struct.hstate* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %38 = call i32 @kfree(%struct.hugepage_subpool* %37)
  store %struct.hugepage_subpool* null, %struct.hugepage_subpool** %4, align 8
  br label %44

39:                                               ; preds = %31, %14
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %42 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  store %struct.hugepage_subpool* %43, %struct.hugepage_subpool** %4, align 8
  br label %44

44:                                               ; preds = %39, %36, %13
  %45 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  ret %struct.hugepage_subpool* %45
}

declare dso_local %struct.hugepage_subpool* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @hugetlb_acct_memory(%struct.hstate*, i64) #1

declare dso_local i32 @kfree(%struct.hugepage_subpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
