; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2sbus_control = type { i32 }
%struct.i2sbus_dev = type { i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cell-enable\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"clock-enable\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cell-disable\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"clock-disable\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2sbus_control_add_dev(%struct.i2sbus_control* %0, %struct.i2sbus_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2sbus_control*, align 8
  %5 = alloca %struct.i2sbus_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.i2sbus_control* %0, %struct.i2sbus_control** %4, align 8
  store %struct.i2sbus_dev* %1, %struct.i2sbus_dev** %5, align 8
  %7 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %8 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i8* @pmf_find_function(%struct.device_node* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %16 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i8* @pmf_find_function(%struct.device_node* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %20 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = call i8* @pmf_find_function(%struct.device_node* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %24 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i8* @pmf_find_function(%struct.device_node* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %28 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i8* @pmf_find_function(%struct.device_node* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %32 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %34 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %2
  %38 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %39 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %44 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %43, i32 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %49 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %54 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %59 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %64 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %62, %57, %52, %47, %42
  %68 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %69 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @pmf_put_function(i8* %70)
  %72 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %73 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @pmf_put_function(i8* %74)
  %76 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %77 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @pmf_put_function(i8* %78)
  %80 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %81 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @pmf_put_function(i8* %82)
  %84 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %85 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @pmf_put_function(i8* %86)
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %96

90:                                               ; preds = %62, %37, %2
  %91 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %92 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %91, i32 0, i32 1
  %93 = load %struct.i2sbus_control*, %struct.i2sbus_control** %4, align 8
  %94 = getelementptr inbounds %struct.i2sbus_control, %struct.i2sbus_control* %93, i32 0, i32 0
  %95 = call i32 @list_add(i32* %92, i32* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %67
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @pmf_find_function(%struct.device_node*, i8*) #1

declare dso_local i32 @pmf_put_function(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
