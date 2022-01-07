; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_unlock_or_release_subpool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_unlock_or_release_subpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugepage_subpool = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hugepage_subpool*)* @unlock_or_release_subpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_or_release_subpool(%struct.hugepage_subpool* %0) #0 {
  %2 = alloca %struct.hugepage_subpool*, align 8
  %3 = alloca i32, align 4
  store %struct.hugepage_subpool* %0, %struct.hugepage_subpool** %2, align 8
  %4 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %5 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %10 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %17 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %16, i32 0, i32 4
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %23 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %28 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %31 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 0, %32
  %34 = call i32 @hugetlb_acct_memory(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %2, align 8
  %37 = call i32 @kfree(%struct.hugepage_subpool* %36)
  br label %38

38:                                               ; preds = %35, %13
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hugetlb_acct_memory(i32, i32) #1

declare dso_local i32 @kfree(%struct.hugepage_subpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
