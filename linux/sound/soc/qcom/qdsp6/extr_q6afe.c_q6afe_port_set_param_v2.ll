; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_port_set_param_v2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_port_set_param_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { i32, i32, %struct.q6afe* }
%struct.q6afe = type { i32 }
%struct.afe_port_cmd_set_param_v2 = type { i32, i32, i32, i32, i32 }
%struct.afe_port_param_data_v2 = type { i32, i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@AFE_PORT_CMD_SET_PARAM_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"AFE enable for port 0x%x failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6afe_port*, i8*, i32, i32, i32)* @q6afe_port_set_param_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6afe_port_set_param_v2(%struct.q6afe_port* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.q6afe_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.afe_port_cmd_set_param_v2*, align 8
  %13 = alloca %struct.afe_port_param_data_v2*, align 8
  %14 = alloca %struct.q6afe*, align 8
  %15 = alloca %struct.apr_pkt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.q6afe_port* %0, %struct.q6afe_port** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.q6afe_port*, %struct.q6afe_port** %7, align 8
  %22 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %21, i32 0, i32 2
  %23 = load %struct.q6afe*, %struct.q6afe** %22, align 8
  store %struct.q6afe* %23, %struct.q6afe** %14, align 8
  %24 = load %struct.q6afe_port*, %struct.q6afe_port** %7, align 8
  %25 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* @APR_HDR_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 20
  %30 = add i64 %29, 12
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i32 %35, i32 %36)
  store i8* %37, i8** %19, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %136

43:                                               ; preds = %5
  %44 = load i8*, i8** %19, align 8
  %45 = bitcast i8* %44 to %struct.apr_pkt*
  store %struct.apr_pkt* %45, %struct.apr_pkt** %15, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = load i32, i32* @APR_HDR_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to %struct.afe_port_cmd_set_param_v2*
  store %struct.afe_port_cmd_set_param_v2* %50, %struct.afe_port_cmd_set_param_v2** %12, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load i32, i32* @APR_HDR_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = getelementptr i8, i8* %54, i64 20
  %56 = bitcast i8* %55 to %struct.afe_port_param_data_v2*
  store %struct.afe_port_param_data_v2* %56, %struct.afe_port_param_data_v2** %13, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i32, i32* @APR_HDR_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = getelementptr i8, i8* %60, i64 20
  %62 = getelementptr i8, i8* %61, i64 12
  store i8* %62, i8** %20, align 8
  %63 = load i8*, i8** %20, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %68 = load i32, i32* @APR_HDR_SIZE, align 4
  %69 = call i32 @APR_HDR_LEN(i32 %68)
  %70 = load i32, i32* @APR_PKT_VER, align 4
  %71 = call i32 @APR_HDR_FIELD(i32 %67, i32 %69, i32 %70)
  %72 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %73 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %77 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %80 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %83 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.q6afe_port*, %struct.q6afe_port** %7, align 8
  %86 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %89 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @AFE_PORT_CMD_SET_PARAM_V2, align 4
  %92 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %93 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.afe_port_cmd_set_param_v2*, %struct.afe_port_cmd_set_param_v2** %12, align 8
  %97 = getelementptr inbounds %struct.afe_port_cmd_set_param_v2, %struct.afe_port_cmd_set_param_v2* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 12, %99
  %101 = trunc i64 %100 to i32
  %102 = load %struct.afe_port_cmd_set_param_v2*, %struct.afe_port_cmd_set_param_v2** %12, align 8
  %103 = getelementptr inbounds %struct.afe_port_cmd_set_param_v2, %struct.afe_port_cmd_set_param_v2* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.afe_port_cmd_set_param_v2*, %struct.afe_port_cmd_set_param_v2** %12, align 8
  %105 = getelementptr inbounds %struct.afe_port_cmd_set_param_v2, %struct.afe_port_cmd_set_param_v2* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.afe_port_cmd_set_param_v2*, %struct.afe_port_cmd_set_param_v2** %12, align 8
  %107 = getelementptr inbounds %struct.afe_port_cmd_set_param_v2, %struct.afe_port_cmd_set_param_v2* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.afe_port_cmd_set_param_v2*, %struct.afe_port_cmd_set_param_v2** %12, align 8
  %109 = getelementptr inbounds %struct.afe_port_cmd_set_param_v2, %struct.afe_port_cmd_set_param_v2* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.afe_port_param_data_v2*, %struct.afe_port_param_data_v2** %13, align 8
  %112 = getelementptr inbounds %struct.afe_port_param_data_v2, %struct.afe_port_param_data_v2* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.afe_port_param_data_v2*, %struct.afe_port_param_data_v2** %13, align 8
  %115 = getelementptr inbounds %struct.afe_port_param_data_v2, %struct.afe_port_param_data_v2* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.afe_port_param_data_v2*, %struct.afe_port_param_data_v2** %13, align 8
  %118 = getelementptr inbounds %struct.afe_port_param_data_v2, %struct.afe_port_param_data_v2* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.q6afe*, %struct.q6afe** %14, align 8
  %120 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %121 = load %struct.q6afe_port*, %struct.q6afe_port** %7, align 8
  %122 = call i32 @afe_apr_send_pkt(%struct.q6afe* %119, %struct.apr_pkt* %120, %struct.q6afe_port* %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %43
  %126 = load %struct.q6afe*, %struct.q6afe** %14, align 8
  %127 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %43
  %133 = load %struct.apr_pkt*, %struct.apr_pkt** %15, align 8
  %134 = call i32 @kfree(%struct.apr_pkt* %133)
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %132, %40
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @APR_HDR_FIELD(i32, i32, i32) #1

declare dso_local i32 @APR_HDR_LEN(i32) #1

declare dso_local i32 @afe_apr_send_pkt(%struct.q6afe*, %struct.apr_pkt*, %struct.q6afe_port*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
