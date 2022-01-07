; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_init_cap_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_init_cap_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i8*, %struct.TYPE_2__*, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@LINE6_BUFSIZE_LISTEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LINE6_CAP_CONTROL_MIDI = common dso_local global i32 0, align 4
@LINE6_MIDI_MESSAGE_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot start listening: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*)* @line6_init_cap_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line6_init_cap_control(%struct.usb_line6* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %3, align 8
  %5 = load i32, i32* @LINE6_BUFSIZE_LISTEN, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 %5, i32 %6)
  %8 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %9 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %8, i32 0, i32 4
  store i8* %7, i8** %9, align 8
  %10 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %11 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @usb_alloc_urb(i32 0, i32 %18)
  %20 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %21 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %17
  %30 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %31 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LINE6_CAP_CONTROL_MIDI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load i32, i32* @LINE6_MIDI_MESSAGE_MAXLEN, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %43 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %45 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %38
  br label %60

52:                                               ; preds = %29
  %53 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %54 = call i32 @line6_hwdep_init(%struct.usb_line6* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %73

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %62 = call i32 @line6_start_listen(%struct.usb_line6* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %67 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65, %57, %48, %26, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @line6_hwdep_init(%struct.usb_line6*) #1

declare dso_local i32 @line6_start_listen(%struct.usb_line6*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
