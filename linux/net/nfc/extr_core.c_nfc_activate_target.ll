; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_activate_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_activate_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.nfc_target* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_dev*, %struct.nfc_target*, i32)*, i64 }
%struct.nfc_target = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"dev_name=%s target_idx=%u protocol=%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NFC_CHECK_PRES_FREQ_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_activate_target(%struct.nfc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfc_target*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_name(i32* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %16 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %15, i32 0, i32 0
  %17 = call i32 @device_lock(i32* %16)
  %18 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %18, i32 0, i32 0
  %20 = call i32 @device_is_registered(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %82

25:                                               ; preds = %3
  %26 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %26, i32 0, i32 5
  %28 = load %struct.nfc_target*, %struct.nfc_target** %27, align 8
  %29 = icmp ne %struct.nfc_target* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %82

33:                                               ; preds = %25
  %34 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.nfc_target* @nfc_find_target(%struct.nfc_dev* %34, i32 %35)
  store %struct.nfc_target* %36, %struct.nfc_target** %8, align 8
  %37 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %38 = icmp eq %struct.nfc_target* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %82

42:                                               ; preds = %33
  %43 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.nfc_dev*, %struct.nfc_target*, i32)*, i32 (%struct.nfc_dev*, %struct.nfc_target*, i32)** %46, align 8
  %48 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %49 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %47(%struct.nfc_dev* %48, %struct.nfc_target* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %42
  %55 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %56 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %56, i32 0, i32 5
  store %struct.nfc_target* %55, %struct.nfc_target** %57, align 8
  %58 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %60 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %62 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %54
  %68 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %69 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %74 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %73, i32 0, i32 1
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i32, i32* @NFC_CHECK_PRES_FREQ_MS, align 4
  %77 = call i64 @msecs_to_jiffies(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @mod_timer(i32* %74, i64 %78)
  br label %80

80:                                               ; preds = %72, %67, %54
  br label %81

81:                                               ; preds = %80, %42
  br label %82

82:                                               ; preds = %81, %39, %30, %22
  %83 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %84 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %83, i32 0, i32 0
  %85 = call i32 @device_unlock(i32* %84)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local %struct.nfc_target* @nfc_find_target(%struct.nfc_dev*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
