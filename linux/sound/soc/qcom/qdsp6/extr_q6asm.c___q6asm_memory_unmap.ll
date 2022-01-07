; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_memory_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_memory_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.avs_cmd_shared_mem_unmap_regions = type { i64 }
%struct.q6asm = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid mem handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_SEQ_CMD_HDR_FIELD = common dso_local global i32 0, align 4
@ASM_CMD_SHARED_MEM_UNMAP_REGIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_client*, i32, i32)* @__q6asm_memory_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__q6asm_memory_unmap(%struct.audio_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.avs_cmd_shared_mem_unmap_regions*, align 8
  %9 = alloca %struct.q6asm*, align 8
  %10 = alloca %struct.apr_pkt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.audio_client* %0, %struct.audio_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %15 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.q6asm* @dev_get_drvdata(i32 %18)
  store %struct.q6asm* %19, %struct.q6asm** %9, align 8
  %20 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %21 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %31 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @dev_err(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %114

36:                                               ; preds = %3
  %37 = load i32, i32* @APR_HDR_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 %41, i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %114

49:                                               ; preds = %36
  %50 = load i8*, i8** %13, align 8
  %51 = bitcast i8* %50 to %struct.apr_pkt*
  store %struct.apr_pkt* %51, %struct.apr_pkt** %10, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i32, i32* @APR_HDR_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to %struct.avs_cmd_shared_mem_unmap_regions*
  store %struct.avs_cmd_shared_mem_unmap_regions* %56, %struct.avs_cmd_shared_mem_unmap_regions** %8, align 8
  %57 = load i32, i32* @APR_SEQ_CMD_HDR_FIELD, align 4
  %58 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %59 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 8
  %61 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %62 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %65 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %69 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %72 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %78 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @ASM_CMD_SHARED_MEM_UNMAP_REGIONS, align 4
  %81 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %82 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %85 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.avs_cmd_shared_mem_unmap_regions*, %struct.avs_cmd_shared_mem_unmap_regions** %8, align 8
  %93 = getelementptr inbounds %struct.avs_cmd_shared_mem_unmap_regions, %struct.avs_cmd_shared_mem_unmap_regions* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.q6asm*, %struct.q6asm** %9, align 8
  %95 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %96 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %97 = call i32 @q6asm_apr_send_session_pkt(%struct.q6asm* %94, %struct.audio_client* %95, %struct.apr_pkt* %96, i32 0)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %49
  %101 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %102 = call i32 @kfree(%struct.apr_pkt* %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %114

104:                                              ; preds = %49
  %105 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %106 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.apr_pkt*, %struct.apr_pkt** %10, align 8
  %113 = call i32 @kfree(%struct.apr_pkt* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %104, %100, %46, %29
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.q6asm* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_apr_send_session_pkt(%struct.q6asm*, %struct.audio_client*, %struct.apr_pkt*, i32) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
