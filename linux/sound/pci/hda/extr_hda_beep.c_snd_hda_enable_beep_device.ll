; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_snd_hda_enable_beep_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_snd_hda_enable_beep_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_beep* }
%struct.hda_beep = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_enable_beep_device(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_beep*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.hda_beep*, %struct.hda_beep** %8, align 8
  store %struct.hda_beep* %9, %struct.hda_beep** %6, align 8
  %10 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %11 = icmp ne %struct.hda_beep* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %20 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %27 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %32 = call i32 @turn_off_beep(%struct.hda_beep* %31)
  br label %33

33:                                               ; preds = %30, %24
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @turn_off_beep(%struct.hda_beep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
