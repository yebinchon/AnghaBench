; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_disable_se.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_disable_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, i32 }
%struct.nfc_se = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s se index %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_SE_DISABLED = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_disable_se(%struct.nfc_dev* %0, i32 %1) #0 {
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
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %83

30:                                               ; preds = %22
  %31 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.nfc_dev*, i32)**
  %43 = load i32 (%struct.nfc_dev*, i32)*, i32 (%struct.nfc_dev*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.nfc_dev*, i32)* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37, %30
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %83

48:                                               ; preds = %37
  %49 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call %struct.nfc_se* @nfc_find_se(%struct.nfc_dev* %49, i32 %50)
  store %struct.nfc_se* %51, %struct.nfc_se** %5, align 8
  %52 = load %struct.nfc_se*, %struct.nfc_se** %5, align 8
  %53 = icmp ne %struct.nfc_se* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %83

57:                                               ; preds = %48
  %58 = load %struct.nfc_se*, %struct.nfc_se** %5, align 8
  %59 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NFC_SE_DISABLED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EALREADY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %83

66:                                               ; preds = %57
  %67 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %68 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = bitcast {}** %70 to i32 (%struct.nfc_dev*, i32)**
  %72 = load i32 (%struct.nfc_dev*, i32)*, i32 (%struct.nfc_dev*, i32)** %71, align 8
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 %72(%struct.nfc_dev* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i64, i64* @NFC_SE_DISABLED, align 8
  %80 = load %struct.nfc_se*, %struct.nfc_se** %5, align 8
  %81 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %66
  br label %83

83:                                               ; preds = %82, %63, %54, %45, %27, %19
  %84 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %85 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %84, i32 0, i32 0
  %86 = call i32 @device_unlock(i32* %85)
  %87 = load i32, i32* %6, align 4
  ret i32 %87
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
