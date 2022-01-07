; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8824 = type { i32, i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8824_REG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read irq status\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"IRQ %x\0A\00", align 1
@NAU8824_JACK_EJECTION_DETECTED = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@NAU8824_KEY_SHORT_PRESS_IRQ = common dso_local global i32 0, align 4
@NAU8824_REG_CLEAR_INT_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"button %x pressed\0A\00", align 1
@NAU8824_BUTTONS = common dso_local global i32 0, align 4
@NAU8824_KEY_RELEASE_IRQ = common dso_local global i32 0, align 4
@NAU8824_JACK_INSERTION_DETECTED = common dso_local global i32 0, align 4
@NAU8824_REG_INTERRUPT_SETTING = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_DIS = common dso_local global i32 0, align 4
@NAU8824_REG_INTERRUPT_SETTING_1 = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nau8824_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nau8824*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.nau8824*
  store %struct.nau8824* %15, %struct.nau8824** %6, align 8
  %16 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %17 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %16, i32 0, i32 3
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  %20 = load i32, i32* @NAU8824_REG_IRQ, align 4
  %21 = call i64 @regmap_read(%struct.regmap* %19, i32 %20, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %25 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %129

29:                                               ; preds = %2
  %30 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %31 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @NAU8824_JACK_EJECTION_DETECTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %41 = call i32 @nau8824_eject_jack(%struct.nau8824* %40)
  %42 = load i32, i32* @SND_JACK_HEADSET, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @NAU8824_JACK_EJECTION_DETECTED, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %47 = call i32 @nau8824_sema_release(%struct.nau8824* %46)
  %48 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %49 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %48, i32 0, i32 1
  %50 = call i32 @cancel_work_sync(i32* %49)
  br label %108

51:                                               ; preds = %29
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @NAU8824_KEY_SHORT_PRESS_IRQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.regmap*, %struct.regmap** %7, align 8
  %58 = load i32, i32* @NAU8824_REG_CLEAR_INT_REG, align 4
  %59 = call i64 @regmap_read(%struct.regmap* %57, i32 %58, i32* %12)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @nau8824_button_decode(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %66 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @NAU8824_BUTTONS, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @NAU8824_KEY_SHORT_PRESS_IRQ, align 4
  store i32 %73, i32* %9, align 4
  br label %107

74:                                               ; preds = %51
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @NAU8824_KEY_RELEASE_IRQ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @NAU8824_BUTTONS, align 4
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @NAU8824_KEY_RELEASE_IRQ, align 4
  store i32 %81, i32* %9, align 4
  br label %106

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @NAU8824_JACK_INSERTION_DETECTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = load %struct.regmap*, %struct.regmap** %7, align 8
  %89 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING, align 4
  %90 = load i32, i32* @NAU8824_IRQ_INSERT_DIS, align 4
  %91 = load i32, i32* @NAU8824_IRQ_INSERT_DIS, align 4
  %92 = call i32 @regmap_update_bits(%struct.regmap* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.regmap*, %struct.regmap** %7, align 8
  %94 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING_1, align 4
  %95 = load i32, i32* @NAU8824_IRQ_INSERT_EN, align 4
  %96 = call i32 @regmap_update_bits(%struct.regmap* %93, i32 %94, i32 %95, i32 0)
  %97 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %98 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %97, i32 0, i32 1
  %99 = call i32 @cancel_work_sync(i32* %98)
  %100 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %101 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %100, i32 0, i32 1
  %102 = call i32 @schedule_work(i32* %101)
  %103 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %104 = call i32 @nau8824_setup_auto_irq(%struct.nau8824* %103)
  br label %105

105:                                              ; preds = %87, %82
  br label %106

106:                                              ; preds = %105, %79
  br label %107

107:                                              ; preds = %106, %56
  br label %108

108:                                              ; preds = %107, %39
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.regmap*, %struct.regmap** %7, align 8
  %115 = load i32, i32* @NAU8824_REG_CLEAR_INT_REG, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @regmap_write(%struct.regmap* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.nau8824*, %struct.nau8824** %6, align 8
  %122 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @snd_soc_jack_report(i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %113
  %128 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %23
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @nau8824_eject_jack(%struct.nau8824*) #1

declare dso_local i32 @nau8824_sema_release(%struct.nau8824*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @nau8824_button_decode(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nau8824_setup_auto_irq(%struct.nau8824*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
