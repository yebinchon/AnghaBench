; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_host_buffer_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_instream_host_buffer_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.TYPE_10__, %struct.hpi_hw_obj* }
%struct.TYPE_10__ = type { i32 }
%struct.hpi_hw_obj = type { i32*, i32*, %struct.bus_master_interface* }
%struct.bus_master_interface = type { %struct.hpi_hostbuffer_status* }
%struct.hpi_hostbuffer_status = type { i32, i64, i64, i64, i32, i64 }
%struct.hpi_message = type { i64, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.hpi_response = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@HPI_BUFFER_CMD_EXTERNAL = common dso_local global i64 0, align 8
@HPI_BUFFER_CMD_INTERNAL_ALLOC = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_DATASIZE = common dso_local global i8* null, align 8
@HPI_ERROR_MEMORY_ALLOC = common dso_local global i8* null, align 8
@HPI_BUFFER_CMD_INTERNAL_GRANTADAPTER = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Buffer size must be 2^N not %d\0A\00", align 1
@HPI_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @instream_host_buffer_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instream_host_buffer_allocate(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hpi_hw_obj*, align 8
  %10 = alloca %struct.bus_master_interface*, align 8
  %11 = alloca %struct.hpi_hostbuffer_status*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %20 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %19, i32 0, i32 1
  %21 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %20, align 8
  store %struct.hpi_hw_obj* %21, %struct.hpi_hw_obj** %9, align 8
  %22 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %23 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %22, i32 0, i32 2
  %24 = load %struct.bus_master_interface*, %struct.bus_master_interface** %23, align 8
  store %struct.bus_master_interface* %24, %struct.bus_master_interface** %10, align 8
  %25 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %26 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %27 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %30 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @hpi_init_response(%struct.hpi_response* %25, i32 %28, i32 %31, i32 0)
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @HPI_BUFFER_CMD_EXTERNAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @HPI_BUFFER_CMD_INTERNAL_ALLOC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %201

40:                                               ; preds = %36, %3
  %41 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %42 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @roundup_pow_of_two(i32 %47)
  %49 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %50 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i32 %48, i32* %54, align 8
  %55 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %56 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %59 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %64 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %62, i32* %68, align 8
  %69 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %70 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %77 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 4
  %82 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %83 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %86 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %91 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %89, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %40
  br label %320

99:                                               ; preds = %40
  %100 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %101 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %104 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = call i64 @hpios_locked_mem_valid(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %99
  %110 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %111 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %114 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = call i32 @hpios_locked_mem_free(i32* %116)
  br label %118

118:                                              ; preds = %109, %99
  %119 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %120 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %123 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %127 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %134 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @hpios_locked_mem_alloc(i32* %125, i32 %132, i32 %136)
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %7, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %118
  %141 = load i8*, i8** @HPI_ERROR_INVALID_DATASIZE, align 8
  %142 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %143 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %145 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %148 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 0, i32* %150, align 4
  br label %320

151:                                              ; preds = %118
  %152 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %153 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %156 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %160 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = call i64 @hpios_locked_mem_get_phys_addr(i32* %158, i32* %164)
  store i64 %165, i64* %7, align 8
  %166 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %167 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %174 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  store i32 %172, i32* %178, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %151
  %182 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %183 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %186 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = call i32 @hpios_locked_mem_free(i32* %188)
  %190 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %191 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %194 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 0, i32* %196, align 4
  %197 = load i8*, i8** @HPI_ERROR_MEMORY_ALLOC, align 8
  %198 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %199 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %198, i32 0, i32 0
  store i8* %197, i8** %199, align 8
  br label %320

200:                                              ; preds = %151
  br label %201

201:                                              ; preds = %200, %36
  %202 = load i64, i64* %8, align 8
  %203 = load i64, i64* @HPI_BUFFER_CMD_EXTERNAL, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %8, align 8
  %207 = load i64, i64* @HPI_BUFFER_CMD_INTERNAL_GRANTADAPTER, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %320

209:                                              ; preds = %205, %201
  %210 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %211 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %218 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 1
  %225 = and i32 %216, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %209
  %228 = load i32, i32* @ERROR, align 4
  %229 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %230 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @HPI_DEBUG_LOG(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %235)
  %237 = load i8*, i8** @HPI_ERROR_INVALID_DATASIZE, align 8
  %238 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %239 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  br label %320

240:                                              ; preds = %209
  %241 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %242 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %249 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %252 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %247, i32* %254, align 4
  %255 = load %struct.bus_master_interface*, %struct.bus_master_interface** %10, align 8
  %256 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %255, i32 0, i32 0
  %257 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %256, align 8
  %258 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %259 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %257, i64 %260
  store %struct.hpi_hostbuffer_status* %261, %struct.hpi_hostbuffer_status** %11, align 8
  %262 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %263 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %262, i32 0, i32 5
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* @HPI_STATE_STOPPED, align 4
  %265 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %266 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %268 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  %269 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %270 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %273 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %272, i32 0, i32 3
  store i64 %271, i64* %273, align 8
  %274 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %275 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %282 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %11, align 8
  %284 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %283, i32 0, i32 1
  store i64 0, i64* %284, align 8
  %285 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %286 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %287 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %288 = call i32 @hw_message(%struct.hpi_adapter_obj* %285, %struct.hpi_message* %286, %struct.hpi_response* %287)
  %289 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %290 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %319

293:                                              ; preds = %240
  %294 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %295 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %298 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = call i64 @hpios_locked_mem_valid(i32* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %319

303:                                              ; preds = %293
  %304 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %305 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %308 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = call i32 @hpios_locked_mem_free(i32* %310)
  %312 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %313 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %316 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  store i32 0, i32* %318, align 4
  br label %319

319:                                              ; preds = %303, %293, %240
  br label %320

320:                                              ; preds = %98, %140, %181, %227, %319, %205
  ret void
}

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @hpios_locked_mem_valid(i32*) #1

declare dso_local i32 @hpios_locked_mem_free(i32*) #1

declare dso_local i64 @hpios_locked_mem_alloc(i32*, i32, i32) #1

declare dso_local i64 @hpios_locked_mem_get_phys_addr(i32*, i32*) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32) #1

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
