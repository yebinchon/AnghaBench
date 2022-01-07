; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_add_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_add_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32 }
%struct.apr_hdr = type { i32, i32, i32, i32, i32 }

@APR_SEQ_CMD_HDR_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_client*, %struct.apr_hdr*, i32, i32, i32)* @q6asm_add_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q6asm_add_hdr(%struct.audio_client* %0, %struct.apr_hdr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.audio_client*, align 8
  %7 = alloca %struct.apr_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.audio_client* %0, %struct.audio_client** %6, align 8
  store %struct.apr_hdr* %1, %struct.apr_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @APR_SEQ_CMD_HDR_FIELD, align 4
  %12 = load %struct.apr_hdr*, %struct.apr_hdr** %7, align 8
  %13 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %15 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = and i32 %17, 65280
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.apr_hdr*, %struct.apr_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %24 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = and i32 %26, 65280
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.apr_hdr*, %struct.apr_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.apr_hdr*, %struct.apr_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %39 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.apr_hdr*, %struct.apr_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
