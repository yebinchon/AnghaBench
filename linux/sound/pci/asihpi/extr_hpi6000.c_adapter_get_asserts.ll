; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_adapter_get_asserts.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_adapter_get_asserts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i32 }
%struct.hpi_message = type { i32 }
%struct.hpi_response = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i64, i64 }

@gw_pci_read_asserts = common dso_local global i32 0, align 4
@gw_pci_write_asserts = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"PCI2040 error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @adapter_get_asserts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_get_asserts(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %7 = load i32, i32* @gw_pci_read_asserts, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* @gw_pci_write_asserts, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %9, %3
  %13 = load i32, i32* @gw_pci_read_asserts, align 4
  %14 = mul nsw i32 %13, 100
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @gw_pci_write_asserts, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %19 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store i64 %17, i64* %22, align 8
  %23 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %24 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %29 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %34 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %39 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcpy(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %46 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  store i32 0, i32* @gw_pci_read_asserts, align 4
  store i64 0, i64* @gw_pci_write_asserts, align 8
  %50 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %51 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %57

52:                                               ; preds = %9
  %53 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %54 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %55 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %56 = call i32 @hw_message(%struct.hpi_adapter_obj* %53, %struct.hpi_message* %54, %struct.hpi_response* %55)
  br label %57

57:                                               ; preds = %52, %12
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
