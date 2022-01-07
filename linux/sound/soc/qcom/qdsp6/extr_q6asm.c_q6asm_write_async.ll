; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32, %struct.audio_port_data*, i32 }
%struct.audio_port_data = type { i64, i64, i32, %struct.audio_buffer* }
%struct.audio_buffer = type { i32 }
%struct.asm_data_cmd_write_v2 = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ASM_DATA_CMD_WRITE_V2 = common dso_local global i32 0, align 4
@NO_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6asm_write_async(%struct.audio_client* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.asm_data_cmd_write_v2*, align 8
  %13 = alloca %struct.audio_port_data*, align 8
  %14 = alloca %struct.audio_buffer*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.apr_pkt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.audio_client* %0, %struct.audio_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* @APR_HDR_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 40
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %19, align 8
  %27 = load i8*, i8** %19, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %155

32:                                               ; preds = %5
  %33 = load i8*, i8** %19, align 8
  %34 = bitcast i8* %33 to %struct.apr_pkt*
  store %struct.apr_pkt* %34, %struct.apr_pkt** %16, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = load i32, i32* @APR_HDR_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to %struct.asm_data_cmd_write_v2*
  store %struct.asm_data_cmd_write_v2* %39, %struct.asm_data_cmd_write_v2** %12, align 8
  %40 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %41 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %40, i32 0, i32 1
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %45 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %44, i32 0, i32 2
  %46 = load %struct.audio_port_data*, %struct.audio_port_data** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %48 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %46, i64 %47
  store %struct.audio_port_data* %48, %struct.audio_port_data** %13, align 8
  %49 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %50 = load %struct.apr_pkt*, %struct.apr_pkt** %16, align 8
  %51 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %50, i32 0, i32 0
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %54 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @q6asm_add_hdr(%struct.audio_client* %49, %struct.TYPE_2__* %51, i32 %52, i32 0, i32 %55)
  %57 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %58 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %57, i32 0, i32 3
  %59 = load %struct.audio_buffer*, %struct.audio_buffer** %58, align 8
  %60 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %61 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %59, i64 %62
  store %struct.audio_buffer* %63, %struct.audio_buffer** %14, align 8
  %64 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %65 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.apr_pkt*, %struct.apr_pkt** %16, align 8
  %68 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load i32, i32* @ASM_DATA_CMD_WRITE_V2, align 4
  %71 = load %struct.apr_pkt*, %struct.apr_pkt** %16, align 8
  %72 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.audio_buffer*, %struct.audio_buffer** %14, align 8
  %75 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @lower_32_bits(i32 %76)
  %78 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %79 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.audio_buffer*, %struct.audio_buffer** %14, align 8
  %81 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @upper_32_bits(i32 %82)
  %84 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %85 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %88 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %90 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %93 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %96 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %99 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %101 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %100, i32 0, i32 2
  %102 = load %struct.audio_port_data*, %struct.audio_port_data** %101, align 8
  %103 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %104 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %102, i64 %103
  %105 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %108 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @NO_TIMESTAMP, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %32
  %113 = load i32, i32* %11, align 4
  %114 = and i32 %113, -2147483393
  %115 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %116 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  br label %122

117:                                              ; preds = %32
  %118 = load i32, i32* %11, align 4
  %119 = or i32 -2147483648, %118
  %120 = load %struct.asm_data_cmd_write_v2*, %struct.asm_data_cmd_write_v2** %12, align 8
  %121 = getelementptr inbounds %struct.asm_data_cmd_write_v2, %struct.asm_data_cmd_write_v2* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %124 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %128 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %131 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp uge i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load %struct.audio_port_data*, %struct.audio_port_data** %13, align 8
  %136 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %134, %122
  %138 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %139 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %138, i32 0, i32 1
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %143 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.apr_pkt*, %struct.apr_pkt** %16, align 8
  %146 = call i32 @apr_send_pkt(i32 %144, %struct.apr_pkt* %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %150, %137
  %152 = load %struct.apr_pkt*, %struct.apr_pkt** %16, align 8
  %153 = call i32 @kfree(%struct.apr_pkt* %152)
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %151, %29
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
