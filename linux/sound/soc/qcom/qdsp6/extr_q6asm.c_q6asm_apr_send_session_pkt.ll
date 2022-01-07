; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_apr_send_session_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_apr_send_session_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6asm = type { i32, i32, i32 }
%struct.audio_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.apr_pkt = type { %struct.apr_hdr }
%struct.apr_hdr = type { i64 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CMD timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DSP returned error[%x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6asm*, %struct.audio_client*, %struct.apr_pkt*, i64)* @q6asm_apr_send_session_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_apr_send_session_pkt(%struct.q6asm* %0, %struct.audio_client* %1, %struct.apr_pkt* %2, i64 %3) #0 {
  %5 = alloca %struct.q6asm*, align 8
  %6 = alloca %struct.audio_client*, align 8
  %7 = alloca %struct.apr_pkt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.apr_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.q6asm* %0, %struct.q6asm** %5, align 8
  store %struct.audio_client* %1, %struct.audio_client** %6, align 8
  store %struct.apr_pkt* %2, %struct.apr_pkt** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %11, i32 0, i32 0
  store %struct.apr_hdr* %12, %struct.apr_hdr** %9, align 8
  %13 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %14 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %17 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %20 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %23 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %26 = call i32 @apr_send_pkt(i32 %24, %struct.apr_pkt* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %103

30:                                               ; preds = %4
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %35 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %38 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.apr_hdr*, %struct.apr_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %33
  %46 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %47 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %45, %33
  %53 = phi i1 [ true, %33 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 5, %55
  %57 = call i32 @wait_event_timeout(i32 %36, i32 %54, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %74

58:                                               ; preds = %30
  %59 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %60 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %63 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.apr_hdr*, %struct.apr_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* @HZ, align 4
  %72 = mul nsw i32 5, %71
  %73 = call i32 @wait_event_timeout(i32 %61, i32 %70, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %58, %52
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %79 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %102

84:                                               ; preds = %74
  %85 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %86 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %92 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %95 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %90, %84
  br label %102

102:                                              ; preds = %101, %77
  br label %103

103:                                              ; preds = %102, %29
  %104 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %105 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %10, align 4
  ret i32 %107
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
