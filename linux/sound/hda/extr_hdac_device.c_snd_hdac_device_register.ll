; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_device_register(%struct.hdac_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  %5 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %6 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %5, i32 0, i32 0
  %7 = call i32 @device_add(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %14 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %17 = call i32 @hda_widget_sysfs_init(%struct.hdac_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %19 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %25 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %24, i32 0, i32 0
  %26 = call i32 @device_del(i32* %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hda_widget_sysfs_init(%struct.hdac_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
