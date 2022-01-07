; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_detect_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_detect_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.pci_dev = type { i64, i64, i32, i32 }
%struct.pci_device_id = type { i64 }

@snd_bt87x_ids = common dso_local global i32 0, align 4
@blacklist = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"card %#04x-%#04x:%#04x has no audio\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unknown card %#04x-%#04x:%#04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"please mail id, board name, and, if it works, the correct digital_rate option to <alsa-devel@alsa-project.org>\0A\00", align 1
@SND_BT87X_BOARD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @snd_bt87x_detect_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_detect_card(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @snd_bt87x_ids, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.pci_device_id* @pci_match_id(i32 %6, %struct.pci_dev* %7)
  store %struct.pci_device_id* %8, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %10 = icmp ne %struct.pci_device_id* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %65, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @blacklist, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @blacklist, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @blacklist, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %38
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 2
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57, i64 %60)
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %85

64:                                               ; preds = %38, %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 2
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %76, i64 %79)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 2
  %83 = call i32 (i32*, i8*, ...) @dev_info(i32* %82, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @SND_BT87X_BOARD_UNKNOWN, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %68, %49, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.pci_device_id* @pci_match_id(i32, %struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
