; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_spos_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_spos_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_spos_instance = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.dsp_spos_instance*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.dsp_spos_instance*, i64, i64 }
%struct.snd_cs46xx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DSP_MAX_SYMBOLS = common dso_local global i32 0, align 4
@DSP_CODE_BYTE_SIZE = common dso_local global i32 0, align 4
@DSP_MAX_MODULES = common dso_local global i32 0, align 4
@SNDRV_PCM_DEFAULT_CON_SPDIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_spos_instance* @cs46xx_dsp_spos_create(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.dsp_spos_instance*, align 8
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dsp_spos_instance* @kzalloc(i32 112, i32 %5)
  store %struct.dsp_spos_instance* %6, %struct.dsp_spos_instance** %4, align 8
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %8 = icmp eq %struct.dsp_spos_instance* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.dsp_spos_instance* null, %struct.dsp_spos_instance** %2, align 8
  br label %118

10:                                               ; preds = %1
  %11 = load i32, i32* @DSP_MAX_SYMBOLS, align 4
  %12 = call i32 @array_size(i32 %11, i32 4)
  %13 = call i32 @vmalloc(i32 %12)
  %14 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %15 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @DSP_CODE_BYTE_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dsp_spos_instance* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %21 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.dsp_spos_instance* %19, %struct.dsp_spos_instance** %22, align 8
  %23 = load i32, i32* @DSP_MAX_MODULES, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.dsp_spos_instance* @kmalloc_array(i32 %23, i32 4, i32 %24)
  %26 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %27 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %26, i32 0, i32 9
  store %struct.dsp_spos_instance* %25, %struct.dsp_spos_instance** %27, align 8
  %28 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %29 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %10
  %34 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %35 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %36, align 8
  %38 = icmp ne %struct.dsp_spos_instance* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %41 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %40, i32 0, i32 9
  %42 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %41, align 8
  %43 = icmp ne %struct.dsp_spos_instance* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %33, %10
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = call i32 @cs46xx_dsp_spos_destroy(%struct.snd_cs46xx* %45)
  br label %101

47:                                               ; preds = %39
  %48 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %49 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %52 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %55 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %58 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %61 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %60, i32 0, i32 12
  store i64 0, i64* %61, align 8
  %62 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %63 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %62, i32 0, i32 11
  store i64 0, i64* %63, align 8
  %64 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %65 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %67 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %66, i32 0, i32 0
  store i32 48000, i32* %67, align 8
  %68 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %69 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %68, i32 0, i32 1
  store i32 32768, i32* %69, align 4
  %70 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %71 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %70, i32 0, i32 2
  store i32 32768, i32* %71, align 8
  %72 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %73 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %72, i32 0, i32 3
  store i32 32768, i32* %73, align 4
  %74 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %75 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %74, i32 0, i32 4
  store i32 32768, i32* %75, align 8
  %76 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %77 = and i32 %76, 255
  %78 = call i64 @_wrap_all_bits(i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 24
  %81 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = call i64 @_wrap_all_bits(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 16
  %87 = or i32 %80, %86
  %88 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %89 = ashr i32 %88, 24
  %90 = and i32 %89, 255
  %91 = call i64 @_wrap_all_bits(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = or i32 %87, %92
  %94 = or i32 %93, 8192
  %95 = or i32 %94, 4096
  %96 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %97 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %99 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %98, i32 0, i32 5
  store i32 %95, i32* %99, align 4
  %100 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  store %struct.dsp_spos_instance* %100, %struct.dsp_spos_instance** %2, align 8
  br label %118

101:                                              ; preds = %44
  %102 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %103 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %102, i32 0, i32 9
  %104 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %103, align 8
  %105 = call i32 @kfree(%struct.dsp_spos_instance* %104)
  %106 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %107 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %108, align 8
  %110 = call i32 @kfree(%struct.dsp_spos_instance* %109)
  %111 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %112 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @vfree(i32 %114)
  %116 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %117 = call i32 @kfree(%struct.dsp_spos_instance* %116)
  store %struct.dsp_spos_instance* null, %struct.dsp_spos_instance** %2, align 8
  br label %118

118:                                              ; preds = %101, %47, %9
  %119 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %2, align 8
  ret %struct.dsp_spos_instance* %119
}

declare dso_local %struct.dsp_spos_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local %struct.dsp_spos_instance* @kmalloc(i32, i32) #1

declare dso_local %struct.dsp_spos_instance* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @cs46xx_dsp_spos_destroy(%struct.snd_cs46xx*) #1

declare dso_local i64 @_wrap_all_bits(i32) #1

declare dso_local i32 @kfree(%struct.dsp_spos_instance*) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
