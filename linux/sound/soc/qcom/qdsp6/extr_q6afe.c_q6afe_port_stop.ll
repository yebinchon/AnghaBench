; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_port_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_port_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { i32, i32, %struct.q6afe* }
%struct.q6afe = type { i32 }
%struct.afe_port_cmd_device_stop = type { i32, i64 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32 }

@AFE_PORT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"AFE port index[%d] invalid!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_MSG_TYPE_SEQ_CMD = common dso_local global i32 0, align 4
@APR_PKT_VER = common dso_local global i32 0, align 4
@AFE_PORT_CMD_DEVICE_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"AFE close failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6afe_port_stop(%struct.q6afe_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6afe_port*, align 8
  %4 = alloca %struct.afe_port_cmd_device_stop*, align 8
  %5 = alloca %struct.q6afe*, align 8
  %6 = alloca %struct.apr_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.q6afe_port* %0, %struct.q6afe_port** %3, align 8
  %12 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %13 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %12, i32 0, i32 2
  %14 = load %struct.q6afe*, %struct.q6afe** %13, align 8
  store %struct.q6afe* %14, %struct.q6afe** %5, align 8
  %15 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %16 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %19 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %22 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AFE_PORT_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %1
  %31 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %32 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %26
  %39 = load i32, i32* @APR_HDR_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 16
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %106

51:                                               ; preds = %38
  %52 = load i8*, i8** %11, align 8
  %53 = bitcast i8* %52 to %struct.apr_pkt*
  store %struct.apr_pkt* %53, %struct.apr_pkt** %6, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @APR_HDR_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to %struct.afe_port_cmd_device_stop*
  store %struct.afe_port_cmd_device_stop* %58, %struct.afe_port_cmd_device_stop** %4, align 8
  %59 = load i32, i32* @APR_MSG_TYPE_SEQ_CMD, align 4
  %60 = load i32, i32* @APR_HDR_SIZE, align 4
  %61 = call i32 @APR_HDR_LEN(i32 %60)
  %62 = load i32, i32* @APR_PKT_VER, align 4
  %63 = call i32 @APR_HDR_FIELD(i32 %59, i32 %61, i32 %62)
  %64 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %65 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %69 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %72 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %75 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %79 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @AFE_PORT_CMD_DEVICE_STOP, align 4
  %82 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %83 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.afe_port_cmd_device_stop*, %struct.afe_port_cmd_device_stop** %4, align 8
  %87 = getelementptr inbounds %struct.afe_port_cmd_device_stop, %struct.afe_port_cmd_device_stop* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.afe_port_cmd_device_stop*, %struct.afe_port_cmd_device_stop** %4, align 8
  %89 = getelementptr inbounds %struct.afe_port_cmd_device_stop, %struct.afe_port_cmd_device_stop* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %91 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %92 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %93 = call i32 @afe_apr_send_pkt(%struct.q6afe* %90, %struct.apr_pkt* %91, %struct.q6afe_port* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %51
  %97 = load %struct.q6afe*, %struct.q6afe** %5, align 8
  %98 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %51
  %103 = load %struct.apr_pkt*, %struct.apr_pkt** %6, align 8
  %104 = call i32 @kfree(%struct.apr_pkt* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %48, %30
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

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
