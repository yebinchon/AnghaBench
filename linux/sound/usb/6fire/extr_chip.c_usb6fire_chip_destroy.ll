; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_chip.c_usb6fire_chip_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_chip.c_usb6fire_chip_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfire_chip = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfire_chip*)* @usb6fire_chip_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_chip_destroy(%struct.sfire_chip* %0) #0 {
  %2 = alloca %struct.sfire_chip*, align 8
  store %struct.sfire_chip* %0, %struct.sfire_chip** %2, align 8
  %3 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %4 = icmp ne %struct.sfire_chip* %3, null
  br i1 %4, label %5, label %48

5:                                                ; preds = %1
  %6 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %7 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %12 = call i32 @usb6fire_pcm_destroy(%struct.sfire_chip* %11)
  br label %13

13:                                               ; preds = %10, %5
  %14 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %15 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %20 = call i32 @usb6fire_midi_destroy(%struct.sfire_chip* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %23 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %28 = call i32 @usb6fire_comm_destroy(%struct.sfire_chip* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %31 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %36 = call i32 @usb6fire_control_destroy(%struct.sfire_chip* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %39 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %44 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @snd_card_free(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @usb6fire_pcm_destroy(%struct.sfire_chip*) #1

declare dso_local i32 @usb6fire_midi_destroy(%struct.sfire_chip*) #1

declare dso_local i32 @usb6fire_comm_destroy(%struct.sfire_chip*) #1

declare dso_local i32 @usb6fire_control_destroy(%struct.sfire_chip*) #1

declare dso_local i32 @snd_card_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
