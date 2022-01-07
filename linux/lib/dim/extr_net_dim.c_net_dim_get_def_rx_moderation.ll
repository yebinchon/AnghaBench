; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_get_def_rx_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_get_def_rx_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_cq_moder = type { i32 }

@DIM_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i64 0, align 8
@NET_DIM_DEF_PROFILE_CQE = common dso_local global i64 0, align 8
@NET_DIM_DEF_PROFILE_EQE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_dim_get_def_rx_moderation(i64 %0) #0 {
  %2 = alloca %struct.dim_cq_moder, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @DIM_CQ_PERIOD_MODE_START_FROM_CQE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @NET_DIM_DEF_PROFILE_CQE, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @NET_DIM_DEF_PROFILE_EQE, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %9, %8 ], [ %11, %10 ]
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @net_dim_get_rx_moderation(i64 %14, i64 %15)
  %17 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %2, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

declare dso_local i32 @net_dim_get_rx_moderation(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
