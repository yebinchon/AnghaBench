; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_set_cs43xx_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_set_cs43xx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i32* }
%struct.snd_pcm_hw_params = type { i32 }

@CS4398_FM_SINGLE = common dso_local global i32 0, align 4
@CS4362A_FM_SINGLE = common dso_local global i32 0, align 4
@CS4398_FM_DOUBLE = common dso_local global i32 0, align 4
@CS4362A_FM_DOUBLE = common dso_local global i32 0, align 4
@CS4398_FM_QUAD = common dso_local global i32 0, align 4
@CS4362A_FM_QUAD = common dso_local global i32 0, align 4
@CS4398_DEM_NONE = common dso_local global i32 0, align 4
@CS4398_DIF_LJUST = common dso_local global i32 0, align 4
@CS4362A_FM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_pcm_hw_params*)* @set_cs43xx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cs43xx_params(%struct.oxygen* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.xonar_cs43xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %9, align 8
  store %struct.xonar_cs43xx* %10, %struct.xonar_cs43xx** %5, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %12 = call i32 @params_rate(%struct.snd_pcm_hw_params* %11)
  %13 = icmp sle i32 %12, 50000
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @CS4398_FM_SINGLE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @CS4362A_FM_SINGLE, align 4
  store i32 %16, i32* %7, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = call i32 @params_rate(%struct.snd_pcm_hw_params* %18)
  %20 = icmp sle i32 %19, 100000
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @CS4398_FM_DOUBLE, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @CS4362A_FM_DOUBLE, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @CS4398_FM_QUAD, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @CS4362A_FM_QUAD, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* @CS4398_DEM_NONE, align 4
  %30 = load i32, i32* @CS4398_DIF_LJUST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cs4398_write_cached(%struct.oxygen* %34, i32 2, i32 %35)
  %37 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %5, align 8
  %38 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CS4362A_FM_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cs4362a_write_cached(%struct.oxygen* %47, i32 6, i32 %48)
  %50 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cs4362a_write_cached(%struct.oxygen* %50, i32 12, i32 %51)
  %53 = load i32, i32* @CS4362A_FM_MASK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %5, align 8
  %57 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 9
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS4362A_FM_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @cs4362a_write_cached(%struct.oxygen* %66, i32 9, i32 %67)
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs4398_write_cached(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @cs4362a_write_cached(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
