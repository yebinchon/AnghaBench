; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { i32, i32, i32, i32*, i32, %struct.q6afe* }
%struct.q6afe = type { i32 }
%struct.afe_port_cmd_device_start = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32 }

@AFE_MODULE_AUDIO_DEV_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"AFE enable for port 0x%x failed %d\0A\00", align 1
@AFE_PARAM_ID_PORT_SLOT_MAPPING_CONFIG = common dso_local global i32 0, align 4
@AFE_MODULE_TDM = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@AFE_PORT_CMD_DEVICE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6afe_port_start(%struct.q6afe_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6afe_port*, align 8
  %4 = alloca %struct.afe_port_cmd_device_start*, align 8
  %5 = alloca %struct.q6afe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.apr_pkt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.q6afe_port* %0, %struct.q6afe_port** %3, align 8
  %12 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %13 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %12, i32 0, i32 5
  %14 = load %struct.q6afe*, %struct.q6afe** %13, align 8
  store %struct.q6afe* %14, %struct.q6afe** %5, align 8
  %15 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %16 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %19 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %22 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %23 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %22, i32 0, i32 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AFE_MODULE_AUDIO_DEV_INTERFACE, align 4
  %26 = call i32 @q6afe_port_set_param_v2(%struct.q6afe_port* %21, i32* %23, i32 %24, i32 %25, i32 4)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %31 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %130

37:                                               ; preds = %1
  %38 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %39 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %44 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %45 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @AFE_PARAM_ID_PORT_SLOT_MAPPING_CONFIG, align 4
  %48 = load i32, i32* @AFE_MODULE_TDM, align 4
  %49 = call i32 @q6afe_port_set_param_v2(%struct.q6afe_port* %43, i32* %46, i32 %47, i32 %48, i32 4)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %54 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %130

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* @APR_HDR_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kzalloc(i32 %66, i32 %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %130

74:                                               ; preds = %61
  %75 = load i8*, i8** %11, align 8
  %76 = bitcast i8* %75 to %struct.apr_pkt*
  store %struct.apr_pkt* %76, %struct.apr_pkt** %9, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* @APR_HDR_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to %struct.afe_port_cmd_device_start*
  store %struct.afe_port_cmd_device_start* %81, %struct.afe_port_cmd_device_start** %4, align 8
  %82 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %83 = load i32, i32* @APR_HDR_SIZE, align 4
  %84 = call i32 @APR_HDR_LEN(i32 %83)
  %85 = load i32, i32* @APR_PKT_VER, align 4
  %86 = call i32 @APR_HDR_FIELD(i32 %82, i32 %84, i32 %85)
  %87 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %88 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %92 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %95 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %98 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %101 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %104 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @AFE_PORT_CMD_DEVICE_START, align 4
  %107 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %108 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.afe_port_cmd_device_start*, %struct.afe_port_cmd_device_start** %4, align 8
  %112 = getelementptr inbounds %struct.afe_port_cmd_device_start, %struct.afe_port_cmd_device_start* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %114 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %115 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %116 = call i32 @afe_apr_send_pkt(%struct.q6afe* %113, %struct.apr_pkt* %114, %struct.q6afe_port* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %74
  %120 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %121 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %119, %74
  %127 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %128 = call i32 @kfree(%struct.apr_pkt* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %71, %52, %29
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @q6afe_port_set_param_v2(%struct.q6afe_port*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @APR_HDR_FIELD(i32, i32, i32) #1

declare dso_local i32 @APR_HDR_LEN(i32) #1

declare dso_local i32 @afe_apr_send_pkt(%struct.q6afe*, %struct.apr_pkt*, %struct.q6afe_port*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
