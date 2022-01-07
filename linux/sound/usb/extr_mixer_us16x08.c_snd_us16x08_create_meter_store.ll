; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_create_meter_store.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_create_meter_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_us16x08_meter_store = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_us16x08_meter_store* ()* @snd_us16x08_create_meter_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_us16x08_meter_store* @snd_us16x08_create_meter_store() #0 {
  %1 = alloca %struct.snd_us16x08_meter_store*, align 8
  %2 = alloca %struct.snd_us16x08_meter_store*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.snd_us16x08_meter_store* @kzalloc(i32 16, i32 %3)
  store %struct.snd_us16x08_meter_store* %4, %struct.snd_us16x08_meter_store** %2, align 8
  %5 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %6 = icmp ne %struct.snd_us16x08_meter_store* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.snd_us16x08_meter_store* null, %struct.snd_us16x08_meter_store** %1, align 8
  br label %14

8:                                                ; preds = %0
  %9 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %10 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %12 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  store %struct.snd_us16x08_meter_store* %13, %struct.snd_us16x08_meter_store** %1, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %1, align 8
  ret %struct.snd_us16x08_meter_store* %15
}

declare dso_local %struct.snd_us16x08_meter_store* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
