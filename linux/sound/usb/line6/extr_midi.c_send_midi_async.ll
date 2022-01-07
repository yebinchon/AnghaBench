; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_send_midi_async.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_send_midi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@midi_sent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"usb_submit_urb failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, i8*, i32)* @send_midi_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_midi_async(%struct.usb_line6* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_line6*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %8, align 8
  %13 = load %struct.urb*, %struct.urb** %8, align 8
  %14 = icmp eq %struct.urb* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i8* @kmemdup(i8* %19, i32 %20, i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.urb*, %struct.urb** %8, align 8
  %27 = call i32 @usb_free_urb(%struct.urb* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %18
  %31 = load %struct.urb*, %struct.urb** %8, align 8
  %32 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %33 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %36 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %39 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_sndintpipe(i32 %37, i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @midi_sent, align 4
  %47 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %48 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_fill_int_urb(%struct.urb* %31, i32 %34, i32 %43, i8* %44, i32 %45, i32 %46, %struct.usb_line6* %47, i32 %50)
  %52 = load %struct.urb*, %struct.urb** %8, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.urb*, %struct.urb** %8, align 8
  %55 = call i32 @usb_urb_ep_type_check(%struct.urb* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %30
  br label %73

59:                                               ; preds = %30
  %60 = load %struct.urb*, %struct.urb** %8, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i32 @usb_submit_urb(%struct.urb* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %73

66:                                               ; preds = %59
  %67 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %68 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %81

73:                                               ; preds = %65, %58
  %74 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %75 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.urb*, %struct.urb** %8, align 8
  %79 = call i32 @usb_free_urb(%struct.urb* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %66, %25, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.usb_line6*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_urb_ep_type_check(%struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
