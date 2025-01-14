; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_send_dsp_command.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_send_dsp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_hw_obj = type { i32, %struct.bus_master_interface* }
%struct.bus_master_interface = type { i32 }

@C6205_HDCR_DSPINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_hw_obj*, i32)* @send_dsp_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_dsp_command(%struct.hpi_hw_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.hpi_hw_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bus_master_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.hpi_hw_obj* %0, %struct.hpi_hw_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %8 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %7, i32 0, i32 1
  %9 = load %struct.bus_master_interface*, %struct.bus_master_interface** %8, align 8
  store %struct.bus_master_interface* %9, %struct.bus_master_interface** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.bus_master_interface*, %struct.bus_master_interface** %5, align 8
  %12 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @wmb()
  %14 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %15 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ioread32(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @C6205_HDCR_DSPINT, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %24 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iowrite32(i32 %22, i32 %25)
  %27 = load i64, i64* @C6205_HDCR_DSPINT, align 8
  %28 = trunc i64 %27 to i32
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %34 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iowrite32(i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
