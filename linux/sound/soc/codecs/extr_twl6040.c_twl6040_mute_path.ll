; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_mute_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_mute_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl6040 = type { i32 }
%struct.twl6040_data = type { i32, i32 }

@TWL6040_REG_HSLCTL = common dso_local global i32 0, align 4
@TWL6040_REG_HSRCTL = common dso_local global i32 0, align 4
@TWL6040_REG_EARCTL = common dso_local global i32 0, align 4
@TWL6040_HSDRVENA = common dso_local global i32 0, align 4
@TWL6040_HSDACENA = common dso_local global i32 0, align 4
@TWL6040_REG_HFLCTL = common dso_local global i32 0, align 4
@TWL6040_REG_HFRCTL = common dso_local global i32 0, align 4
@TWL6040_HFDACENA = common dso_local global i32 0, align 4
@TWL6040_HFPGAENA = common dso_local global i32 0, align 4
@TWL6040_HFDRVENA = common dso_local global i32 0, align 4
@TWL6040_HFSWENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @twl6040_mute_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl6040_mute_path(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.twl6040*, align 8
  %8 = alloca %struct.twl6040_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call %struct.twl6040* @to_twl6040(%struct.snd_soc_component* %14)
  store %struct.twl6040* %15, %struct.twl6040** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %17 = call %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.twl6040_data* %17, %struct.twl6040_data** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %110 [
    i32 129, label %19
    i32 128, label %65
  ]

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load i32, i32* @TWL6040_REG_HSLCTL, align 4
  %22 = call i32 @twl6040_read(%struct.snd_soc_component* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %24 = load i32, i32* @TWL6040_REG_HSRCTL, align 4
  %25 = call i32 @twl6040_read(%struct.snd_soc_component* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = load i32, i32* @TWL6040_REG_EARCTL, align 4
  %28 = call i32 @twl6040_read(%struct.snd_soc_component* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, -2
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @TWL6040_HSDRVENA, align 4
  %35 = load i32, i32* @TWL6040_HSDACENA, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @TWL6040_HSDRVENA, align 4
  %41 = load i32, i32* @TWL6040_HSDACENA, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %31, %19
  %47 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %48 = load i32, i32* @TWL6040_REG_EARCTL, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @twl6040_reg_write(%struct.twl6040* %47, i32 %48, i32 %49)
  %51 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %52 = load i32, i32* @TWL6040_REG_HSLCTL, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @twl6040_reg_write(%struct.twl6040* %51, i32 %52, i32 %53)
  %55 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %56 = load i32, i32* @TWL6040_REG_HSRCTL, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @twl6040_reg_write(%struct.twl6040* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.twl6040_data*, %struct.twl6040_data** %8, align 8
  %64 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %111

65:                                               ; preds = %3
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %67 = load i32, i32* @TWL6040_REG_HFLCTL, align 4
  %68 = call i32 @twl6040_read(%struct.snd_soc_component* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %70 = load i32, i32* @TWL6040_REG_HFRCTL, align 4
  %71 = call i32 @twl6040_read(%struct.snd_soc_component* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %65
  %75 = load i32, i32* @TWL6040_HFDACENA, align 4
  %76 = load i32, i32* @TWL6040_HFPGAENA, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TWL6040_HFDRVENA, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @TWL6040_HFSWENA, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* @TWL6040_HFDACENA, align 4
  %86 = load i32, i32* @TWL6040_HFPGAENA, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @TWL6040_HFDRVENA, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @TWL6040_HFSWENA, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %13, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %74, %65
  %96 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %97 = load i32, i32* @TWL6040_REG_HFLCTL, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @twl6040_reg_write(%struct.twl6040* %96, i32 %97, i32 %98)
  %100 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %101 = load i32, i32* @TWL6040_REG_HFRCTL, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @twl6040_reg_write(%struct.twl6040* %100, i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.twl6040_data*, %struct.twl6040_data** %8, align 8
  %109 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %111

110:                                              ; preds = %3
  br label %111

111:                                              ; preds = %110, %95, %46
  ret void
}

declare dso_local %struct.twl6040* @to_twl6040(%struct.snd_soc_component*) #1

declare dso_local %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl6040_read(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl6040_reg_write(%struct.twl6040*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
