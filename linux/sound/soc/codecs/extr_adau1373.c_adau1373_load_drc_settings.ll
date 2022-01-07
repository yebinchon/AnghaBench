; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_load_drc_settings.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_load_drc_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adau1373 = type { i32 }

@ADAU1373_DRC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adau1373*, i32, i32*)* @adau1373_load_drc_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adau1373_load_drc_settings(%struct.adau1373* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adau1373*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.adau1373* %0, %struct.adau1373** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ADAU1373_DRC_SIZE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.adau1373*, %struct.adau1373** %4, align 8
  %14 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @ADAU1373_DRC(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regmap_write(i32 %15, i64 %20, i32 %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  ret void
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @ADAU1373_DRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
