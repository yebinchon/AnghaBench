; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_is_jack_inserted.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_is_jack_inserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@NAU8825_REG_JACK_DET_CTRL = common dso_local global i32 0, align 4
@NAU8825_JACK_POLARITY = common dso_local global i32 0, align 4
@NAU8825_REG_I2C_DEVICE_ID = common dso_local global i32 0, align 4
@NAU8825_GPIO2JD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @nau8825_is_jack_inserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_is_jack_inserted(%struct.regmap* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %2, align 8
  %7 = load %struct.regmap*, %struct.regmap** %2, align 8
  %8 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %9 = call i32 @regmap_read(%struct.regmap* %7, i32 %8, i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NAU8825_JACK_POLARITY, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.regmap*, %struct.regmap** %2, align 8
  %14 = load i32, i32* @NAU8825_REG_I2C_DEVICE_ID, align 4
  %15 = call i32 @regmap_read(%struct.regmap* %13, i32 %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NAU8825_GPIO2JD1, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
