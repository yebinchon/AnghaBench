; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_start_listen.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_start_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@LINE6_CAP_CONTROL_MIDI = common dso_local global i32 0, align 4
@LINE6_BUFSIZE_LISTEN = common dso_local global i32 0, align 4
@line6_data_received = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid control EP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*)* @line6_start_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line6_start_listen(%struct.usb_line6* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %3, align 8
  %5 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %6 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LINE6_CAP_CONTROL_MIDI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %15 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %18 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %21 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %24 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvintpipe(i32 %22, i32 %27)
  %29 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %30 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LINE6_BUFSIZE_LISTEN, align 4
  %33 = load i32, i32* @line6_data_received, align 4
  %34 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %35 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %36 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_fill_int_urb(%struct.TYPE_7__* %16, i32 %19, i32 %28, i32 %31, i32 %32, i32 %33, %struct.usb_line6* %34, i32 %37)
  br label %62

39:                                               ; preds = %1
  %40 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %41 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %44 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %47 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %50 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_rcvbulkpipe(i32 %48, i32 %53)
  %55 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %56 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LINE6_BUFSIZE_LISTEN, align 4
  %59 = load i32, i32* @line6_data_received, align 4
  %60 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %61 = call i32 @usb_fill_bulk_urb(%struct.TYPE_7__* %42, i32 %45, i32 %54, i32 %57, i32 %58, i32 %59, %struct.usb_line6* %60)
  br label %62

62:                                               ; preds = %39, %13
  %63 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %64 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i64 @usb_urb_ep_type_check(%struct.TYPE_7__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %70 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %86

75:                                               ; preds = %62
  %76 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %77 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %81 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call i32 @usb_submit_urb(%struct.TYPE_7__* %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %75, %68
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.usb_line6*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.usb_line6*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i64 @usb_urb_ep_type_check(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
