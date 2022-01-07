; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_device_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_device_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6adm = type { i32 }
%struct.q6copp = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@ADM_CMD_DEVICE_CLOSE_V5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6adm*, %struct.q6copp*, i32, i32)* @q6adm_device_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6adm_device_close(%struct.q6adm* %0, %struct.q6copp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.q6adm*, align 8
  %6 = alloca %struct.q6copp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.apr_pkt, align 4
  store %struct.q6adm* %0, %struct.q6adm** %5, align 8
  store %struct.q6copp* %1, %struct.q6copp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %11 = load i32, i32* @APR_HDR_SIZE, align 4
  %12 = call i32 @APR_HDR_LEN(i32 %11)
  %13 = load i32, i32* @APR_PKT_VER, align 4
  %14 = call i32 @APR_HDR_FIELD(i32 %10, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 24, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %23 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ADM_CMD_DEVICE_CLOSE_V5, align 4
  %34 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %37 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %38 = call i32 @q6adm_apr_send_copp_pkt(%struct.q6adm* %36, %struct.q6copp* %37, %struct.apr_pkt* %9, i32 0)
  ret i32 %38
}

declare dso_local i32 @APR_HDR_FIELD(i32, i32, i32) #1

declare dso_local i32 @APR_HDR_LEN(i32) #1

declare dso_local i32 @q6adm_apr_send_copp_pkt(%struct.q6adm*, %struct.q6copp*, %struct.apr_pkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
