; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_hwdep_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_hwdep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.snd_hwdep = type { i32, %struct.usb_line6*, i32, i32, i32 }

@line6_hwdep_push_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@SNDRV_HWDEP_IFACE_LINE6 = common dso_local global i32 0, align 4
@hwdep_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*)* @line6_hwdep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line6_hwdep_init(%struct.usb_line6* %0) #0 {
  %2 = alloca %struct.usb_line6*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_hwdep*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %2, align 8
  %5 = load i32, i32* @line6_hwdep_push_message, align 4
  %6 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %7 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %9 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %12 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %16 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %20 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @INIT_KFIFO(i32 %22)
  %24 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %25 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snd_hwdep_new(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, %struct.snd_hwdep** %4)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %47

31:                                               ; preds = %1
  %32 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %33 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcpy(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @SNDRV_HWDEP_IFACE_LINE6, align 4
  %37 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %38 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @hwdep_ops, align 4
  %40 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %41 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %43 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %44 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %43, i32 0, i32 1
  store %struct.usb_line6* %42, %struct.usb_line6** %44, align 8
  %45 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %46 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %31, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @snd_hwdep_new(i32, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
