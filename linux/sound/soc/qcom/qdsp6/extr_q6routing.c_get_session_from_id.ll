; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6routing.c_get_session_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6routing.c_get_session_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_data = type { i32 }
%struct.msm_routing_data = type { %struct.session_data* }

@MAX_SESSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.session_data* (%struct.msm_routing_data*, i32)* @get_session_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.session_data* @get_session_from_id(%struct.msm_routing_data* %0, i32 %1) #0 {
  %3 = alloca %struct.session_data*, align 8
  %4 = alloca %struct.msm_routing_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_routing_data* %0, %struct.msm_routing_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_SESSIONS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.msm_routing_data*, %struct.msm_routing_data** %4, align 8
  %14 = getelementptr inbounds %struct.msm_routing_data, %struct.msm_routing_data* %13, i32 0, i32 0
  %15 = load %struct.session_data*, %struct.session_data** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.session_data, %struct.session_data* %15, i64 %17
  %19 = getelementptr inbounds %struct.session_data, %struct.session_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %12, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.msm_routing_data*, %struct.msm_routing_data** %4, align 8
  %24 = getelementptr inbounds %struct.msm_routing_data, %struct.msm_routing_data* %23, i32 0, i32 0
  %25 = load %struct.session_data*, %struct.session_data** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.session_data, %struct.session_data* %25, i64 %27
  store %struct.session_data* %28, %struct.session_data** %3, align 8
  br label %34

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %7

33:                                               ; preds = %7
  store %struct.session_data* null, %struct.session_data** %3, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.session_data*, %struct.session_data** %3, align 8
  ret %struct.session_data* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
