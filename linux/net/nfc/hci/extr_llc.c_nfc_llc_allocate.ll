; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc.c_nfc_llc_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc.c_nfc_llc_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llc = type { %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* (%struct.nfc_hci_dev*, i32, i32, i32, i32, i32*, i32*, i32)* }
%struct.nfc_hci_dev = type { i32 }
%struct.nfc_llc_engine = type { %struct.TYPE_2__* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfc_llc* @nfc_llc_allocate(i8* %0, %struct.nfc_hci_dev* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfc_llc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfc_hci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfc_llc_engine*, align 8
  %17 = alloca %struct.nfc_llc*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.nfc_hci_dev* %1, %struct.nfc_hci_dev** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call %struct.nfc_llc_engine* @nfc_llc_name_to_engine(i8* %18)
  store %struct.nfc_llc_engine* %19, %struct.nfc_llc_engine** %16, align 8
  %20 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %16, align 8
  %21 = icmp eq %struct.nfc_llc_engine* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store %struct.nfc_llc* null, %struct.nfc_llc** %8, align 8
  br label %62

23:                                               ; preds = %7
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nfc_llc* @kzalloc(i32 24, i32 %24)
  store %struct.nfc_llc* %25, %struct.nfc_llc** %17, align 8
  %26 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %27 = icmp eq %struct.nfc_llc* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.nfc_llc* null, %struct.nfc_llc** %8, align 8
  br label %62

29:                                               ; preds = %23
  %30 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %16, align 8
  %31 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32* (%struct.nfc_hci_dev*, i32, i32, i32, i32, i32*, i32*, i32)*, i32* (%struct.nfc_hci_dev*, i32, i32, i32, i32, i32*, i32*, i32)** %33, align 8
  %35 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %41 = getelementptr inbounds %struct.nfc_llc, %struct.nfc_llc* %40, i32 0, i32 3
  %42 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %43 = getelementptr inbounds %struct.nfc_llc, %struct.nfc_llc* %42, i32 0, i32 2
  %44 = load i32, i32* %15, align 4
  %45 = call i32* %34(%struct.nfc_hci_dev* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %41, i32* %43, i32 %44)
  %46 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %47 = getelementptr inbounds %struct.nfc_llc, %struct.nfc_llc* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %49 = getelementptr inbounds %struct.nfc_llc, %struct.nfc_llc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %29
  %53 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %54 = call i32 @kfree(%struct.nfc_llc* %53)
  store %struct.nfc_llc* null, %struct.nfc_llc** %8, align 8
  br label %62

55:                                               ; preds = %29
  %56 = load %struct.nfc_llc_engine*, %struct.nfc_llc_engine** %16, align 8
  %57 = getelementptr inbounds %struct.nfc_llc_engine, %struct.nfc_llc_engine* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  %60 = getelementptr inbounds %struct.nfc_llc, %struct.nfc_llc* %59, i32 0, i32 0
  store %struct.TYPE_2__* %58, %struct.TYPE_2__** %60, align 8
  %61 = load %struct.nfc_llc*, %struct.nfc_llc** %17, align 8
  store %struct.nfc_llc* %61, %struct.nfc_llc** %8, align 8
  br label %62

62:                                               ; preds = %55, %52, %28, %22
  %63 = load %struct.nfc_llc*, %struct.nfc_llc** %8, align 8
  ret %struct.nfc_llc* %63
}

declare dso_local %struct.nfc_llc_engine* @nfc_llc_name_to_engine(i8*) #1

declare dso_local %struct.nfc_llc* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nfc_llc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
