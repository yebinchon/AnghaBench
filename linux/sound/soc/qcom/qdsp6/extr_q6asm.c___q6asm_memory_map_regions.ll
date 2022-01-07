; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_memory_map_regions.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_memory_map_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32, %struct.audio_port_data*, %struct.TYPE_3__* }
%struct.audio_port_data = type { %struct.audio_buffer* }
%struct.audio_buffer = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.avs_cmd_shared_mem_map_regions = type { i32, i32, i32 }
%struct.avs_shared_map_region_payload = type { i32, i32, i32 }
%struct.q6asm = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_SEQ_CMD_HDR_FIELD = common dso_local global i32 0, align 4
@ASM_CMD_SHARED_MEM_MAP_REGIONS = common dso_local global i32 0, align 4
@ADSP_MEMORY_MAP_SHMEM8_4K_POOL = common dso_local global i32 0, align 4
@ASM_CMDRSP_SHARED_MEM_MAP_REGIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_client*, i32, i64, i32, i32)* @__q6asm_memory_map_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__q6asm_memory_map_regions(%struct.audio_client* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.avs_cmd_shared_mem_map_regions*, align 8
  %13 = alloca %struct.avs_shared_map_region_payload*, align 8
  %14 = alloca %struct.q6asm*, align 8
  %15 = alloca %struct.audio_port_data*, align 8
  %16 = alloca %struct.audio_buffer*, align 8
  %17 = alloca %struct.apr_pkt*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.audio_client* %0, %struct.audio_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.avs_cmd_shared_mem_map_regions* null, %struct.avs_cmd_shared_mem_map_regions** %12, align 8
  store %struct.avs_shared_map_region_payload* null, %struct.avs_shared_map_region_payload** %13, align 8
  %25 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %26 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.q6asm* @dev_get_drvdata(i32 %29)
  store %struct.q6asm* %30, %struct.q6asm** %14, align 8
  store %struct.audio_port_data* null, %struct.audio_port_data** %15, align 8
  store %struct.audio_buffer* null, %struct.audio_buffer** %16, align 8
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  store i32 1, i32* %20, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %21, align 4
  br label %43

39:                                               ; preds = %5
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @ALIGN(i32 %44, i32 4096)
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* @APR_HDR_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 12
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 12, %50
  %52 = add i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %24, align 4
  %54 = load i32, i32* %24, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 %54, i32 %55)
  store i8* %56, i8** %18, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %165

62:                                               ; preds = %43
  %63 = load i8*, i8** %18, align 8
  %64 = bitcast i8* %63 to %struct.apr_pkt*
  store %struct.apr_pkt* %64, %struct.apr_pkt** %17, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i32, i32* @APR_HDR_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = bitcast i8* %68 to %struct.avs_cmd_shared_mem_map_regions*
  store %struct.avs_cmd_shared_mem_map_regions* %69, %struct.avs_cmd_shared_mem_map_regions** %12, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* @APR_HDR_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = getelementptr i8, i8* %73, i64 12
  %75 = bitcast i8* %74 to %struct.avs_shared_map_region_payload*
  store %struct.avs_shared_map_region_payload* %75, %struct.avs_shared_map_region_payload** %13, align 8
  %76 = load i32, i32* @APR_SEQ_CMD_HDR_FIELD, align 4
  %77 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %78 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  store i32 %76, i32* %79, align 8
  %80 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %81 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %84 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %24, align 4
  %87 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %88 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %91 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 8
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %97 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @ASM_CMD_SHARED_MEM_MAP_REGIONS, align 4
  %100 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %101 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @ADSP_MEMORY_MAP_SHMEM8_4K_POOL, align 4
  %104 = load %struct.avs_cmd_shared_mem_map_regions*, %struct.avs_cmd_shared_mem_map_regions** %12, align 8
  %105 = getelementptr inbounds %struct.avs_cmd_shared_mem_map_regions, %struct.avs_cmd_shared_mem_map_regions* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load %struct.avs_cmd_shared_mem_map_regions*, %struct.avs_cmd_shared_mem_map_regions** %12, align 8
  %108 = getelementptr inbounds %struct.avs_cmd_shared_mem_map_regions, %struct.avs_cmd_shared_mem_map_regions* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.avs_cmd_shared_mem_map_regions*, %struct.avs_cmd_shared_mem_map_regions** %12, align 8
  %110 = getelementptr inbounds %struct.avs_cmd_shared_mem_map_regions, %struct.avs_cmd_shared_mem_map_regions* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %112 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %111, i32 0, i32 1
  %113 = load i64, i64* %19, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %116 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %115, i32 0, i32 2
  %117 = load %struct.audio_port_data*, %struct.audio_port_data** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %117, i64 %119
  store %struct.audio_port_data* %120, %struct.audio_port_data** %15, align 8
  store i32 0, i32* %23, align 4
  br label %121

121:                                              ; preds = %149, %62
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %20, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = load %struct.audio_port_data*, %struct.audio_port_data** %15, align 8
  %127 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %126, i32 0, i32 0
  %128 = load %struct.audio_buffer*, %struct.audio_buffer** %127, align 8
  %129 = load i32, i32* %23, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %128, i64 %130
  store %struct.audio_buffer* %131, %struct.audio_buffer** %16, align 8
  %132 = load %struct.audio_buffer*, %struct.audio_buffer** %16, align 8
  %133 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @lower_32_bits(i32 %134)
  %136 = load %struct.avs_shared_map_region_payload*, %struct.avs_shared_map_region_payload** %13, align 8
  %137 = getelementptr inbounds %struct.avs_shared_map_region_payload, %struct.avs_shared_map_region_payload* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.audio_buffer*, %struct.audio_buffer** %16, align 8
  %139 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @upper_32_bits(i32 %140)
  %142 = load %struct.avs_shared_map_region_payload*, %struct.avs_shared_map_region_payload** %13, align 8
  %143 = getelementptr inbounds %struct.avs_shared_map_region_payload, %struct.avs_shared_map_region_payload* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %21, align 4
  %145 = load %struct.avs_shared_map_region_payload*, %struct.avs_shared_map_region_payload** %13, align 8
  %146 = getelementptr inbounds %struct.avs_shared_map_region_payload, %struct.avs_shared_map_region_payload* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.avs_shared_map_region_payload*, %struct.avs_shared_map_region_payload** %13, align 8
  %148 = getelementptr inbounds %struct.avs_shared_map_region_payload, %struct.avs_shared_map_region_payload* %147, i32 1
  store %struct.avs_shared_map_region_payload* %148, %struct.avs_shared_map_region_payload** %13, align 8
  br label %149

149:                                              ; preds = %125
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %23, align 4
  br label %121

152:                                              ; preds = %121
  %153 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %154 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %153, i32 0, i32 1
  %155 = load i64, i64* %19, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load %struct.q6asm*, %struct.q6asm** %14, align 8
  %158 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %159 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %160 = load i32, i32* @ASM_CMDRSP_SHARED_MEM_MAP_REGIONS, align 4
  %161 = call i32 @q6asm_apr_send_session_pkt(%struct.q6asm* %157, %struct.audio_client* %158, %struct.apr_pkt* %159, i32 %160)
  store i32 %161, i32* %22, align 4
  %162 = load %struct.apr_pkt*, %struct.apr_pkt** %17, align 8
  %163 = call i32 @kfree(%struct.apr_pkt* %162)
  %164 = load i32, i32* %22, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %152, %59
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local %struct.q6asm* @dev_get_drvdata(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @q6asm_apr_send_session_pkt(%struct.q6asm*, %struct.audio_client*, %struct.apr_pkt*, i32) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
