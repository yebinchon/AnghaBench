; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32*, i32*, %struct.bus_master_interface* }
%struct.bus_master_interface = type { %struct.hpi_hostbuffer_status* }
%struct.hpi_hostbuffer_status = type { i32, i32 }
%struct.hpi_message = type { i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.hpi_response = type { i32 }

@HPI_ERROR_INVALID_DATASIZE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @instream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instream_read(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  %8 = alloca %struct.bus_master_interface*, align 8
  %9 = alloca %struct.hpi_hostbuffer_status*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %14 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %15 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %14, i32 0, i32 0
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %15, align 8
  store %struct.hpi_hw_obj* %16, %struct.hpi_hw_obj** %7, align 8
  %17 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %18 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %17, i32 0, i32 2
  %19 = load %struct.bus_master_interface*, %struct.bus_master_interface** %18, align 8
  store %struct.bus_master_interface* %19, %struct.bus_master_interface** %8, align 8
  %20 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %13, align 8
  %28 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %29 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %32 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %3
  %38 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %39 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %40 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %41 = call i32 @hw_message(%struct.hpi_adapter_obj* %38, %struct.hpi_message* %39, %struct.hpi_response* %40)
  br label %161

42:                                               ; preds = %3
  %43 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %44 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %45 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %48 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hpi_init_response(%struct.hpi_response* %43, i32 %46, i32 %49, i32 0)
  %51 = load %struct.bus_master_interface*, %struct.bus_master_interface** %8, align 8
  %52 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %51, i32 0, i32 0
  %53 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %52, align 8
  %54 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %55 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %53, i64 %56
  store %struct.hpi_hostbuffer_status* %57, %struct.hpi_hostbuffer_status** %9, align 8
  %58 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %59 = call i64 @instream_get_bytes_available(%struct.hpi_hostbuffer_status* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %62 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %60, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %42
  %70 = load i32, i32* @HPI_ERROR_INVALID_DATASIZE, align 4
  %71 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %72 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %161

73:                                               ; preds = %42
  %74 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %75 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %78 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = call i64 @hpios_locked_mem_valid(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %147

83:                                               ; preds = %73
  %84 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %85 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %88 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = bitcast i32** %11 to i8*
  %92 = call i64 @hpios_locked_mem_get_virt_addr(i32* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = load i32, i32* @HPI_ERROR_INVALID_OPERATION, align 4
  %96 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %97 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %161

98:                                               ; preds = %83
  %99 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %100 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %107 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %110 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %113 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %111, %115
  %117 = sub nsw i32 %108, %116
  %118 = call i64 @min(i64 %105, i32 %117)
  store i64 %118, i64* %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %122 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %125 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = and i32 %123, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %120, i64 %129
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @memcpy(i32* %119, i32* %130, i64 %131)
  %133 = load i32*, i32** %13, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32*, i32** %11, align 8
  %137 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %138 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = sub nsw i64 %143, %144
  %146 = call i32 @memcpy(i32* %135, i32* %136, i64 %145)
  br label %147

147:                                              ; preds = %98, %73
  %148 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %149 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %156 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  br label %161

161:                                              ; preds = %147, %94, %69, %37
  ret void
}

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i64 @instream_get_bytes_available(%struct.hpi_hostbuffer_status*) #1

declare dso_local i64 @hpios_locked_mem_valid(i32*) #1

declare dso_local i64 @hpios_locked_mem_get_virt_addr(i32*, i8*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
