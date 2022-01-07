; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_wait_clear_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_wait_clear_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"timeout: still %d active urbs on EP #%x\0A\00", align 1
@EP_FLAG_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*)* @wait_clear_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_clear_urbs(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca %struct.snd_usb_endpoint*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 1000)
  %7 = add i64 %5, %6
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %10 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %9, i32 0, i32 8
  %11 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bitmap_weight(i32* %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %25

18:                                               ; preds = %8
  %19 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %20

20:                                               ; preds = %18
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @time_before(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %34 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_audio_err(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* @EP_FLAG_STOPPING, align 4
  %39 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %39, i32 0, i32 4
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %45 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %47 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret i32 0
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bitmap_weight(i32*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usb_audio_err(i32, i8*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
