; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dep_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dep_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)* @hci_dep_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dep_link_up(%struct.nfc_dev* %0, %struct.nfc_target* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %14 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %13)
  store %struct.nfc_hci_dev* %14, %struct.nfc_hci_dev** %12, align 8
  %15 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %12, align 8
  %16 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)*, i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)** %18, align 8
  %20 = icmp ne i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %34

22:                                               ; preds = %5
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %12, align 8
  %24 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)*, i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)** %26, align 8
  %28 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %12, align 8
  %29 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 %27(%struct.nfc_hci_dev* %28, %struct.nfc_target* %29, i32 %30, i32* %31, i64 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
