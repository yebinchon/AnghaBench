; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lx_stream = type { i32, i64, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"starting: needed %d, freed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"starting: buffer index %x on 0x%lx (%d bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"starting: starting stream\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"couldn't start stream\0A\00", align 1
@LX_STREAM_STATUS_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lx6464es*, %struct.lx_stream*)* @lx_trigger_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_trigger_start(%struct.lx6464es* %0, %struct.lx_stream* %1) #0 {
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca %struct.lx_stream*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [5 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  store %struct.lx_stream* %1, %struct.lx_stream** %4, align 8
  %19 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %20 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %19, i32 0, i32 3
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %20, align 8
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %5, align 8
  %22 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %23 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 3
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %87, %2
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  store i32 0, i32* %18, align 4
  %54 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %57 = call i32 @lx_buffer_ask(%struct.lx6464es* %54, i32 0, i32 %55, i32* %15, i32* %16, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %59 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @lower_32_bits(i64 %69)
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @upper_32_bits(i64 %71)
  %73 = call i32 @lx_buffer_give(%struct.lx6464es* %66, i32 0, i32 %67, i32 %68, i32 %70, i32 %72, i32* %18)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %75 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i64, i64* %13, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %80, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %53
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %49

90:                                               ; preds = %49
  %91 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %94 = call i32 @lx_buffer_ask(%struct.lx6464es* %91, i32 0, i32 %92, i32* %15, i32* %16, i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %96 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %104 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @lx_stream_start(%struct.lx6464es* %109, i32 0, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %90
  %115 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %116 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %125

121:                                              ; preds = %90
  %122 = load i32, i32* @LX_STREAM_STATUS_RUNNING, align 4
  %123 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %124 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %114
  %126 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %127 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  ret void
}

declare dso_local i32 @lx_buffer_ask(%struct.lx6464es*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @lx_buffer_give(%struct.lx6464es*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lx_stream_start(%struct.lx6464es*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
