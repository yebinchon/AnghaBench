; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_subsys_get_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_subsys_get_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64 }
%struct.hpi_response = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@HPI_OBJ_SUBSYSTEM = common dso_local global i32 0, align 4
@HPI_SUBSYS_GET_ADAPTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_subsys_get_adapter(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.hpi_message, align 8
  %8 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @HPI_OBJ_SUBSYSTEM, align 4
  %10 = load i32, i32* @HPI_SUBSYS_GET_ADAPTER, align 4
  %11 = call i32 @hpi_init_message_response(%struct.hpi_message* %7, %struct.hpi_response* %8, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = call i32 @hpi_send_recv(%struct.hpi_message* %7, %struct.hpi_response* %8)
  %16 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  ret i64 %28
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
