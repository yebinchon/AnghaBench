; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_check_for_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_check_for_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@H9652 = common dso_local global i64 0, align 8
@H9632 = common dso_local global i64 0, align 8
@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_DllError = common dso_local global i32 0, align 4
@HDSP_FirmwareLoaded = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"firmware not present.\0A\00", align 1
@HDSP_FirmwareCached = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"No firmware loaded nor cached, please upload firmware.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Firmware loading from cache failed, please upload manually.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_check_for_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_check_for_firmware(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %7 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @H9652, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %13 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @H9632, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %79

18:                                               ; preds = %11
  %19 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %20 = load i32, i32* @HDSP_statusRegister, align 4
  %21 = call i32 @hdsp_read(%struct.hdsp* %19, i32 %20)
  %22 = load i32, i32* @HDSP_DllError, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %18
  %26 = load i32, i32* @HDSP_FirmwareLoaded, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %79

37:                                               ; preds = %25
  %38 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %39 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HDSP_FirmwareCached, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %37
  %51 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %52 = call i32 @hdsp_request_fw_loader(%struct.hdsp* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %79

55:                                               ; preds = %50
  %56 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %57 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %37
  %65 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %66 = call i64 @snd_hdsp_load_firmware_from_cache(%struct.hdsp* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %70 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %18
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %68, %55, %54, %34, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hdsp_request_fw_loader(%struct.hdsp*) #1

declare dso_local i64 @snd_hdsp_load_firmware_from_cache(%struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
