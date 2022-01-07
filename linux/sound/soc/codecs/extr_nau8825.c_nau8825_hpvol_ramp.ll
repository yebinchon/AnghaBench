; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_hpvol_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_hpvol_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32 }

@NAU8825_HP_VOL_MIN = common dso_local global i32 0, align 4
@NAU8825_REG_HSVOL_CTRL = common dso_local global i32 0, align 4
@NAU8825_HPL_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_HPR_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_HPL_VOL_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*, i32, i32, i32)* @nau8825_hpvol_ramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_hpvol_ramp(%struct.nau8825* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nau8825*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %4
  br label %95

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %13, align 4
  br label %31

28:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @NAU8825_HP_VOL_MIN, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @NAU8825_HP_VOL_MIN, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %70, %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %52, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %57 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NAU8825_REG_HSVOL_CTRL, align 4
  %60 = load i32, i32* @NAU8825_HPL_VOL_MASK, align 4
  %61 = load i32, i32* @NAU8825_HPR_VOL_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @NAU8825_HPL_VOL_SFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %62, i32 %67)
  %69 = call i32 @usleep_range(i32 10000, i32 10500)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %9, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %83 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NAU8825_REG_HSVOL_CTRL, align 4
  %86 = load i32, i32* @NAU8825_HPL_VOL_MASK, align 4
  %87 = load i32, i32* @NAU8825_HPR_VOL_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @NAU8825_HPL_VOL_SFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %81, %20
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
