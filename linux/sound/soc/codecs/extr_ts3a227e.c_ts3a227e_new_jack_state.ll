; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_new_jack_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_new_jack_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts3a227e = type { i32, i32, i32, i64 }

@JACK_INSERTED = common dso_local global i32 0, align 4
@EITHER_MIC_MASK = common dso_local global i32 0, align 4
@TS3A227E_REG_SETTING_2 = common dso_local global i32 0, align 4
@KP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ts3a227e*, i32)* @ts3a227e_new_jack_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts3a227e_new_jack_state(%struct.ts3a227e* %0, i32 %1) #0 {
  %3 = alloca %struct.ts3a227e*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ts3a227e* %0, %struct.ts3a227e** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @JACK_INSERTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @EITHER_MIC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ false, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ts3a227e*, %struct.ts3a227e** %3, align 8
  %28 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ts3a227e*, %struct.ts3a227e** %3, align 8
  %31 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ts3a227e*, %struct.ts3a227e** %3, align 8
  %37 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ts3a227e*, %struct.ts3a227e** %3, align 8
  %39 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.ts3a227e*, %struct.ts3a227e** %3, align 8
  %44 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TS3A227E_REG_SETTING_2, align 4
  %47 = load i32, i32* @KP_ENABLE, align 4
  %48 = load i32, i32* @KP_ENABLE, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %34
  br label %51

51:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
