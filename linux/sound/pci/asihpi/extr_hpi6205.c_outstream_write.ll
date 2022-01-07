; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i64*, i32*, i32*, %struct.bus_master_interface* }
%struct.bus_master_interface = type { %struct.hpi_hostbuffer_status* }
%struct.hpi_hostbuffer_status = type { i32, i32 }
%struct.hpi_message = type { i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.hpi_response = type { i64 }

@HPI_ERROR_INVALID_DATASIZE = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_OPERATION = common dso_local global i64 0, align 8
@HPI_OSTREAM_SET_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @outstream_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outstream_write(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
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
  %14 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %15 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %16 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %15, i32 0, i32 0
  %17 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %16, align 8
  store %struct.hpi_hw_obj* %17, %struct.hpi_hw_obj** %7, align 8
  %18 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %19 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %18, i32 0, i32 3
  %20 = load %struct.bus_master_interface*, %struct.bus_master_interface** %19, align 8
  store %struct.bus_master_interface* %20, %struct.bus_master_interface** %8, align 8
  %21 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %22 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %25 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %32 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %33 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %34 = call i32 @hw_message(%struct.hpi_adapter_obj* %31, %struct.hpi_message* %32, %struct.hpi_response* %33)
  br label %208

35:                                               ; preds = %3
  %36 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %37 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %38 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %41 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @hpi_init_response(%struct.hpi_response* %36, i32 %39, i32 %42, i32 0)
  %44 = load %struct.bus_master_interface*, %struct.bus_master_interface** %8, align 8
  %45 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %44, i32 0, i32 0
  %46 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %45, align 8
  %47 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %48 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %46, i64 %49
  store %struct.hpi_hostbuffer_status* %50, %struct.hpi_hostbuffer_status** %9, align 8
  %51 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %52 = call i64 @outstream_get_space_available(%struct.hpi_hostbuffer_status* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %55 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %53, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %35
  %63 = load i64, i64* @HPI_ERROR_INVALID_DATASIZE, align 8
  %64 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %65 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %208

66:                                               ; preds = %35
  %67 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %68 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %157

75:                                               ; preds = %66
  %76 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %77 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %80 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = call i64 @hpios_locked_mem_valid(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %157

85:                                               ; preds = %75
  %86 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %87 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %13, align 8
  %94 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %95 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %98 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = bitcast i32** %11 to i8*
  %102 = call i64 @hpios_locked_mem_get_virt_addr(i32* %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %85
  %105 = load i64, i64* @HPI_ERROR_INVALID_OPERATION, align 8
  %106 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %107 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %208

108:                                              ; preds = %85
  %109 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %110 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %117 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %120 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %123 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = and i32 %121, %125
  %127 = sub nsw i32 %118, %126
  %128 = call i64 @min(i64 %115, i32 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %131 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %134 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %132, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %129, i64 %138
  %140 = load i32*, i32** %13, align 8
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @memcpy(i32* %139, i32* %140, i64 %141)
  %143 = load i32*, i32** %11, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %148 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %12, align 8
  %155 = sub nsw i64 %153, %154
  %156 = call i32 @memcpy(i32* %143, i32* %146, i64 %155)
  br label %157

157:                                              ; preds = %108, %75, %66
  %158 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %159 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %162 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i64, i64* %160, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %157
  %168 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %169 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %14, align 4
  %171 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %172 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %175 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* @HPI_OSTREAM_SET_FORMAT, align 4
  %179 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %180 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %182 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %183 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %184 = call i32 @hw_message(%struct.hpi_adapter_obj* %181, %struct.hpi_message* %182, %struct.hpi_response* %183)
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %187 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %189 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %167
  br label %208

193:                                              ; preds = %167
  br label %194

194:                                              ; preds = %193, %157
  %195 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %196 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %9, align 8
  %203 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %201
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  br label %208

208:                                              ; preds = %194, %192, %104, %62, %30
  ret void
}

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i64 @outstream_get_space_available(%struct.hpi_hostbuffer_status*) #1

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
