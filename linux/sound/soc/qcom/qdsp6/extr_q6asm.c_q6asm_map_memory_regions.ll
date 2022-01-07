; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_map_memory_regions.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_map_memory_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.audio_buffer* }
%struct.audio_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Buffer already allocated\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Memory_map_regions failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6asm_map_memory_regions(i32 %0, %struct.audio_client* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.audio_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.audio_buffer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.audio_client* %1, %struct.audio_client** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %17 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %16, i32 0, i32 2
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %21 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.audio_buffer*, %struct.audio_buffer** %26, align 8
  %28 = icmp ne %struct.audio_buffer* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %31 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %35 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %34, i32 0, i32 2
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  store i32 0, i32* %6, align 4
  br label %138

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 16, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.audio_buffer* @kzalloc(i32 %42, i32 %43)
  store %struct.audio_buffer* %44, %struct.audio_buffer** %12, align 8
  %45 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %46 = icmp ne %struct.audio_buffer* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %38
  %48 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %49 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %48, i32 0, i32 2
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %138

54:                                               ; preds = %38
  %55 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %56 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %57 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store %struct.audio_buffer* %55, %struct.audio_buffer** %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %65 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %64, i64 0
  %66 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %69 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %68, i64 0
  %70 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %100, %54
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %80 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %79, i64 0
  %81 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = mul i64 %84, %85
  %87 = add i64 %82, %86
  %88 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %88, i64 %90
  %92 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %91, i32 0, i32 1
  store i64 %87, i64* %92, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.audio_buffer*, %struct.audio_buffer** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %94, i64 %96
  %98 = getelementptr inbounds %struct.audio_buffer, %struct.audio_buffer* %97, i32 0, i32 0
  store i64 %93, i64* %98, align 8
  br label %99

99:                                               ; preds = %78, %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %71

103:                                              ; preds = %71
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %106 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %104, i32* %111, align 8
  %112 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %113 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %112, i32 0, i32 2
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @__q6asm_memory_map_regions(%struct.audio_client* %116, i32 %117, i64 %118, i32 %119, i32 1)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %103
  %124 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %125 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %129 = load %struct.audio_client*, %struct.audio_client** %8, align 8
  %130 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = call i32 @q6asm_audio_client_free_buf(%struct.audio_client* %128, %struct.TYPE_2__* %134)
  br label %136

136:                                              ; preds = %123, %103
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %47, %29
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.audio_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @__q6asm_memory_map_regions(%struct.audio_client*, i32, i64, i32, i32) #1

declare dso_local i32 @q6asm_audio_client_free_buf(%struct.audio_client*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
