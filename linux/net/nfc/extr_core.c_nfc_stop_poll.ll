; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_stop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_stop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [13 x i8] c"dev_name=%s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_RF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_stop_poll(%struct.nfc_dev* %0) #0 {
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
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %18
  %27 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %28 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.nfc_dev*)**
  %32 = load i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*)** %31, align 8
  %33 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %34 = call i32 %32(%struct.nfc_dev* %33)
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %36 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @NFC_RF_NONE, align 4
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %26, %23, %15
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 1
  %43 = call i32 @device_unlock(i32* %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
