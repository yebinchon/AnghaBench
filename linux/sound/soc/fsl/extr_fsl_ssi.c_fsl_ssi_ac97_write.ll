; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.snd_ac97 = type { i32 }

@fsl_ac97_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"ac97 write clk_prepare_enable failed: %d\0A\00", align 1
@REG_SSI_SACADD = common dso_local global i32 0, align 4
@REG_SSI_SACDAT = common dso_local global i32 0, align 4
@REG_SSI_SACNT = common dso_local global i32 0, align 4
@SSI_SACNT_RDWR_MASK = common dso_local global i32 0, align 4
@SSI_SACNT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @fsl_ssi_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_ssi_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %7, align 8
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sgt i32 %15, 127
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %56

31:                                               ; preds = %18
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = shl i32 %33, 12
  store i32 %34, i32* %8, align 4
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = load i32, i32* @REG_SSI_SACADD, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @regmap_write(%struct.regmap* %35, i32 %36, i32 %37)
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 %40, 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.regmap*, %struct.regmap** %7, align 8
  %43 = load i32, i32* @REG_SSI_SACDAT, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @regmap_write(%struct.regmap* %42, i32 %43, i32 %44)
  %46 = load %struct.regmap*, %struct.regmap** %7, align 8
  %47 = load i32, i32* @REG_SSI_SACNT, align 4
  %48 = load i32, i32* @SSI_SACNT_RDWR_MASK, align 4
  %49 = load i32, i32* @SSI_SACNT_WR, align 4
  %50 = call i32 @regmap_update_bits(%struct.regmap* %46, i32 %47, i32 %48, i32 %49)
  %51 = call i32 @udelay(i32 100)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  br label %56

56:                                               ; preds = %31, %28
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
