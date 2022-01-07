; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_adapter_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_adapter_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i32 }
%struct.hpi_response = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"adapter_close\0A\00", align 1
@HPI_OBJ_ADAPTER = common dso_local global i32 0, align 4
@HPI_ADAPTER_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*)* @adapter_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_close(%struct.hpi_message* %0, %struct.hpi_response* %1) #0 {
  %3 = alloca %struct.hpi_message*, align 8
  %4 = alloca %struct.hpi_response*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %3, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %4, align 8
  %5 = load i32, i32* @VERBOSE, align 4
  %6 = call i32 @HPI_DEBUG_LOG(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %8 = load i32, i32* @HPI_OBJ_ADAPTER, align 4
  %9 = load i32, i32* @HPI_ADAPTER_CLOSE, align 4
  %10 = call i32 @hpi_init_response(%struct.hpi_response* %7, i32 %8, i32 %9, i32 0)
  ret void
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
