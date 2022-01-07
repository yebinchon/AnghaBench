; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@ASM_SESSION_CMD_PAUSE = common dso_local global i32 0, align 4
@ASM_SESSION_CMD_SUSPEND = common dso_local global i32 0, align 4
@ASM_STREAM_CMD_FLUSH = common dso_local global i32 0, align 4
@ASM_STREAM_CMD_FLUSH_READBUFS = common dso_local global i32 0, align 4
@ASM_DATA_CMD_EOS = common dso_local global i32 0, align 4
@ASM_STREAM_CMD_CLOSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_client*, i32, i32)* @__q6asm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__q6asm_cmd(%struct.audio_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.apr_pkt, align 4
  %10 = alloca i32, align 4
  store %struct.audio_client* %0, %struct.audio_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %12 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %15 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %16 = load i32, i32* @APR_HDR_SIZE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @q6asm_add_hdr(%struct.audio_client* %14, %struct.TYPE_2__* %15, i32 %16, i32 1, i32 %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %44 [
    i32 129, label %20
    i32 128, label %24
    i32 131, label %28
    i32 130, label %32
    i32 132, label %36
    i32 133, label %40
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @ASM_SESSION_CMD_PAUSE, align 4
  %22 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load i32, i32* @ASM_SESSION_CMD_SUSPEND, align 4
  %26 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %47

28:                                               ; preds = %3
  %29 = load i32, i32* @ASM_STREAM_CMD_FLUSH, align 4
  %30 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %47

32:                                               ; preds = %3
  %33 = load i32, i32* @ASM_STREAM_CMD_FLUSH_READBUFS, align 4
  %34 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load i32, i32* @ASM_DATA_CMD_EOS, align 4
  %38 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load i32, i32* @ASM_STREAM_CMD_CLOSE, align 4
  %42 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %9, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %70

47:                                               ; preds = %40, %36, %32, %28, %24, %20
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %52 = call i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %51, %struct.apr_pkt* %9)
  store i32 %52, i32* %10, align 4
  br label %58

53:                                               ; preds = %47
  %54 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %55 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @apr_send_pkt(i32 %56, %struct.apr_pkt* %9)
  store i32 %57, i32* %4, align 4
  br label %70

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %68 = call i32 @q6asm_reset_buf_state(%struct.audio_client* %67)
  br label %69

69:                                               ; preds = %66, %63
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %61, %53, %44
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @q6asm_ac_send_cmd_sync(%struct.audio_client*, %struct.apr_pkt*) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @q6asm_reset_buf_state(%struct.audio_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
