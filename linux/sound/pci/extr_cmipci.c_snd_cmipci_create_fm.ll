; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_create_fm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_create_fm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_opl3 = type { i32 }

@CM_REG_FM_PCI = common dso_local global i64 0, align 8
@OPL3_HW_OPL3 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CM_REG_LEGACY_CTRL = common dso_local global i32 0, align 4
@CM_FMSEL_MASK = common dso_local global i32 0, align 4
@CM_FMSEL_3E8 = common dso_local global i32 0, align 4
@CM_FMSEL_3E0 = common dso_local global i32 0, align 4
@CM_FMSEL_3C8 = common dso_local global i32 0, align 4
@CM_FMSEL_388 = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_FM_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no OPL device at %#lx, skipping...\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot create OPL3 hwdep\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, i64)* @snd_cmipci_create_fm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_create_fm(%struct.cmipci* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_opl3*, align 8
  %9 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %104

13:                                               ; preds = %2
  %14 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %15 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 39
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %20 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CM_REG_FM_PCI, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %25 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, 2
  %30 = load i32, i32* @OPL3_HW_OPL3, align 4
  %31 = call i32 @snd_opl3_create(%struct.TYPE_2__* %26, i64 %27, i64 %29, i32 %30, i32 1, %struct.snd_opl3** %8)
  store i32 %31, i32* %9, align 4
  br label %35

32:                                               ; preds = %13
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %35
  %39 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %40 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %41 = call i32 @snd_cmipci_read(%struct.cmipci* %39, i32 %40)
  %42 = load i32, i32* @CM_FMSEL_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  switch i64 %46, label %63 [
    i64 1000, label %47
    i64 992, label %51
    i64 968, label %55
    i64 904, label %59
  ]

47:                                               ; preds = %38
  %48 = load i32, i32* @CM_FMSEL_3E8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %64

51:                                               ; preds = %38
  %52 = load i32, i32* @CM_FMSEL_3E0, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %64

55:                                               ; preds = %38
  %56 = load i32, i32* @CM_FMSEL_3C8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %38
  %60 = load i32, i32* @CM_FMSEL_388, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %64

63:                                               ; preds = %38
  br label %104

64:                                               ; preds = %59, %55, %51, %47
  %65 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %66 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @snd_cmipci_write(%struct.cmipci* %65, i32 %66, i32 %67)
  %69 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %70 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %71 = load i32, i32* @CM_FM_EN, align 4
  %72 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %69, i32 %70, i32 %71)
  %73 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %74 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, 2
  %79 = load i32, i32* @OPL3_HW_OPL3, align 4
  %80 = call i32 @snd_opl3_create(%struct.TYPE_2__* %75, i64 %76, i64 %78, i32 %79, i32 0, %struct.snd_opl3** %8)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %64
  %83 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %84 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %88)
  br label %104

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90, %35
  %92 = load %struct.snd_opl3*, %struct.snd_opl3** %8, align 8
  %93 = call i32 @snd_opl3_hwdep_new(%struct.snd_opl3* %92, i32 0, i32 1, i32* null)
  store i32 %93, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %97 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %113

103:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %113

104:                                              ; preds = %82, %63, %12
  %105 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %106 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %107 = load i32, i32* @CM_FMSEL_MASK, align 4
  %108 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %105, i32 %106, i32 %107)
  %109 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %110 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %111 = load i32, i32* @CM_FM_EN, align 4
  %112 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %109, i32 %110, i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %104, %103, %95
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @snd_opl3_create(%struct.TYPE_2__*, i64, i64, i32, i32, %struct.snd_opl3**) #1

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i32) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_opl3_hwdep_new(%struct.snd_opl3*, i32, i32, i32*) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
