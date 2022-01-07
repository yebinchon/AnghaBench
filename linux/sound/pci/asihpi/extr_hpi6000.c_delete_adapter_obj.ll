; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_delete_adapter_obj.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_delete_adapter_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i64, %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i64, i32 }

@HPI_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*)* @delete_adapter_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_adapter_obj(%struct.hpi_adapter_obj* %0) #0 {
  %2 = alloca %struct.hpi_adapter_obj*, align 8
  %3 = alloca %struct.hpi_hw_obj*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %2, align 8
  %4 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %5 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %4, i32 0, i32 1
  %6 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %5, align 8
  store %struct.hpi_hw_obj* %6, %struct.hpi_hw_obj** %3, align 8
  %7 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %8 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %13 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @hpi_free_control_cache(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %18 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HPI_RESET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite32(i32 196623, i64 %21)
  %23 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %24 = call i32 @kfree(%struct.hpi_hw_obj* %23)
  ret void
}

declare dso_local i32 @hpi_free_control_cache(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @kfree(%struct.hpi_hw_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
