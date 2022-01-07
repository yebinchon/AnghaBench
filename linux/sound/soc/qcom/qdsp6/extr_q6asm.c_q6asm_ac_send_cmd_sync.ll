; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_ac_send_cmd_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_ac_send_cmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.apr_pkt = type { %struct.apr_hdr }
%struct.apr_hdr = type { i64 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CMD timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DSP returned error[%x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_client*, %struct.apr_pkt*)* @q6asm_ac_send_cmd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %0, %struct.apr_pkt* %1) #0 {
  %3 = alloca %struct.audio_client*, align 8
  %4 = alloca %struct.apr_pkt*, align 8
  %5 = alloca %struct.apr_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.audio_client* %0, %struct.audio_client** %3, align 8
  store %struct.apr_pkt* %1, %struct.apr_pkt** %4, align 8
  %7 = load %struct.apr_pkt*, %struct.apr_pkt** %4, align 8
  %8 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %7, i32 0, i32 0
  store %struct.apr_hdr* %8, %struct.apr_hdr** %5, align 8
  %9 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %10 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %13 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %16 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %19 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.apr_pkt*, %struct.apr_pkt** %4, align 8
  %22 = call i32 @apr_send_pkt(i32 %20, %struct.apr_pkt* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %28 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %31 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.apr_hdr*, %struct.apr_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 5, %39
  %41 = call i32 @wait_event_timeout(i32 %29, i32 %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %26
  %45 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %46 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %70

51:                                               ; preds = %26
  %52 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %53 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %59 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %62 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %44, %25
  %71 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %72 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
