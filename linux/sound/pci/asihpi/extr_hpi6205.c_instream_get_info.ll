; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32*, %struct.bus_master_interface* }
%struct.bus_master_interface = type { %struct.hpi_hostbuffer_status* }
%struct.hpi_hostbuffer_status = type { i32, i32, i32, i64 }
%struct.hpi_message = type { i64, i32, i32 }
%struct.hpi_response = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @instream_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instream_get_info(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  %8 = alloca %struct.bus_master_interface*, align 8
  %9 = alloca %struct.hpi_hostbuffer_status*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %10 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %11 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %10, i32 0, i32 0
  %12 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %11, align 8
  store %struct.hpi_hw_obj* %12, %struct.hpi_hw_obj** %7, align 8
  %13 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %14 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %13, i32 0, i32 1
  %15 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  store %struct.bus_master_interface* %15, %struct.bus_master_interface** %8, align 8
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %17 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %27 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %28 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %29 = call i32 @hw_message(%struct.hpi_adapter_obj* %26, %struct.hpi_message* %27, %struct.hpi_response* %28)
  br label %90

30:                                               ; preds = %3
  %31 = load %struct.bus_master_interface*, %struct.bus_master_interface** %8, align 8
  %32 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %31, i32 0, i32 0
  %33 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %32, align 8
  %34 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %35 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %33, i64 %36
  store %struct.hpi_hostbuffer_status* %37, %struct.hpi_hostbuffer_status** %9, align 8
  %38 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %39 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %40 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %43 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @hpi_init_response(%struct.hpi_response* %38, i32 %41, i32 %44, i32 0)
  %46 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %47 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %50 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i64 %48, i64* %54, align 8
  %55 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %56 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %59 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store i32 %57, i32* %63, align 4
  %64 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %65 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %68 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %66, i32* %72, align 8
  %73 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %74 = call i32 @instream_get_bytes_available(%struct.hpi_hostbuffer_status* %73)
  %75 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %76 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %74, i32* %80, align 4
  %81 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %82 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %85 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 8
  br label %90

90:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i32 @instream_get_bytes_available(%struct.hpi_hostbuffer_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
