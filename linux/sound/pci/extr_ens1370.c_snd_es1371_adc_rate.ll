; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_es1371_adc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_es1371_adc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { i32 }

@ES_SMPREG_ADC = common dso_local global i64 0, align 8
@ES_SMPREG_TRUNC_N = common dso_local global i64 0, align 8
@ES_SMPREG_INT_REGS = common dso_local global i64 0, align 8
@ES_SMPREG_VFREQ_FRAC = common dso_local global i64 0, align 8
@ES_SMPREG_VOL_ADC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ensoniq*, i32)* @snd_es1371_adc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1371_adc_rate(%struct.ensoniq* %0, i32 %1) #0 {
  %3 = alloca %struct.ensoniq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ensoniq* %0, %struct.ensoniq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %9 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = udiv i32 %11, 3000
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %14, 43520
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %5, align 4
  %22 = mul i32 21, %21
  %23 = sub i32 %22, 1
  %24 = or i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = udiv i64 1572864000, %26
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp uge i32 %32, 24000
  br i1 %33, label %34, label %51

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp ugt i32 %35, 239
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 239, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %40 = load i64, i64* @ES_SMPREG_ADC, align 8
  %41 = load i64, i64* @ES_SMPREG_TRUNC_N, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 239, %43
  %45 = lshr i32 %44, 1
  %46 = shl i32 %45, 9
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 4
  %49 = or i32 %46, %48
  %50 = call i32 @snd_es1371_src_write(%struct.ensoniq* %39, i64 %42, i32 %49)
  br label %69

51:                                               ; preds = %20
  %52 = load i32, i32* %6, align 4
  %53 = icmp ugt i32 %52, 119
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 119, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %57 = load i64, i64* @ES_SMPREG_ADC, align 8
  %58 = load i64, i64* @ES_SMPREG_TRUNC_N, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = sub i32 119, %60
  %62 = lshr i32 %61, 1
  %63 = shl i32 %62, 9
  %64 = or i32 32768, %63
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %65, 4
  %67 = or i32 %64, %66
  %68 = call i32 @snd_es1371_src_write(%struct.ensoniq* %56, i64 %59, i32 %67)
  br label %69

69:                                               ; preds = %55, %38
  %70 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %71 = load i64, i64* @ES_SMPREG_ADC, align 8
  %72 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %75 = load i64, i64* @ES_SMPREG_ADC, align 8
  %76 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @snd_es1371_src_read(%struct.ensoniq* %74, i64 %77)
  %79 = and i32 %78, 255
  %80 = load i32, i32* %7, align 4
  %81 = lshr i32 %80, 5
  %82 = and i32 %81, 64512
  %83 = or i32 %79, %82
  %84 = call i32 @snd_es1371_src_write(%struct.ensoniq* %70, i64 %73, i32 %83)
  %85 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %86 = load i64, i64* @ES_SMPREG_ADC, align 8
  %87 = load i64, i64* @ES_SMPREG_VFREQ_FRAC, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 32767
  %91 = call i32 @snd_es1371_src_write(%struct.ensoniq* %85, i64 %88, i32 %90)
  %92 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %93 = load i64, i64* @ES_SMPREG_VOL_ADC, align 8
  %94 = load i32, i32* %5, align 4
  %95 = shl i32 %94, 8
  %96 = call i32 @snd_es1371_src_write(%struct.ensoniq* %92, i64 %93, i32 %95)
  %97 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %98 = load i64, i64* @ES_SMPREG_VOL_ADC, align 8
  %99 = add nsw i64 %98, 1
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 %100, 8
  %102 = call i32 @snd_es1371_src_write(%struct.ensoniq* %97, i64 %99, i32 %101)
  %103 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %104 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_es1371_src_write(%struct.ensoniq*, i64, i32) #1

declare dso_local i32 @snd_es1371_src_read(%struct.ensoniq*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
