; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_measure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32*, i32, i32 }

@NAU8825_REG_IMM_RMS_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HPR_R2L imm: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HPL_R2L imm: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cross talk sidetone: %x\0A\00", align 1
@NAU8825_REG_DAC_DGAIN_CTRL = common dso_local global i32 0, align 4
@NAU8825_XTALK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_xtalk_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_measure(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %4 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %5 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %95 [
    i32 128, label %7
    i32 130, label %15
    i32 131, label %40
    i32 129, label %64
  ]

7:                                                ; preds = %1
  %8 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %9 = call i32 @nau8825_xtalk_prepare(%struct.nau8825* %8)
  %10 = call i32 @msleep(i32 280)
  %11 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %12 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %11, i32 0, i32 0
  store i32 130, i32* %12, align 8
  %13 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %14 = call i32 @nau8825_xtalk_imm_start(%struct.nau8825* %13, i32 210)
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %17 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NAU8825_REG_IMM_RMS_L, align 4
  %20 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %21 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 130
  %24 = call i32 @regmap_read(i32 %18, i32 %19, i32* %23)
  %25 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %26 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %29 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 130
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %35 = call i32 @nau8825_xtalk_imm_stop(%struct.nau8825* %34)
  %36 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %37 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %36, i32 0, i32 0
  store i32 131, i32* %37, align 8
  %38 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %39 = call i32 @nau8825_xtalk_imm_start(%struct.nau8825* %38, i32 255)
  br label %96

40:                                               ; preds = %1
  %41 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %42 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NAU8825_REG_IMM_RMS_L, align 4
  %45 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %46 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 131
  %49 = call i32 @regmap_read(i32 %43, i32 %44, i32* %48)
  %50 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %51 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %54 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 131
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %60 = call i32 @nau8825_xtalk_imm_stop(%struct.nau8825* %59)
  %61 = call i32 @msleep(i32 150)
  %62 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %63 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %62, i32 0, i32 0
  store i32 129, i32* %63, align 8
  br label %96

64:                                               ; preds = %1
  %65 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %66 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 130
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %71 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 131
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nau8825_xtalk_sidetone(i32 %69, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %77 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %82 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NAU8825_REG_DAC_DGAIN_CTRL, align 4
  %85 = load i32, i32* %3, align 4
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @regmap_write(i32 %83, i32 %84, i32 %88)
  %90 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %91 = call i32 @nau8825_xtalk_clean(%struct.nau8825* %90, i32 0)
  %92 = load i32, i32* @NAU8825_XTALK_DONE, align 4
  %93 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %94 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %96

95:                                               ; preds = %1
  br label %96

96:                                               ; preds = %95, %64, %40, %15, %7
  ret void
}

declare dso_local i32 @nau8825_xtalk_prepare(%struct.nau8825*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @nau8825_xtalk_imm_start(%struct.nau8825*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @nau8825_xtalk_imm_stop(%struct.nau8825*) #1

declare dso_local i32 @nau8825_xtalk_sidetone(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @nau8825_xtalk_clean(%struct.nau8825*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
