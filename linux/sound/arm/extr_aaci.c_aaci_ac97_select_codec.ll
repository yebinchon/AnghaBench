; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_ac97_select_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_ac97_select_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci = type { i32, i64 }
%struct.snd_ac97 = type { i32 }

@AACI_SLFR = common dso_local global i64 0, align 8
@SLFR_2RXV = common dso_local global i32 0, align 4
@AACI_SL2RX = common dso_local global i64 0, align 8
@SLFR_1RXV = common dso_local global i32 0, align 4
@AACI_SL1RX = common dso_local global i64 0, align 8
@AACI_MAINCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci*, %struct.snd_ac97*)* @aaci_ac97_select_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_ac97_select_codec(%struct.aaci* %0, %struct.snd_ac97* %1) #0 {
  %3 = alloca %struct.aaci*, align 8
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aaci* %0, %struct.aaci** %3, align 8
  store %struct.snd_ac97* %1, %struct.snd_ac97** %4, align 8
  %7 = load %struct.aaci*, %struct.aaci** %3, align 8
  %8 = getelementptr inbounds %struct.aaci, %struct.aaci* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MAINCR_SCRA(i32 %12)
  %14 = or i32 %9, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.aaci*, %struct.aaci** %3, align 8
  %16 = getelementptr inbounds %struct.aaci, %struct.aaci* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AACI_SLFR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SLFR_2RXV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.aaci*, %struct.aaci** %3, align 8
  %27 = getelementptr inbounds %struct.aaci, %struct.aaci* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AACI_SL2RX, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SLFR_1RXV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.aaci*, %struct.aaci** %3, align 8
  %39 = getelementptr inbounds %struct.aaci, %struct.aaci* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AACI_SL1RX, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.aaci*, %struct.aaci** %3, align 8
  %47 = getelementptr inbounds %struct.aaci, %struct.aaci* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AACI_MAINCR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = icmp ne i32 %45, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.aaci*, %struct.aaci** %3, align 8
  %56 = getelementptr inbounds %struct.aaci, %struct.aaci* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AACI_MAINCR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.aaci*, %struct.aaci** %3, align 8
  %62 = getelementptr inbounds %struct.aaci, %struct.aaci* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AACI_MAINCR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = call i32 @udelay(i32 1)
  br label %68

68:                                               ; preds = %53, %44
  ret void
}

declare dso_local i32 @MAINCR_SCRA(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
