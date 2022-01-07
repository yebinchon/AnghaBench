; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_get_usb_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_get_usb_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32, i32, i32, %struct.line6_properties*, %struct.usb_device* }
%struct.line6_properties = type { i32, i32 }
%struct.usb_device = type { i64, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LINE6_CAP_CONTROL = common dso_local global i32 0, align 4
@LINE6_CAP_CONTROL_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"endpoint not available, using fallback values\00", align 1
@LINE6_FALLBACK_INTERVAL = common dso_local global i32 0, align 4
@LINE6_FALLBACK_MAXPACKETSIZE = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@USB_LOW_INTERVALS_PER_SECOND = common dso_local global i32 0, align 4
@USB_LOW_ISO_BUFFERS = common dso_local global i32 0, align 4
@USB_HIGH_INTERVALS_PER_SECOND = common dso_local global i32 0, align 4
@USB_HIGH_ISO_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_line6*)* @line6_get_usb_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_get_usb_properties(%struct.usb_line6* %0) #0 {
  %2 = alloca %struct.usb_line6*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.line6_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %2, align 8
  %7 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %8 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %7, i32 0, i32 6
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %3, align 8
  %10 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %11 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %10, i32 0, i32 5
  %12 = load %struct.line6_properties*, %struct.line6_properties** %11, align 8
  store %struct.line6_properties* %12, %struct.line6_properties** %4, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %6, align 8
  %13 = load %struct.line6_properties*, %struct.line6_properties** %4, align 8
  %14 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LINE6_CAP_CONTROL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %1
  %20 = load %struct.line6_properties*, %struct.line6_properties** %4, align 8
  %21 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LINE6_CAP_CONTROL_MIDI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %28 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %27, i32 0, i32 6
  %29 = load %struct.usb_device*, %struct.usb_device** %28, align 8
  %30 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %31 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %30, i32 0, i32 5
  %32 = load %struct.line6_properties*, %struct.line6_properties** %31, align 8
  %33 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_rcvintpipe(%struct.usb_device* %29, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %19
  %37 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %38 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %37, i32 0, i32 6
  %39 = load %struct.usb_device*, %struct.usb_device** %38, align 8
  %40 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %41 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %40, i32 0, i32 5
  %42 = load %struct.line6_properties*, %struct.line6_properties** %41, align 8
  %43 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %39, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %36, %26
  %47 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 1
  %49 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @usb_pipeendpoint(i32 %50)
  %52 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %49, i64 %51
  %53 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %52, align 8
  store %struct.usb_host_endpoint* %53, %struct.usb_host_endpoint** %6, align 8
  br label %54

54:                                               ; preds = %46, %1
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %56 = icmp ne %struct.usb_host_endpoint* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %59 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %63 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %65 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %70 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %90

71:                                               ; preds = %54
  %72 = load %struct.line6_properties*, %struct.line6_properties** %4, align 8
  %73 = getelementptr inbounds %struct.line6_properties, %struct.line6_properties* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LINE6_CAP_CONTROL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %80 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %71
  %84 = load i32, i32* @LINE6_FALLBACK_INTERVAL, align 4
  %85 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %86 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @LINE6_FALLBACK_MAXPACKETSIZE, align 4
  %88 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %89 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %83, %57
  %91 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @USB_SPEED_LOW, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* @USB_LOW_INTERVALS_PER_SECOND, align 4
  %98 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %99 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @USB_LOW_ISO_BUFFERS, align 4
  %101 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %102 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %110

103:                                              ; preds = %90
  %104 = load i32, i32* @USB_HIGH_INTERVALS_PER_SECOND, align 4
  %105 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %106 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @USB_HIGH_ISO_BUFFERS, align 4
  %108 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %109 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %96
  ret void
}

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_pipeendpoint(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
