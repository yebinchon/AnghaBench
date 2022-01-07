; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usX2Yhwdep.c_snd_us428ctls_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usX2Yhwdep.c_snd_us428ctls_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.usX2Ydev* }
%struct.usX2Ydev = type { i32, i32, %struct.us428ctls_sharedmem* }
%struct.us428ctls_sharedmem = type { i64, i64 }
%struct.file = type { i32 }

@USX2Y_STAT_CHIP_HUP = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*, i32*)* @snd_us428ctls_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_us428ctls_poll(%struct.snd_hwdep* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usX2Ydev*, align 8
  %10 = alloca %struct.us428ctls_sharedmem*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %12 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %11, i32 0, i32 0
  %13 = load %struct.usX2Ydev*, %struct.usX2Ydev** %12, align 8
  store %struct.usX2Ydev* %13, %struct.usX2Ydev** %9, align 8
  %14 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %15 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %14, i32 0, i32 2
  %16 = load %struct.us428ctls_sharedmem*, %struct.us428ctls_sharedmem** %15, align 8
  store %struct.us428ctls_sharedmem* %16, %struct.us428ctls_sharedmem** %10, align 8
  %17 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %18 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @USX2Y_STAT_CHIP_HUP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EPOLLHUP, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = load %struct.usX2Ydev*, %struct.usX2Ydev** %9, align 8
  %28 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %27, i32 0, i32 1
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @poll_wait(%struct.file* %26, i32* %28, i32* %29)
  %31 = load %struct.us428ctls_sharedmem*, %struct.us428ctls_sharedmem** %10, align 8
  %32 = icmp ne %struct.us428ctls_sharedmem* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load %struct.us428ctls_sharedmem*, %struct.us428ctls_sharedmem** %10, align 8
  %35 = getelementptr inbounds %struct.us428ctls_sharedmem, %struct.us428ctls_sharedmem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.us428ctls_sharedmem*, %struct.us428ctls_sharedmem** %10, align 8
  %38 = getelementptr inbounds %struct.us428ctls_sharedmem, %struct.us428ctls_sharedmem* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @EPOLLIN, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %33, %25
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
