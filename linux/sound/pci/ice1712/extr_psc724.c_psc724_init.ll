; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, %struct.psc724_spec* }
%struct.TYPE_9__ = type { i32 }
%struct.psc724_spec = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.snd_ice1712* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@psc724_wm8776_write = common dso_local global i32 0, align 4
@psc724_wm8766_write = common dso_local global i32 0, align 4
@WM8766_IF_FMT_I2S = common dso_local global i32 0, align 4
@WM8766_IF_IWL_24BIT = common dso_local global i32 0, align 4
@psc724_set_pro_rate = common dso_local global i32 0, align 4
@psc724_update_hp_jack_state = common dso_local global i32 0, align 4
@psc724_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @psc724_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc724_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.psc724_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.psc724_spec* @kzalloc(i32 32, i32 %5)
  store %struct.psc724_spec* %6, %struct.psc724_spec** %4, align 8
  %7 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %8 = icmp ne %struct.psc724_spec* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 6
  store %struct.psc724_spec* %13, %struct.psc724_spec** %15, align 8
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %17 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %18 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %17, i32 0, i32 3
  store %struct.snd_ice1712* %16, %struct.snd_ice1712** %18, align 8
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 0
  store i32 6, i32* %20, align 8
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = load i32, i32* @psc724_wm8776_write, align 4
  %24 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %25 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %32 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %35 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %34, i32 0, i32 2
  %36 = call i32 @snd_wm8776_init(%struct.TYPE_10__* %35)
  %37 = load i32, i32* @psc724_wm8766_write, align 4
  %38 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %39 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %46 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %49 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %48, i32 0, i32 1
  %50 = call i32 @snd_wm8766_init(%struct.TYPE_11__* %49)
  %51 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %52 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %51, i32 0, i32 1
  %53 = load i32, i32* @WM8766_IF_FMT_I2S, align 4
  %54 = load i32, i32* @WM8766_IF_IWL_24BIT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @snd_wm8766_set_if(%struct.TYPE_11__* %52, i32 %55)
  %57 = load i32, i32* @psc724_set_pro_rate, align 4
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %59 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.psc724_spec*, %struct.psc724_spec** %4, align 8
  %62 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %61, i32 0, i32 0
  %63 = load i32, i32* @psc724_update_hp_jack_state, align 4
  %64 = call i32 @INIT_DELAYED_WORK(i32* %62, i32 %63)
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %66 = call i32 @psc724_set_jack_detection(%struct.snd_ice1712* %65, i32 1)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %12, %9
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.psc724_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_wm8776_init(%struct.TYPE_10__*) #1

declare dso_local i32 @snd_wm8766_init(%struct.TYPE_11__*) #1

declare dso_local i32 @snd_wm8766_set_if(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @psc724_set_jack_detection(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
