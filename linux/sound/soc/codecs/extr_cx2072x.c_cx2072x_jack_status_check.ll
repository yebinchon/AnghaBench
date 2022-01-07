; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_jack_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_jack_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cx2072x_priv = type { i32, i32 }

@CX2072X_PORTA_PIN_SENSE = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST11 = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@CX2072X_UM_INTERRUPT_CRTL_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"CX2072X_HSDETECT type=0x%X,Jack state = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cx2072x_jack_status_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_jack_status_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cx2072x_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.snd_soc_component*
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.cx2072x_priv* %11, %struct.cx2072x_priv** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %4, align 8
  %13 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %4, align 8
  %16 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CX2072X_PORTA_PIN_SENSE, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 24
  store i32 %21, i32* %5, align 4
  %22 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %4, align 8
  %23 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CX2072X_DIGITAL_TEST11, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %6)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %61

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @SND_JACK_HEADSET, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @SND_JACK_BTN_0, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %60

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %4, align 8
  %63 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CX2072X_UM_INTERRUPT_CRTL_E, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 301989888)
  %67 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %4, align 8
  %68 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
