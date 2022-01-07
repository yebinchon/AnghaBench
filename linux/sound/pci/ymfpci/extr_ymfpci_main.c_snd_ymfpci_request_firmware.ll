; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"yamaha/ds1_dsp.fw\00", align 1
@YDSXG_DSPLENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"DSP microcode has wrong size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_YAMAHA_724F = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_YAMAHA_740C = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_YAMAHA_744 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_YAMAHA_754 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"yamaha/ds1e_ctrl.fw\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"yamaha/ds1_ctrl.fw\00", align 1
@YDSXG_CTRLLENGTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"controller microcode has wrong size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*)* @snd_ymfpci_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_request_firmware(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %3, align 8
  %7 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %7, i32 0, i32 4
  %9 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @request_firmware(%struct.TYPE_6__** %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @YDSXG_DSPLENGTH, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %16
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %34
  %40 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %41 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_724F, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %63, label %45

45:                                               ; preds = %39
  %46 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_740C, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_744, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %59 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_754, align 8
  %62 = icmp eq i64 %60, %61
  br label %63

63:                                               ; preds = %57, %51, %45, %39
  %64 = phi i1 [ true, %51 ], [ true, %45 ], [ true, %39 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)
  store i8* %69, i8** %6, align 8
  %70 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %70, i32 0, i32 2
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %74 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @request_firmware(%struct.TYPE_6__** %71, i8* %72, i32* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %63
  %81 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %82 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @YDSXG_CTRLLENGTH, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %90 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %88, %80
  br label %98

98:                                               ; preds = %97, %63
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %101, %37
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
