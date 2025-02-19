; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.snd_ac97 = type { i32 }

@fsl_ac97_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"ac97 read clk_prepare_enable failed: %d\0A\00", align 1
@REG_SSI_SACADD = common dso_local global i32 0, align 4
@REG_SSI_SACNT = common dso_local global i32 0, align 4
@SSI_SACNT_RDWR_MASK = common dso_local global i32 0, align 4
@SSI_SACNT_RD = common dso_local global i32 0, align 4
@REG_SSI_SACDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @fsl_ssi_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fsl_ssi_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  store i16 0, i16* %6, align 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %51

25:                                               ; preds = %2
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 127
  %29 = shl i32 %28, 12
  store i32 %29, i32* %8, align 4
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load i32, i32* @REG_SSI_SACADD, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @regmap_write(%struct.regmap* %30, i32 %31, i32 %32)
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load i32, i32* @REG_SSI_SACNT, align 4
  %36 = load i32, i32* @SSI_SACNT_RDWR_MASK, align 4
  %37 = load i32, i32* @SSI_SACNT_RD, align 4
  %38 = call i32 @regmap_update_bits(%struct.regmap* %34, i32 %35, i32 %36, i32 %37)
  %39 = call i32 @udelay(i32 100)
  %40 = load %struct.regmap*, %struct.regmap** %5, align 8
  %41 = load i32, i32* @REG_SSI_SACDAT, align 4
  %42 = call i32 @regmap_read(%struct.regmap* %40, i32 %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 65535
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %6, align 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  br label %51

51:                                               ; preds = %25, %22
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_ac97_data, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i16, i16* %6, align 2
  ret i16 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
