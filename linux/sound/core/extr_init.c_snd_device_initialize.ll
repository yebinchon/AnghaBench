; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_device_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_device_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, i32* }
%struct.snd_card = type { i32 }

@sound_class = common dso_local global i32 0, align 4
@default_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_device_initialize(%struct.device* %0, %struct.snd_card* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_card*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.snd_card* %1, %struct.snd_card** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i32 @device_initialize(%struct.device* %5)
  %7 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %8 = icmp ne %struct.snd_card* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 2
  store i32* %11, i32** %13, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @sound_class, align 4
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @default_release, align 4
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  ret void
}

declare dso_local i32 @device_initialize(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
