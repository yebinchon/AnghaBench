; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_card.c_snd_usb_lock_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_card.c_snd_usb_lock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_audio*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %3, align 8
  %5 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %3, align 8
  %6 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %5, i32 0, i32 1
  %7 = call i32 @atomic_inc(i32* %6)
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %3, align 8
  %9 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %8, i32 0, i32 2
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %3, align 8
  %17 = call i32 @snd_usb_autoresume(%struct.snd_usb_audio* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

22:                                               ; preds = %20, %12
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %3, align 8
  %24 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %23, i32 0, i32 1
  %25 = call i64 @atomic_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %3, align 8
  %29 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %28, i32 0, i32 0
  %30 = call i32 @wake_up(i32* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_usb_autoresume(%struct.snd_usb_audio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
