; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_enable_iso_interface.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_enable_iso_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"cannot initialize interface; error %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*, i32)* @enable_iso_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_iso_interface(%struct.ua101* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ua101*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ua101*, %struct.ua101** %4, align 8
  %9 = getelementptr inbounds %struct.ua101, %struct.ua101* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %6, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.ua101*, %struct.ua101** %4, align 8
  %24 = getelementptr inbounds %struct.ua101, %struct.ua101* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_set_interface(%struct.TYPE_6__* %25, i32 %29, i32 1)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.ua101*, %struct.ua101** %4, align 8
  %35 = getelementptr inbounds %struct.ua101, %struct.ua101* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @usb_error_string(i32 %39)
  %41 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @usb_set_interface(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
