; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_start_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_start_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [60 x i8] c"dev_name %s initiator protocols 0x%x target protocols 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NFC_RF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_start_poll(%struct.nfc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %9, i32 0, i32 1
  %11 = call i32 @dev_name(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %75

23:                                               ; preds = %17, %3
  %24 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %25 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %24, i32 0, i32 1
  %26 = call i32 @device_lock(i32* %25)
  %27 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %27, i32 0, i32 1
  %29 = call i32 @device_is_registered(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %70

34:                                               ; preds = %23
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %36 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %70

42:                                               ; preds = %34
  %43 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %70

50:                                               ; preds = %42
  %51 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.nfc_dev*, i32, i32)**
  %56 = load i32 (%struct.nfc_dev*, i32, i32)*, i32 (%struct.nfc_dev*, i32, i32)** %55, align 8
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 %56(%struct.nfc_dev* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @NFC_RF_NONE, align 4
  %67 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %68 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %50
  br label %70

70:                                               ; preds = %69, %47, %39, %31
  %71 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %72 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %71, i32 0, i32 1
  %73 = call i32 @device_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

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
