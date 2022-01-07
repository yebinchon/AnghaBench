; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_core.c_soundbus_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_core.c_soundbus_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.soundbus_dev = type { i32, %struct.platform_device }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"OF_NAME=%pOFn\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"OF_TYPE=%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"OF_COMPATIBLE_%d=%s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"OF_COMPATIBLE_N=%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @soundbus_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soundbus_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.soundbus_dev*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %110

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.soundbus_dev* @to_soundbus_device(%struct.device* %19)
  store %struct.soundbus_dev* %20, %struct.soundbus_dev** %6, align 8
  %21 = load %struct.soundbus_dev*, %struct.soundbus_dev** %6, align 8
  %22 = icmp ne %struct.soundbus_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %110

26:                                               ; preds = %18
  %27 = load %struct.soundbus_dev*, %struct.soundbus_dev** %6, align 8
  %28 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %27, i32 0, i32 1
  store %struct.platform_device* %28, %struct.platform_device** %7, align 8
  %29 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %110

39:                                               ; preds = %26
  %40 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @of_node_get_device_type(i32 %44)
  %46 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %110

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @of_get_property(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %77, %51
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %65, label %95

65:                                               ; preds = %63
  %66 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %67 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %110

77:                                               ; preds = %65
  %78 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %79 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i8*, i8** %8, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %8, align 8
  %86 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %87 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %57

95:                                               ; preds = %63
  %96 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %110

103:                                              ; preds = %95
  %104 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %105 = load %struct.soundbus_dev*, %struct.soundbus_dev** %6, align 8
  %106 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %101, %75, %49, %37, %23, %15
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.soundbus_dev* @to_soundbus_device(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, ...) #1

declare dso_local i32 @of_node_get_device_type(i32) #1

declare dso_local i8* @of_get_property(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
