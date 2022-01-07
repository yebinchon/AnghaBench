; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_setup_bdle.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_setup_bdle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_dma_buffer = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*, %struct.snd_dma_buffer*, i32**, i32, i32)* @skl_cldma_setup_bdle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_setup_bdle(%struct.sst_dsp* %0, %struct.snd_dma_buffer* %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca %struct.snd_dma_buffer*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %6, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32**, i32*** %8, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %68, %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %18
  %22 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %26 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %30 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %28, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %24, %34
  %36 = call i32 @virt_to_phys(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %48 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %55 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %21
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %21
  br label %68

66:                                               ; preds = %62
  %67 = call i32 @cpu_to_le32(i32 1)
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 0, %65 ], [ %67, %66 ]
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32* %73, i32** %11, align 8
  %74 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %75 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %18

79:                                               ; preds = %18
  ret void
}

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
