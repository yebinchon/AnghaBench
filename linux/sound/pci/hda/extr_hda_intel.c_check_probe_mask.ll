; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_check_probe_mask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_check_probe_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pci_quirk = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@probe_mask = common dso_local global i32* null, align 8
@probe_mask_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"probe_mask set to 0x%x for device %04x:%04x\0A\00", align 1
@AZX_FORCE_CODEC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"codec_mask forced to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*, i32)* @check_probe_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_probe_mask(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.azx* %0, %struct.azx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** @probe_mask, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.azx*, %struct.azx** %3, align 8
  %12 = getelementptr inbounds %struct.azx, %struct.azx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.azx*, %struct.azx** %3, align 8
  %14 = getelementptr inbounds %struct.azx, %struct.azx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.azx*, %struct.azx** %3, align 8
  %19 = getelementptr inbounds %struct.azx, %struct.azx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @probe_mask_list, align 4
  %22 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32 %20, i32 %21)
  store %struct.snd_pci_quirk* %22, %struct.snd_pci_quirk** %5, align 8
  %23 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %24 = icmp ne %struct.snd_pci_quirk* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %17
  %26 = load %struct.azx*, %struct.azx** %3, align 8
  %27 = getelementptr inbounds %struct.azx, %struct.azx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.azx*, %struct.azx** %3, align 8
  %45 = getelementptr inbounds %struct.azx, %struct.azx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %25, %17
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.azx*, %struct.azx** %3, align 8
  %49 = getelementptr inbounds %struct.azx, %struct.azx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.azx*, %struct.azx** %3, align 8
  %54 = getelementptr inbounds %struct.azx, %struct.azx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AZX_FORCE_CODEC_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.azx*, %struct.azx** %3, align 8
  %61 = getelementptr inbounds %struct.azx, %struct.azx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 255
  %64 = load %struct.azx*, %struct.azx** %3, align 8
  %65 = call %struct.TYPE_4__* @azx_bus(%struct.azx* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.azx*, %struct.azx** %3, align 8
  %68 = getelementptr inbounds %struct.azx, %struct.azx* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.azx*, %struct.azx** %3, align 8
  %73 = call %struct.TYPE_4__* @azx_bus(%struct.azx* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %59, %52, %47
  ret void
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_4__* @azx_bus(%struct.azx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
