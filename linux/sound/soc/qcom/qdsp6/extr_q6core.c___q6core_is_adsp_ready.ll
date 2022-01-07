; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c___q6core_is_adsp_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c___q6core_is_adsp_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6core = type { i32, i32, i64, i32, %struct.apr_device* }
%struct.apr_device = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@AVCS_CMD_ADSP_EVENT_GET_STATE = common dso_local global i32 0, align 4
@Q6_READY_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6core*)* @__q6core_is_adsp_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__q6core_is_adsp_ready(%struct.q6core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6core*, align 8
  %4 = alloca %struct.apr_device*, align 8
  %5 = alloca %struct.apr_pkt, align 4
  %6 = alloca i32, align 4
  store %struct.q6core* %0, %struct.q6core** %3, align 8
  %7 = load %struct.q6core*, %struct.q6core** %3, align 8
  %8 = getelementptr inbounds %struct.q6core, %struct.q6core* %7, i32 0, i32 4
  %9 = load %struct.apr_device*, %struct.apr_device** %8, align 8
  store %struct.apr_device* %9, %struct.apr_device** %4, align 8
  %10 = load %struct.q6core*, %struct.q6core** %3, align 8
  %11 = getelementptr inbounds %struct.q6core, %struct.q6core* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %13 = load i32, i32* @APR_HDR_SIZE, align 4
  %14 = call i32 @APR_HDR_LEN(i32 %13)
  %15 = load i32, i32* @APR_PKT_VER, align 4
  %16 = call i32 @APR_HDR_FIELD(i32 %12, i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @APR_HDR_SIZE, align 4
  %20 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @AVCS_CMD_ADSP_EVENT_GET_STATE, align 4
  %23 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %26 = call i32 @apr_send_pkt(%struct.apr_device* %25, %struct.apr_pkt* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

30:                                               ; preds = %1
  %31 = load %struct.q6core*, %struct.q6core** %3, align 8
  %32 = getelementptr inbounds %struct.q6core, %struct.q6core* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.q6core*, %struct.q6core** %3, align 8
  %35 = getelementptr inbounds %struct.q6core, %struct.q6core* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @Q6_READY_TIMEOUT_MS, align 4
  %38 = call i32 @msecs_to_jiffies(i32 %37)
  %39 = call i32 @wait_event_timeout(i32 %33, i32 %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %30
  %43 = load %struct.q6core*, %struct.q6core** %3, align 8
  %44 = getelementptr inbounds %struct.q6core, %struct.q6core* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.q6core*, %struct.q6core** %3, align 8
  %49 = getelementptr inbounds %struct.q6core, %struct.q6core* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.q6core*, %struct.q6core** %3, align 8
  %51 = getelementptr inbounds %struct.q6core, %struct.q6core* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %63

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42, %30
  %57 = load %struct.q6core*, %struct.q6core** %3, align 8
  %58 = getelementptr inbounds %struct.q6core, %struct.q6core* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %54, %29
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @APR_HDR_FIELD(i32, i32, i32) #1

declare dso_local i32 @APR_HDR_LEN(i32) #1

declare dso_local i32 @apr_send_pkt(%struct.apr_device*, %struct.apr_pkt*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
