; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_rdma.c_rds_pages_in_vec.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_rdma.c_rds_pages_in_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iovec = type { i32, i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_iovec*)* @rds_pages_in_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_pages_in_vec(%struct.rds_iovec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_iovec*, align 8
  store %struct.rds_iovec* %0, %struct.rds_iovec** %3, align 8
  %4 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %5 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %8 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %6, %9
  %11 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %12 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %17 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @UINT_MAX, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %42

23:                                               ; preds = %15
  %24 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %25 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %28 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load %struct.rds_iovec*, %struct.rds_iovec** %3, align 8
  %37 = getelementptr inbounds %struct.rds_iovec, %struct.rds_iovec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = sub nsw i32 %35, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %23, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
