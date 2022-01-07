; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec*, %struct.TYPE_2__* }
%struct.ca0132_spec = type { %struct.ca0132_spec*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_free(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %8 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %7, i32 0, i32 3
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @snd_hda_power_up(%struct.hda_codec* %10)
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = call i32 @ca0132_quirk(%struct.ca0132_spec* %12)
  switch i32 %13, label %29 [
    i32 129, label %14
    i32 128, label %17
    i32 131, label %20
    i32 132, label %23
    i32 130, label %26
  ]

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = call i32 @sbz_exit_chip(%struct.hda_codec* %15)
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @zxr_exit_chip(%struct.hda_codec* %18)
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @r3d_exit_chip(%struct.hda_codec* %21)
  br label %30

23:                                               ; preds = %1
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @ae5_exit_chip(%struct.hda_codec* %24)
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = call i32 @r3di_gpio_shutdown(%struct.hda_codec* %27)
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %26, %23, %20, %17, %14
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %33 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %31, i32 %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @ca0132_exit_chip(%struct.hda_codec* %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = call i32 @snd_hda_power_down(%struct.hda_codec* %38)
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 0
  %42 = load %struct.ca0132_spec*, %struct.ca0132_spec** %41, align 8
  %43 = call i32 @kfree(%struct.ca0132_spec* %42)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 0
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %45, align 8
  %47 = call i32 @kfree(%struct.ca0132_spec* %46)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @sbz_exit_chip(%struct.hda_codec*) #1

declare dso_local i32 @zxr_exit_chip(%struct.hda_codec*) #1

declare dso_local i32 @r3d_exit_chip(%struct.hda_codec*) #1

declare dso_local i32 @ae5_exit_chip(%struct.hda_codec*) #1

declare dso_local i32 @r3di_gpio_shutdown(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @ca0132_exit_chip(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

declare dso_local i32 @kfree(%struct.ca0132_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
