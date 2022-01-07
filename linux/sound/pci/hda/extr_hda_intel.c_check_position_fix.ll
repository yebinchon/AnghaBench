; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_check_position_fix.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_check_position_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pci_quirk = type { i32, i32, i32 }

@position_fix_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"position_fix set to %d for device %04x:%04x\0A\00", align 1
@AZX_DRIVER_VIA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Using VIACOMBO position fix\0A\00", align 1
@AZX_DCAPS_AMD_WORKAROUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Using FIFO position fix\0A\00", align 1
@AZX_DCAPS_POSFIX_LPIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Using LPIB position fix\0A\00", align 1
@AZX_DRIVER_SKL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Using SKL position fix\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, i32)* @check_position_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_position_fix(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %10 [
    i32 134, label %8
    i32 131, label %8
    i32 130, label %8
    i32 128, label %8
    i32 133, label %8
    i32 129, label %8
    i32 132, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %3, align 4
  br label %92

10:                                               ; preds = %2
  %11 = load %struct.azx*, %struct.azx** %4, align 8
  %12 = getelementptr inbounds %struct.azx, %struct.azx* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @position_fix_list, align 4
  %15 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32 %13, i32 %14)
  store %struct.snd_pci_quirk* %15, %struct.snd_pci_quirk** %6, align 8
  %16 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %17 = icmp ne %struct.snd_pci_quirk* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load %struct.azx*, %struct.azx** %4, align 8
  %20 = getelementptr inbounds %struct.azx, %struct.azx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  %34 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %92

37:                                               ; preds = %10
  %38 = load %struct.azx*, %struct.azx** %4, align 8
  %39 = getelementptr inbounds %struct.azx, %struct.azx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AZX_DRIVER_VIA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.azx*, %struct.azx** %4, align 8
  %45 = getelementptr inbounds %struct.azx, %struct.azx* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 128, i32* %3, align 4
  br label %92

50:                                               ; preds = %37
  %51 = load %struct.azx*, %struct.azx** %4, align 8
  %52 = getelementptr inbounds %struct.azx, %struct.azx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AZX_DCAPS_AMD_WORKAROUND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.azx*, %struct.azx** %4, align 8
  %59 = getelementptr inbounds %struct.azx, %struct.azx* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 132, i32* %3, align 4
  br label %92

64:                                               ; preds = %50
  %65 = load %struct.azx*, %struct.azx** %4, align 8
  %66 = getelementptr inbounds %struct.azx, %struct.azx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @AZX_DCAPS_POSFIX_LPIB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.azx*, %struct.azx** %4, align 8
  %73 = getelementptr inbounds %struct.azx, %struct.azx* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 131, i32* %3, align 4
  br label %92

78:                                               ; preds = %64
  %79 = load %struct.azx*, %struct.azx** %4, align 8
  %80 = getelementptr inbounds %struct.azx, %struct.azx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AZX_DRIVER_SKL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.azx*, %struct.azx** %4, align 8
  %86 = getelementptr inbounds %struct.azx, %struct.azx* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 129, i32* %3, align 4
  br label %92

91:                                               ; preds = %78
  store i32 134, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %84, %71, %57, %43, %18, %8
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
