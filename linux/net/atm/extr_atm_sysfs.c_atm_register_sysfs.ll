; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_atm_sysfs.c_atm_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_atm_sysfs.c_atm_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32, i32, %struct.device }
%struct.device = type { %struct.device*, i32* }

@atm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@atm_attrs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_register_sysfs(%struct.atm_dev* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %11 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  store i32* @atm_class, i32** %13, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %19 = call i32 @dev_set_drvdata(%struct.device* %17, %struct.atm_dev* %18)
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %22 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %25 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_set_name(%struct.device* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @device_register(%struct.device* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i64*, i64** @atm_attrs, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i64*, i64** @atm_attrs, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @device_create_file(%struct.device* %43, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %35

57:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %78

58:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i64*, i64** @atm_attrs, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @device_remove_file(%struct.device* %64, i64 %69)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %59

74:                                               ; preds = %59
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 @device_del(%struct.device* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %57, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.atm_dev*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @device_create_file(%struct.device*, i64) #1

declare dso_local i32 @device_remove_file(%struct.device*, i64) #1

declare dso_local i32 @device_del(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
