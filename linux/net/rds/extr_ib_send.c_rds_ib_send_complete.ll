; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { i32 }

@RDS_RDMA_SUCCESS = common dso_local global i32 0, align 4
@RDS_RDMA_REMOTE_ERROR = common dso_local global i32 0, align 4
@RDS_RDMA_OTHER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_message*, i32, void (%struct.rds_message*, i32)*)* @rds_ib_send_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_send_complete(%struct.rds_message* %0, i32 %1, void (%struct.rds_message*, i32)* %2) #0 {
  %4 = alloca %struct.rds_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.rds_message*, i32)*, align 8
  %7 = alloca i32, align 4
  store %struct.rds_message* %0, %struct.rds_message** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.rds_message*, i32)* %2, void (%struct.rds_message*, i32)** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %14 [
    i32 128, label %9
    i32 129, label %10
    i32 130, label %12
  ]

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = load i32, i32* @RDS_RDMA_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  br label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @RDS_RDMA_REMOTE_ERROR, align 4
  store i32 %13, i32* %7, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @RDS_RDMA_OTHER_ERROR, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %12, %10
  %17 = load void (%struct.rds_message*, i32)*, void (%struct.rds_message*, i32)** %6, align 8
  %18 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %19 = load i32, i32* %7, align 4
  call void %17(%struct.rds_message* %18, i32 %19)
  br label %20

20:                                               ; preds = %16, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
