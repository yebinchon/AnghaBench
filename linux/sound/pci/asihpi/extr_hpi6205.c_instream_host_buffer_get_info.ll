; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_host_buffer_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_host_buffer_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32*, %struct.bus_master_interface* }
%struct.bus_master_interface = type { %struct.hpi_hostbuffer_status* }
%struct.hpi_hostbuffer_status = type { i32 }
%struct.hpi_message = type { i64 }
%struct.hpi_response = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.hpi_hostbuffer_status*, i32* }

@HPI_ERROR_INVALID_OPERATION = common dso_local global i32 0, align 4
@HPI_OBJ_ISTREAM = common dso_local global i32 0, align 4
@HPI_ISTREAM_HOSTBUFFER_GET_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @instream_host_buffer_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instream_host_buffer_get_info(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  %8 = alloca %struct.bus_master_interface*, align 8
  %9 = alloca %struct.hpi_hostbuffer_status*, align 8
  %10 = alloca i32*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %11 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %12 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %11, i32 0, i32 0
  %13 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %12, align 8
  store %struct.hpi_hw_obj* %13, %struct.hpi_hw_obj** %7, align 8
  %14 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %15 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %14, i32 0, i32 1
  %16 = load %struct.bus_master_interface*, %struct.bus_master_interface** %15, align 8
  store %struct.bus_master_interface* %16, %struct.bus_master_interface** %8, align 8
  %17 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %18 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i64 @hpios_locked_mem_valid(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %3
  %27 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %28 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %31 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = bitcast i32** %10 to i8*
  %35 = call i64 @hpios_locked_mem_get_virt_addr(i32* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @HPI_ERROR_INVALID_OPERATION, align 4
  %39 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %40 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %73

41:                                               ; preds = %26
  %42 = load %struct.bus_master_interface*, %struct.bus_master_interface** %8, align 8
  %43 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %42, i32 0, i32 0
  %44 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %43, align 8
  %45 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %46 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %44, i64 %47
  store %struct.hpi_hostbuffer_status* %48, %struct.hpi_hostbuffer_status** %9, align 8
  %49 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %50 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %51 = load i32, i32* @HPI_ISTREAM_HOSTBUFFER_GET_INFO, align 4
  %52 = call i32 @hpi_init_response(%struct.hpi_response* %49, i32 %50, i32 %51, i32 0)
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %55 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32* %53, i32** %59, align 8
  %60 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %61 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %62 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.hpi_hostbuffer_status* %60, %struct.hpi_hostbuffer_status** %66, align 8
  br label %73

67:                                               ; preds = %3
  %68 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %69 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %70 = load i32, i32* @HPI_ISTREAM_HOSTBUFFER_GET_INFO, align 4
  %71 = load i32, i32* @HPI_ERROR_INVALID_OPERATION, align 4
  %72 = call i32 @hpi_init_response(%struct.hpi_response* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %37, %67, %41
  ret void
}

declare dso_local i64 @hpios_locked_mem_valid(i32*) #1

declare dso_local i64 @hpios_locked_mem_get_virt_addr(i32*, i8*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
