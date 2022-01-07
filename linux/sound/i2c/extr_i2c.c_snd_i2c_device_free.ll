; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_device_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { {}*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_i2c_device_free(%struct.snd_i2c_device* %0) #0 {
  %2 = alloca %struct.snd_i2c_device*, align 8
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %2, align 8
  %3 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %4 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %9 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %8, i32 0, i32 1
  %10 = call i32 @list_del(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %13 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.snd_i2c_device*)**
  %15 = load i32 (%struct.snd_i2c_device*)*, i32 (%struct.snd_i2c_device*)** %14, align 8
  %16 = icmp ne i32 (%struct.snd_i2c_device*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %19 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.snd_i2c_device*)**
  %21 = load i32 (%struct.snd_i2c_device*)*, i32 (%struct.snd_i2c_device*)** %20, align 8
  %22 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %23 = call i32 %21(%struct.snd_i2c_device* %22)
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %26 = call i32 @kfree(%struct.snd_i2c_device* %25)
  ret i32 0
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.snd_i2c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
