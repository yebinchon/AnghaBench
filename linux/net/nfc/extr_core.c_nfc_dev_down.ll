; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dev_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dev_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [13 x i8] c"dev_name=%s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_dev_down(%struct.nfc_dev* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %4, i32 0, i32 1
  %6 = call i32 @dev_name(i32* %5)
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %8, i32 0, i32 1
  %10 = call i32 @device_lock(i32* %9)
  %11 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %11, i32 0, i32 1
  %13 = call i32 @device_is_registered(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EALREADY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %28 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %33 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %31
  %40 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %41 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.nfc_dev*)**
  %45 = load i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*)** %44, align 8
  %46 = icmp ne i32 (%struct.nfc_dev*)* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %49 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.nfc_dev*)**
  %53 = load i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*)** %52, align 8
  %54 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %55 = call i32 %53(%struct.nfc_dev* %54)
  br label %56

56:                                               ; preds = %47, %39
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %58 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %36, %23, %15
  %60 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %61 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %60, i32 0, i32 1
  %62 = call i32 @device_unlock(i32* %61)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @pr_debug(i8*, i32) #1

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
