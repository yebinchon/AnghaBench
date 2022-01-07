; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_send_raw_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_send_raw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i64, %struct.line6_properties* }
%struct.line6_properties = type { i32, i32 }

@LINE6_CAP_CONTROL_MIDI = common dso_local global i32 0, align 4
@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"usb_bulk_msg failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, i8*, i32)* @line6_send_raw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line6_send_raw_message(%struct.usb_line6* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.line6_properties*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %15 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %14, i32 0, i32 3
  %16 = load %struct.line6_properties*, %struct.line6_properties** %15, align 8
  store %struct.line6_properties* %16, %struct.line6_properties** %9, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %86, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %11, align 8
  %26 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %27 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @min(i64 %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.line6_properties*, %struct.line6_properties** %9, align 8
  %34 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LINE6_CAP_CONTROL_MIDI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %21
  %40 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %41 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %44 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.line6_properties*, %struct.line6_properties** %9, align 8
  %47 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_sndintpipe(i32 %45, i32 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @LINE6_TIMEOUT, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @usb_interrupt_msg(i32 %42, i32 %49, i8* %50, i32 %51, i32* %10, i32 %54)
  store i32 %55, i32* %13, align 4
  br label %73

56:                                               ; preds = %21
  %57 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %58 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %61 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.line6_properties*, %struct.line6_properties** %9, align 8
  %64 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_sndbulkpipe(i32 %62, i32 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @LINE6_TIMEOUT, align 4
  %70 = load i32, i32* @HZ, align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i32 @usb_bulk_msg(i32 %59, i32 %66, i8* %67, i32 %68, i32* %10, i32 %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %56, %39
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %78 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %94

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82
  %87 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %88 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  br label %17

94:                                               ; preds = %76, %17
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
