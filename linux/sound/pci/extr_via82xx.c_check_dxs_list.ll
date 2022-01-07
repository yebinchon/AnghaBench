; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_check_dxs_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_check_dxs_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.snd_pci_quirk = type { i32 }

@dxs_whitelist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DXS white list for %s found\0A\00", align 1
@VIA_REV_8235 = common dso_local global i32 0, align 4
@VIA_DXS_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Assuming DXS channels with 48k fixed sample rate.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"         Please try dxs_support=5 option\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"         and report if it works on your machine.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"         For more details, read ALSA-Configuration.txt.\0A\00", align 1
@VIA_DXS_48K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @check_dxs_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dxs_list(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* @dxs_whitelist, align 4
  %9 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(%struct.pci_dev* %7, i32 %8)
  store %struct.snd_pci_quirk* %9, %struct.snd_pci_quirk** %6, align 8
  %10 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %11 = icmp ne %struct.snd_pci_quirk* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %16 = call i32 @snd_pci_quirk_name(%struct.snd_pci_quirk* %15)
  %17 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VIA_REV_8235, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @VIA_DXS_SRC, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @VIA_DXS_48K, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %25, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snd_pci_quirk_name(%struct.snd_pci_quirk*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
