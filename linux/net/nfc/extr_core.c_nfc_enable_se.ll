; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_enable_se.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_enable_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { {}*, i32 }
%struct.nfc_se = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s se index %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_SE_ENABLED = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_enable_se(%struct.nfc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_se*, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %7, i32 0, i32 0
  %9 = call i32 @dev_name(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %12, i32 0, i32 0
  %14 = call i32 @device_lock(i32* %13)
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %15, i32 0, i32 0
  %17 = call i32 @device_is_registered(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %91

30:                                               ; preds = %22
  %31 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %91

38:                                               ; preds = %30
  %39 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.nfc_dev*, i32)**
  %44 = load i32 (%struct.nfc_dev*, i32)*, i32 (%struct.nfc_dev*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.nfc_dev*, i32)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %38
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %91

56:                                               ; preds = %46
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.nfc_se* @nfc_find_se(%struct.nfc_dev* %57, i32 %58)
  store %struct.nfc_se* %59, %struct.nfc_se** %5, align 8
  %60 = load %struct.nfc_se*, %struct.nfc_se** %5, align 8
  %61 = icmp ne %struct.nfc_se* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %91

65:                                               ; preds = %56
  %66 = load %struct.nfc_se*, %struct.nfc_se** %5, align 8
  %67 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NFC_SE_ENABLED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EALREADY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %91

74:                                               ; preds = %65
  %75 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %76 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = bitcast {}** %78 to i32 (%struct.nfc_dev*, i32)**
  %80 = load i32 (%struct.nfc_dev*, i32)*, i32 (%struct.nfc_dev*, i32)** %79, align 8
  %81 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 %80(%struct.nfc_dev* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i64, i64* @NFC_SE_ENABLED, align 8
  %88 = load %struct.nfc_se*, %struct.nfc_se** %5, align 8
  %89 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %74
  br label %91

91:                                               ; preds = %90, %71, %62, %53, %35, %27, %19
  %92 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %93 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %92, i32 0, i32 0
  %94 = call i32 @device_unlock(i32* %93)
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local %struct.nfc_se* @nfc_find_se(%struct.nfc_dev*, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
