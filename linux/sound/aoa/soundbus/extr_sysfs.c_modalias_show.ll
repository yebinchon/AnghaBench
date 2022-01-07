; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_sysfs.c_modalias_show.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_sysfs.c_modalias_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.soundbus_dev = type { i64*, %struct.platform_device }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"of:N%pOFn%c%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modalias_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.soundbus_dev*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.soundbus_dev* @to_soundbus_device(%struct.device* %10)
  store %struct.soundbus_dev* %11, %struct.soundbus_dev** %7, align 8
  %12 = load %struct.soundbus_dev*, %struct.soundbus_dev** %7, align 8
  %13 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %12, i32 0, i32 1
  store %struct.platform_device* %13, %struct.platform_device** %8, align 8
  %14 = load %struct.soundbus_dev*, %struct.soundbus_dev** %7, align 8
  %15 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.soundbus_dev*, %struct.soundbus_dev** %7, align 8
  %22 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @strlcpy(i8* %20, i64* %23, i32 9)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcat(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %9, align 4
  br label %41

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @of_node_get_device_type(i32 %38)
  %40 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8 signext 84, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %29, %19
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local %struct.soundbus_dev* @to_soundbus_device(%struct.device*) #1

declare dso_local i32 @strlcpy(i8*, i64*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8 signext, i32) #1

declare dso_local i32 @of_node_get_device_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
