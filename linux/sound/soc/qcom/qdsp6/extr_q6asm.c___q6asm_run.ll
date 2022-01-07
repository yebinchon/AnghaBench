; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32 }
%struct.asm_session_cmd_run_v2 = type { i8*, i8*, i8* }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASM_SESSION_CMD_RUN_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_client*, i8*, i8*, i8*, i32)* @__q6asm_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__q6asm_run(%struct.audio_client* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.asm_session_cmd_run_v2*, align 8
  %13 = alloca %struct.apr_pkt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.audio_client* %0, %struct.audio_client** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @APR_HDR_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 24
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %16, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %79

29:                                               ; preds = %5
  %30 = load i8*, i8** %16, align 8
  %31 = bitcast i8* %30 to %struct.apr_pkt*
  store %struct.apr_pkt* %31, %struct.apr_pkt** %13, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* @APR_HDR_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.asm_session_cmd_run_v2*
  store %struct.asm_session_cmd_run_v2* %36, %struct.asm_session_cmd_run_v2** %12, align 8
  %37 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %38 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %39 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %38, i32 0, i32 0
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %42 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @q6asm_add_hdr(%struct.audio_client* %37, %struct.TYPE_2__* %39, i32 %40, i32 1, i32 %43)
  %45 = load i32, i32* @ASM_SESSION_CMD_RUN_V2, align 4
  %46 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %47 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.asm_session_cmd_run_v2*, %struct.asm_session_cmd_run_v2** %12, align 8
  %51 = getelementptr inbounds %struct.asm_session_cmd_run_v2, %struct.asm_session_cmd_run_v2* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.asm_session_cmd_run_v2*, %struct.asm_session_cmd_run_v2** %12, align 8
  %54 = getelementptr inbounds %struct.asm_session_cmd_run_v2, %struct.asm_session_cmd_run_v2* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.asm_session_cmd_run_v2*, %struct.asm_session_cmd_run_v2** %12, align 8
  %57 = getelementptr inbounds %struct.asm_session_cmd_run_v2, %struct.asm_session_cmd_run_v2* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %29
  %61 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %62 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %63 = call i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %61, %struct.apr_pkt* %62)
  store i32 %63, i32* %15, align 4
  br label %75

64:                                               ; preds = %29
  %65 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %66 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %69 = call i32 @apr_send_pkt(i32 %67, %struct.apr_pkt* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %64
  br label %75

75:                                               ; preds = %74, %60
  %76 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %77 = call i32 @kfree(%struct.apr_pkt* %76)
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %26
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @q6asm_ac_send_cmd_sync(%struct.audio_client*, %struct.apr_pkt*) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
