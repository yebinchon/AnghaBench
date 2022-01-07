; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_packet.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32 }
%struct.isight = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.audio_payload* }
%struct.audio_payload = type { i64, i32, i32, i32 }

@audio_packet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"queueing error: %d\0A\00", align 1
@QUEUE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* @isight_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isight_packet(%struct.fw_iso_context* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.fw_iso_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.isight*, align 8
  %12 = alloca %struct.audio_payload*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.isight*
  store %struct.isight* %19, %struct.isight** %11, align 8
  %20 = load %struct.isight*, %struct.isight** %11, align 8
  %21 = getelementptr inbounds %struct.isight, %struct.isight* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %152

25:                                               ; preds = %5
  %26 = load %struct.isight*, %struct.isight** %11, align 8
  %27 = getelementptr inbounds %struct.isight, %struct.isight* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.isight*, %struct.isight** %11, align 8
  %30 = getelementptr inbounds %struct.isight, %struct.isight* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.audio_payload*, %struct.audio_payload** %36, align 8
  store %struct.audio_payload* %37, %struct.audio_payload** %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @be32_to_cpup(i8* %38)
  %40 = ashr i32 %39, 16
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp uge i32 %41, 16
  br i1 %42, label %43, label %49

43:                                               ; preds = %25
  %44 = load %struct.audio_payload*, %struct.audio_payload** %12, align 8
  %45 = getelementptr inbounds %struct.audio_payload, %struct.audio_payload* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @cpu_to_be32(i32 1936156788)
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %25
  %50 = phi i1 [ false, %25 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %108

54:                                               ; preds = %49
  %55 = load %struct.audio_payload*, %struct.audio_payload** %12, align 8
  %56 = getelementptr inbounds %struct.audio_payload, %struct.audio_payload* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be32_to_cpu(i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub i32 %60, 16
  %62 = udiv i32 %61, 4
  %63 = icmp ule i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %107

67:                                               ; preds = %54
  %68 = load %struct.audio_payload*, %struct.audio_payload** %12, align 8
  %69 = getelementptr inbounds %struct.audio_payload, %struct.audio_payload* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.isight*, %struct.isight** %11, align 8
  %74 = getelementptr inbounds %struct.isight, %struct.isight* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %67
  %81 = load %struct.isight*, %struct.isight** %11, align 8
  %82 = getelementptr inbounds %struct.isight, %struct.isight* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load %struct.isight*, %struct.isight** %11, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @isight_dropped_samples(%struct.isight* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.isight*, %struct.isight** %11, align 8
  %91 = getelementptr inbounds %struct.isight, %struct.isight* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.isight*, %struct.isight** %11, align 8
  %94 = getelementptr inbounds %struct.isight, %struct.isight* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %67
  %96 = load %struct.isight*, %struct.isight** %11, align 8
  %97 = load %struct.audio_payload*, %struct.audio_payload** %12, align 8
  %98 = getelementptr inbounds %struct.audio_payload, %struct.audio_payload* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @isight_samples(%struct.isight* %96, i32 %99, i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.isight*, %struct.isight** %11, align 8
  %104 = getelementptr inbounds %struct.isight, %struct.isight* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %95, %54
  br label %108

108:                                              ; preds = %107, %49
  %109 = load %struct.isight*, %struct.isight** %11, align 8
  %110 = getelementptr inbounds %struct.isight, %struct.isight* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.isight*, %struct.isight** %11, align 8
  %113 = getelementptr inbounds %struct.isight, %struct.isight* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load %struct.isight*, %struct.isight** %11, align 8
  %116 = getelementptr inbounds %struct.isight, %struct.isight* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @fw_iso_context_queue(i32 %111, i32* @audio_packet, i32* %114, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %108
  %128 = load %struct.isight*, %struct.isight** %11, align 8
  %129 = getelementptr inbounds %struct.isight, %struct.isight* %128, i32 0, i32 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load %struct.isight*, %struct.isight** %11, align 8
  %135 = call i32 @isight_pcm_abort(%struct.isight* %134)
  %136 = load %struct.isight*, %struct.isight** %11, align 8
  %137 = getelementptr inbounds %struct.isight, %struct.isight* %136, i32 0, i32 0
  store i32 -1, i32* %137, align 8
  br label %152

138:                                              ; preds = %108
  %139 = load %struct.isight*, %struct.isight** %11, align 8
  %140 = getelementptr inbounds %struct.isight, %struct.isight* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @fw_iso_context_queue_flush(i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* @QUEUE_LENGTH, align 4
  %146 = icmp uge i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %147, %138
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.isight*, %struct.isight** %11, align 8
  %151 = getelementptr inbounds %struct.isight, %struct.isight* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %127, %24
  ret void
}

declare dso_local i32 @be32_to_cpup(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isight_dropped_samples(%struct.isight*, i32) #1

declare dso_local i32 @isight_samples(%struct.isight*, i32, i32) #1

declare dso_local i32 @fw_iso_context_queue(i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @isight_pcm_abort(%struct.isight*) #1

declare dso_local i32 @fw_iso_context_queue_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
