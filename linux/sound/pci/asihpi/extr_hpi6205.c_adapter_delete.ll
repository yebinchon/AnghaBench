; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_adapter_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_adapter_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32 }
%struct.hpi_message = type { i32 }
%struct.hpi_response = type { i64 }

@HPI_ERROR_INVALID_OBJ_INDEX = common dso_local global i64 0, align 8
@C6205_BAR0_TIMER1_CTL = common dso_local global i32 0, align 4
@C6205_HDCR_WARMRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @adapter_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_delete(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %8 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %9 = icmp ne %struct.hpi_adapter_obj* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* @HPI_ERROR_INVALID_OBJ_INDEX, align 8
  %12 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %13 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %32

14:                                               ; preds = %3
  %15 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %16 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %15, i32 0, i32 0
  %17 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %16, align 8
  store %struct.hpi_hw_obj* %17, %struct.hpi_hw_obj** %7, align 8
  %18 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %19 = load i32, i32* @C6205_BAR0_TIMER1_CTL, align 4
  %20 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %18, i32 0, i32 %19, i32 0)
  %21 = load i32, i32* @C6205_HDCR_WARMRESET, align 4
  %22 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %23 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iowrite32(i32 %21, i32 %24)
  %26 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %27 = call i32 @delete_adapter_obj(%struct.hpi_adapter_obj* %26)
  %28 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %29 = call i32 @hpi_delete_adapter(%struct.hpi_adapter_obj* %28)
  %30 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %31 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj*, i32, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @delete_adapter_obj(%struct.hpi_adapter_obj*) #1

declare dso_local i32 @hpi_delete_adapter(%struct.hpi_adapter_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
