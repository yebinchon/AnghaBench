; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_get_fwk_versions.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_get_fwk_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6core = type { i32, i32, i32, %struct.apr_device* }
%struct.apr_device = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@AVCS_CMD_GET_FWK_VERSION = common dso_local global i32 0, align 4
@Q6_READY_TIMEOUT_MS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6core*)* @q6core_get_fwk_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6core_get_fwk_versions(%struct.q6core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6core*, align 8
  %4 = alloca %struct.apr_device*, align 8
  %5 = alloca %struct.apr_pkt, align 4
  %6 = alloca i32, align 4
  store %struct.q6core* %0, %struct.q6core** %3, align 8
  %7 = load %struct.q6core*, %struct.q6core** %3, align 8
  %8 = getelementptr inbounds %struct.q6core, %struct.q6core* %7, i32 0, i32 3
  %9 = load %struct.apr_device*, %struct.apr_device** %8, align 8
  store %struct.apr_device* %9, %struct.apr_device** %4, align 8
  %10 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %11 = load i32, i32* @APR_HDR_SIZE, align 4
  %12 = call i32 @APR_HDR_LEN(i32 %11)
  %13 = load i32, i32* @APR_PKT_VER, align 4
  %14 = call i32 @APR_HDR_FIELD(i32 %10, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @APR_HDR_SIZE, align 4
  %18 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @AVCS_CMD_GET_FWK_VERSION, align 4
  %21 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %24 = call i32 @apr_send_pkt(%struct.apr_device* %23, %struct.apr_pkt* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %59

29:                                               ; preds = %1
  %30 = load %struct.q6core*, %struct.q6core** %3, align 8
  %31 = getelementptr inbounds %struct.q6core, %struct.q6core* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.q6core*, %struct.q6core** %3, align 8
  %34 = getelementptr inbounds %struct.q6core, %struct.q6core* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @Q6_READY_TIMEOUT_MS, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @wait_event_timeout(i32 %32, i32 %35, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %29
  %42 = load %struct.q6core*, %struct.q6core** %3, align 8
  %43 = getelementptr inbounds %struct.q6core, %struct.q6core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.q6core*, %struct.q6core** %3, align 8
  %48 = getelementptr inbounds %struct.q6core, %struct.q6core* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.q6core*, %struct.q6core** %3, align 8
  %50 = getelementptr inbounds %struct.q6core, %struct.q6core* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %59

57:                                               ; preds = %41, %29
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %56, %53, %27
  %60 = load i32, i32* %2, align 4
  ret i32 %60
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
