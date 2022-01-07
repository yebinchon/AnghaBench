; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_restore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.nau8825 = type { i32, i32 }

@nau8825_xtalk_baktab = common dso_local global %struct.TYPE_3__* null, align 8
@NAU8825_REG_HSVOL_CTRL = common dso_local global i64 0, align 8
@NAU8825_HPR_VOL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*, i32)* @nau8825_xtalk_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_restore(%struct.nau8825* %0, i32 %1) #0 {
  %3 = alloca %struct.nau8825*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %8 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %65

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %59, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nau8825_xtalk_baktab, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nau8825_xtalk_baktab, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NAU8825_REG_HSVOL_CTRL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nau8825_xtalk_baktab, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NAU8825_HPR_VOL_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @nau8825_hpvol_ramp(%struct.nau8825* %39, i32 0, i32 %40, i32 3)
  br label %59

42:                                               ; preds = %21, %18
  %43 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %44 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nau8825_xtalk_baktab, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nau8825_xtalk_baktab, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_write(i32 %45, i64 %51, i32 %57)
  br label %59

59:                                               ; preds = %42, %30
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %13

62:                                               ; preds = %13
  %63 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %64 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @nau8825_hpvol_ramp(%struct.nau8825*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
