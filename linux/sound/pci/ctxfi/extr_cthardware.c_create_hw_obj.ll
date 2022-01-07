; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthardware.c_create_hw_obj.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthardware.c_create_hw_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hw = type { i32, i32, %struct.pci_dev* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_hw_obj(%struct.pci_dev* %0, i32 %1, i32 %2, %struct.hw** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw**, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hw** %3, %struct.hw*** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %4
  %13 = load %struct.hw**, %struct.hw*** %9, align 8
  %14 = call i32 @create_20k1_hw_obj(%struct.hw** %13)
  store i32 %14, i32* %10, align 4
  br label %21

15:                                               ; preds = %4
  %16 = load %struct.hw**, %struct.hw*** %9, align 8
  %17 = call i32 @create_20k2_hw_obj(%struct.hw** %16)
  store i32 %17, i32* %10, align 4
  br label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %18, %15, %12
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = load %struct.hw**, %struct.hw*** %9, align 8
  %29 = load %struct.hw*, %struct.hw** %28, align 8
  %30 = getelementptr inbounds %struct.hw, %struct.hw* %29, i32 0, i32 2
  store %struct.pci_dev* %27, %struct.pci_dev** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.hw**, %struct.hw*** %9, align 8
  %33 = load %struct.hw*, %struct.hw** %32, align 8
  %34 = getelementptr inbounds %struct.hw, %struct.hw* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hw**, %struct.hw*** %9, align 8
  %37 = load %struct.hw*, %struct.hw** %36, align 8
  %38 = getelementptr inbounds %struct.hw, %struct.hw* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %26, %24
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @create_20k1_hw_obj(%struct.hw**) #1

declare dso_local i32 @create_20k2_hw_obj(%struct.hw**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
