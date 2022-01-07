; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_se_io.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_se_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.nfc_se = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s se index %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_SE_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)* @nfc_se_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_se_io(%struct.nfc_dev* %0, i32 %1, i32* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nfc_se*, align 8
  %14 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %16 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_name(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %21 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %20, i32 0, i32 0
  %22 = call i32 @device_lock(i32* %21)
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 0
  %25 = call i32 @device_is_registered(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  br label %81

30:                                               ; preds = %6
  %31 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %32 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %81

38:                                               ; preds = %30
  %39 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %40 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)**
  %44 = load i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)*, i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)** %43, align 8
  %45 = icmp ne i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %81

49:                                               ; preds = %38
  %50 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.nfc_se* @nfc_find_se(%struct.nfc_dev* %50, i32 %51)
  store %struct.nfc_se* %52, %struct.nfc_se** %13, align 8
  %53 = load %struct.nfc_se*, %struct.nfc_se** %13, align 8
  %54 = icmp ne %struct.nfc_se* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  br label %81

58:                                               ; preds = %49
  %59 = load %struct.nfc_se*, %struct.nfc_se** %13, align 8
  %60 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NFC_SE_ENABLED, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %81

67:                                               ; preds = %58
  %68 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %69 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)**
  %73 = load i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)*, i32 (%struct.nfc_dev*, i32, i32*, i64, i32, i8*)** %72, align 8
  %74 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 %73(%struct.nfc_dev* %74, i32 %75, i32* %76, i64 %77, i32 %78, i8* %79)
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %67, %64, %55, %46, %35, %27
  %82 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %83 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %82, i32 0, i32 0
  %84 = call i32 @device_unlock(i32* %83)
  %85 = load i32, i32* %14, align 4
  ret i32 %85
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
