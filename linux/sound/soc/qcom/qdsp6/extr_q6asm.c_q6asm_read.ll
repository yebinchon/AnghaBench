; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32, i32, %struct.audio_port_data* }
%struct.audio_port_data = type { i64, i64, i32, %struct.audio_buffer* }
%struct.audio_buffer = type { i32, i32 }
%struct.asm_data_cmd_read_v2 = type { i64, i32, i32, i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@ASM_DATA_CMD_READ_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read op[0x%x]rc[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6asm_read(%struct.audio_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_client*, align 8
  %4 = alloca %struct.asm_data_cmd_read_v2*, align 8
  %5 = alloca %struct.audio_port_data*, align 8
  %6 = alloca %struct.audio_buffer*, align 8
  %7 = alloca %struct.apr_pkt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.audio_client* %0, %struct.audio_client** %3, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @APR_HDR_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 24
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %132

24:                                               ; preds = %1
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to %struct.apr_pkt*
  store %struct.apr_pkt* %26, %struct.apr_pkt** %7, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @APR_HDR_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = bitcast i8* %30 to %struct.asm_data_cmd_read_v2*
  store %struct.asm_data_cmd_read_v2* %31, %struct.asm_data_cmd_read_v2** %4, align 8
  %32 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %33 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %32, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %37 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %36, i32 0, i32 3
  %38 = load %struct.audio_port_data*, %struct.audio_port_data** %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %40 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %38, i64 %39
  store %struct.audio_port_data* %40, %struct.audio_port_data** %5, align 8
  %41 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %42 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %43 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %42, i32 0, i32 0
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %46 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @q6asm_add_hdr(%struct.audio_client* %41, %struct.TYPE_2__* %43, i32 %44, i32 0, i32 %47)
  %49 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %50 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %49, i32 0, i32 3
  %51 = load %struct.audio_buffer*, %struct.audio_buffer** %50, align 8
  %52 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %53 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %51, i64 %54
  store %struct.audio_buffer* %55, %struct.audio_buffer** %6, align 8
  %56 = load i32, i32* @ASM_DATA_CMD_READ_V2, align 4
  %57 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %58 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.audio_buffer*, %struct.audio_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = load %struct.asm_data_cmd_read_v2*, %struct.asm_data_cmd_read_v2** %4, align 8
  %65 = getelementptr inbounds %struct.asm_data_cmd_read_v2, %struct.asm_data_cmd_read_v2* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.audio_buffer*, %struct.audio_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @upper_32_bits(i32 %68)
  %70 = load %struct.asm_data_cmd_read_v2*, %struct.asm_data_cmd_read_v2** %4, align 8
  %71 = getelementptr inbounds %struct.asm_data_cmd_read_v2, %struct.asm_data_cmd_read_v2* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %73 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.asm_data_cmd_read_v2*, %struct.asm_data_cmd_read_v2** %4, align 8
  %76 = getelementptr inbounds %struct.asm_data_cmd_read_v2, %struct.asm_data_cmd_read_v2* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.audio_buffer*, %struct.audio_buffer** %6, align 8
  %78 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.asm_data_cmd_read_v2*, %struct.asm_data_cmd_read_v2** %4, align 8
  %81 = getelementptr inbounds %struct.asm_data_cmd_read_v2, %struct.asm_data_cmd_read_v2* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %83 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.asm_data_cmd_read_v2*, %struct.asm_data_cmd_read_v2** %4, align 8
  %86 = getelementptr inbounds %struct.asm_data_cmd_read_v2, %struct.asm_data_cmd_read_v2* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %88 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %91 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %94 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %98 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %101 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp uge i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %24
  %105 = load %struct.audio_port_data*, %struct.audio_port_data** %5, align 8
  %106 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %24
  %108 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %109 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %108, i32 0, i32 1
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %113 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %116 = call i32 @apr_send_pkt(i32 %114, %struct.apr_pkt* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %128

121:                                              ; preds = %107
  %122 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %123 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %120
  %129 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %130 = call i32 @kfree(%struct.apr_pkt* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
