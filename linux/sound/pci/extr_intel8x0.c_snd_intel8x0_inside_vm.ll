; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_inside_vm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_inside_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }

@inside_vm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"enable (forced) VM\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"disable (forced) VM\00", align 1
@PCI_SUBVENDOR_ID_REDHAT_QUMRANET = common dso_local global i32 0, align 4
@PCI_SUBDEVICE_ID_QEMU = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"enable KVM\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"enable Parallels VM\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s optimization\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @snd_intel8x0_inside_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_inside_vm(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @inside_vm, align 4
  store i32 %5, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)
  store i8* %12, i8** %4, align 8
  br label %34

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCI_SUBVENDOR_ID_REDHAT_QUMRANET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_SUBDEVICE_ID_QEMU, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %3, align 4
  br label %33

26:                                               ; preds = %19, %13
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 6840
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26
  br label %33

33:                                               ; preds = %32, %25
  br label %34

34:                                               ; preds = %33, %8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 2
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
