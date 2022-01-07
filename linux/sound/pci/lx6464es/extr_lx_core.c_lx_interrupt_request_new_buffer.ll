; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_request_new_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_request_new_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lx_stream = type { i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_STREAM_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"->lx_interrupt_request_new_buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"interrupt: needed %d, freed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"interrupt: gave buffer index %x on 0x%lx (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, %struct.lx_stream*)* @lx_interrupt_request_new_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_interrupt_request_new_buffer(%struct.lx6464es* %0, %struct.lx_stream* %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  store %struct.lx_stream* %1, %struct.lx_stream** %4, align 8
  %22 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %23 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %22, i32 0, i32 2
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %23, align 8
  store %struct.snd_pcm_substream* %24, %struct.snd_pcm_substream** %5, align 8
  %25 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %26 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 3
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %44 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %2
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i32 [ 0, %54 ], [ %57, %55 ]
  store i32 %59, i32* %13, align 4
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  store i64 %68, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %69 = load i32, i32* @MAX_STREAM_BUFFER, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %20, align 8
  %72 = alloca i32, i64 %70, align 16
  store i64 %70, i64* %21, align 8
  %73 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %74 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %80 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @lx_buffer_ask(%struct.lx6464es* %82, i32 0, i32 %83, i32* %18, i32* %19, i32* %72)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %86 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %19, align 4
  %92 = call i32 (i32, i8*, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @unpack_pointer(i64 %93, i32* %16, i32* %15)
  %95 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @lx_buffer_give(%struct.lx6464es* %95, i32 0, i32 %96, i32 %97, i32 %98, i32 %99, i32* %17)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %102 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %106, i64 %107, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %112 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %114 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %7, align 4
  %117 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %117)
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @lx_buffer_ask(%struct.lx6464es*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @unpack_pointer(i64, i32*, i32*) #2

declare dso_local i32 @lx_buffer_give(%struct.lx6464es*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
