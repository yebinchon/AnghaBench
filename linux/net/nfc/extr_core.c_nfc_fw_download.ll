; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [19 x i8] c"%s do firmware %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_fw_download(%struct.nfc_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %6, i32 0, i32 1
  %8 = call i32 @dev_name(i32* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9)
  %11 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %11, i32 0, i32 1
  %13 = call i32 @device_lock(i32* %12)
  %14 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %15 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %14, i32 0, i32 1
  %16 = call i32 @device_is_registered(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %31 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.nfc_dev*, i8*)**
  %35 = load i32 (%struct.nfc_dev*, i8*)*, i32 (%struct.nfc_dev*, i8*)** %34, align 8
  %36 = icmp ne i32 (%struct.nfc_dev*, i8*)* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %29
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.nfc_dev*, i8*)**
  %48 = load i32 (%struct.nfc_dev*, i8*)*, i32 (%struct.nfc_dev*, i8*)** %47, align 8
  %49 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 %48(%struct.nfc_dev* %49, i8* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %56 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %40
  br label %58

58:                                               ; preds = %57, %37, %26, %18
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %60 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %59, i32 0, i32 1
  %61 = call i32 @device_unlock(i32* %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
