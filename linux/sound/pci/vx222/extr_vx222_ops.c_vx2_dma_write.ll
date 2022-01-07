; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_dma_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_dma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }

@VX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vx2_dma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_dma_write(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %14 = load i32, i32* @VX_DMA, align 4
  %15 = call i64 @vx2_reg_addr(%struct.vx_core* %13, i32 %14)
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
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %26, 4
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %96

31:                                               ; preds = %4
  %32 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %33 = call i32 @vx2_setup_pseudo_dma(%struct.vx_core* %32, i32 1)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %38 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %31
  %42 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %43 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %62, %41
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @outl(i32 %57, i64 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %11, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %11, align 8
  %70 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %71 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %31
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %75 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 2
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %90, %72
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @outl(i32 %85, i64 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %80

93:                                               ; preds = %80
  %94 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %95 = call i32 @vx2_release_pseudo_dma(%struct.vx_core* %94)
  br label %96

96:                                               ; preds = %93, %30
  ret void
}

declare dso_local i64 @vx2_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx2_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @vx2_release_pseudo_dma(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
