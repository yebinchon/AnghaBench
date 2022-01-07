; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.aaci* }
%struct.aaci = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@AACI_SL2TX = common dso_local global i64 0, align 8
@AACI_SL1TX = common dso_local global i64 0, align 8
@FRAME_PERIOD_US = common dso_local global i32 0, align 4
@AACI_SLFR = common dso_local global i64 0, align 8
@SLFR_1TXB = common dso_local global i32 0, align 4
@SLFR_2TXB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"timeout waiting for write to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @aaci_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.aaci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = load %struct.aaci*, %struct.aaci** %11, align 8
  store %struct.aaci* %12, %struct.aaci** %7, align 8
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %87

18:                                               ; preds = %3
  %19 = load %struct.aaci*, %struct.aaci** %7, align 8
  %20 = getelementptr inbounds %struct.aaci, %struct.aaci* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.aaci*, %struct.aaci** %7, align 8
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %24 = call i32 @aaci_ac97_select_codec(%struct.aaci* %22, %struct.snd_ac97* %23)
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 4
  %28 = trunc i32 %27 to i16
  %29 = load %struct.aaci*, %struct.aaci** %7, align 8
  %30 = getelementptr inbounds %struct.aaci, %struct.aaci* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AACI_SL2TX, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i16 zeroext %28, i64 %33)
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = shl i32 %36, 12
  %38 = trunc i32 %37 to i16
  %39 = load %struct.aaci*, %struct.aaci** %7, align 8
  %40 = getelementptr inbounds %struct.aaci, %struct.aaci* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AACI_SL1TX, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i16 zeroext %38, i64 %43)
  %45 = load i32, i32* @FRAME_PERIOD_US, align 4
  %46 = call i32 @udelay(i32 %45)
  %47 = load i32, i32* @FRAME_PERIOD_US, align 4
  %48 = mul nsw i32 %47, 8
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %68, %18
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.aaci*, %struct.aaci** %7, align 8
  %52 = getelementptr inbounds %struct.aaci, %struct.aaci* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AACI_SLFR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SLFR_1TXB, align 4
  %60 = load i32, i32* @SLFR_2TXB, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %64, %57
  %69 = phi i1 [ false, %57 ], [ %67, %64 ]
  br i1 %69, label %49, label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SLFR_1TXB, align 4
  %73 = load i32, i32* @SLFR_2TXB, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.aaci*, %struct.aaci** %7, align 8
  %79 = getelementptr inbounds %struct.aaci, %struct.aaci* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.aaci*, %struct.aaci** %7, align 8
  %85 = getelementptr inbounds %struct.aaci, %struct.aaci* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @aaci_ac97_select_codec(%struct.aaci*, %struct.snd_ac97*) #1

declare dso_local i32 @writel(i16 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
