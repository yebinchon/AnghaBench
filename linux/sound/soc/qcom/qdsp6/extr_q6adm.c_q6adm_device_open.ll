; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6adm = type { i32 }
%struct.q6copp = type { i32 }
%struct.q6adm_cmd_device_open_v5 = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@ADM_CMD_DEVICE_OPEN_V5 = common dso_local global i32 0, align 4
@ADM_LEGACY_DEVICE_SESSION = common dso_local global i32 0, align 4
@ADM_CMDRSP_DEVICE_OPEN_V5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6adm*, %struct.q6copp*, i32, i32, i32, i32, i32, i32)* @q6adm_device_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6adm_device_open(%struct.q6adm* %0, %struct.q6copp* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.q6adm*, align 8
  %11 = alloca %struct.q6copp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.q6adm_cmd_device_open_v5*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.apr_pkt*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.q6adm* %0, %struct.q6adm** %10, align 8
  store %struct.q6copp* %1, %struct.q6copp** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @q6afe_get_port_id(i32 %24)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* @APR_HDR_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 40
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %23, align 4
  %30 = load i32, i32* %23, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  store i8* %32, i8** %21, align 8
  %33 = load i8*, i8** %21, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %120

38:                                               ; preds = %8
  %39 = load i8*, i8** %21, align 8
  %40 = bitcast i8* %39 to %struct.apr_pkt*
  store %struct.apr_pkt* %40, %struct.apr_pkt** %20, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = load i32, i32* @APR_HDR_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = bitcast i8* %44 to %struct.q6adm_cmd_device_open_v5*
  store %struct.q6adm_cmd_device_open_v5* %45, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %46 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %47 = load i32, i32* @APR_HDR_SIZE, align 4
  %48 = call i32 @APR_HDR_LEN(i32 %47)
  %49 = load i32, i32* @APR_PKT_VER, align 4
  %50 = call i32 @APR_HDR_FIELD(i32 %46, i32 %48, i32 %49)
  %51 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %52 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %23, align 4
  %55 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %56 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %60 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %19, align 4
  %63 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %64 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 %66, 16
  %68 = load %struct.q6copp*, %struct.q6copp** %11, align 8
  %69 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  %72 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %73 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @ADM_CMD_DEVICE_OPEN_V5, align 4
  %76 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %77 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @ADM_LEGACY_DEVICE_SESSION, align 4
  %80 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %81 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %84 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %19, align 4
  %86 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %87 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %90 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, 255
  %93 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %94 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %97 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %100 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.q6adm_cmd_device_open_v5*, %struct.q6adm_cmd_device_open_v5** %18, align 8
  %102 = getelementptr inbounds %struct.q6adm_cmd_device_open_v5, %struct.q6adm_cmd_device_open_v5* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @q6dsp_map_channels(i32* %104, i32 %105)
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %38
  br label %116

110:                                              ; preds = %38
  %111 = load %struct.q6adm*, %struct.q6adm** %10, align 8
  %112 = load %struct.q6copp*, %struct.q6copp** %11, align 8
  %113 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %114 = load i32, i32* @ADM_CMDRSP_DEVICE_OPEN_V5, align 4
  %115 = call i32 @q6adm_apr_send_copp_pkt(%struct.q6adm* %111, %struct.q6copp* %112, %struct.apr_pkt* %113, i32 %114)
  store i32 %115, i32* %22, align 4
  br label %116

116:                                              ; preds = %110, %109
  %117 = load %struct.apr_pkt*, %struct.apr_pkt** %20, align 8
  %118 = call i32 @kfree(%struct.apr_pkt* %117)
  %119 = load i32, i32* %22, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %35
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @q6afe_get_port_id(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @APR_HDR_FIELD(i32, i32, i32) #1

declare dso_local i32 @APR_HDR_LEN(i32) #1

declare dso_local i32 @q6dsp_map_channels(i32*, i32) #1

declare dso_local i32 @q6adm_apr_send_copp_pkt(%struct.q6adm*, %struct.q6copp*, %struct.apr_pkt*, i32) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
