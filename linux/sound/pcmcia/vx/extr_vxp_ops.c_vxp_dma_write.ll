; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }

@VX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vxp_dma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_dma_write(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %14 = load i32, i32* @VX_DMA, align 4
  %15 = call i64 @vxp_reg_addr(%struct.vx_core* %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %17 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = inttoptr i64 %24 to i16*
  store i16* %25, i16** %11, align 8
  %26 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %27 = call i32 @vx_setup_pseudo_dma(%struct.vx_core* %26, i32 1)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %32 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %4
  %36 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %37 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %56, %35
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i16*, i16** %11, align 8
  %51 = load i16, i16* %50, align 2
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @outw(i16 zeroext %51, i64 %52)
  %54 = load i16*, i16** %11, align 8
  %55 = getelementptr inbounds i16, i16* %54, i32 1
  store i16* %55, i16** %11, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i16*
  store i16* %63, i16** %11, align 8
  %64 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %65 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %69 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %84, %66
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i16*, i16** %11, align 8
  %79 = load i16, i16* %78, align 2
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @outw(i16 zeroext %79, i64 %80)
  %82 = load i16*, i16** %11, align 8
  %83 = getelementptr inbounds i16, i16* %82, i32 1
  store i16* %83, i16** %11, align 8
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  br label %74

87:                                               ; preds = %74
  %88 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %89 = call i32 @vx_release_pseudo_dma(%struct.vx_core* %88)
  ret void
}

declare dso_local i64 @vxp_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @vx_release_pseudo_dma(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
