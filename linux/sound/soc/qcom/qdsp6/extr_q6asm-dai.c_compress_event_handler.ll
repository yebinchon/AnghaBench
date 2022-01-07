; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_compress_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_compress_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6asm_dai_rtd = type { i32, i64, i64, i32, i64, i32, i64, %struct.snd_compr_stream* }
%struct.snd_compr_stream = type { i32 }

@NO_TIMESTAMP = common dso_local global i32 0, align 4
@Q6ASM_STREAM_STOPPED = common dso_local global i32 0, align 4
@Q6ASM_STREAM_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i8*)* @compress_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_event_handler(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.q6asm_dai_rtd*, align 8
  %10 = alloca %struct.snd_compr_stream*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.q6asm_dai_rtd*
  store %struct.q6asm_dai_rtd* %14, %struct.q6asm_dai_rtd** %9, align 8
  %15 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %16 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %15, i32 0, i32 7
  %17 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %16, align 8
  store %struct.snd_compr_stream* %17, %struct.snd_compr_stream** %10, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %111 [
    i32 129, label %19
    i32 130, label %49
    i32 128, label %53
  ]

19:                                               ; preds = %4
  %20 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %21 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %20, i32 0, i32 0
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %25 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %19
  %29 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %30 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %33 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @NO_TIMESTAMP, align 4
  %36 = call i32 @q6asm_write_async(i32 %31, i64 %34, i32 0, i32 0, i32 %35)
  %37 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %38 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %41 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %28, %19
  %45 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %46 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %112

49:                                               ; preds = %4
  %50 = load i32, i32* @Q6ASM_STREAM_STOPPED, align 4
  %51 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %52 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %112

53:                                               ; preds = %4
  %54 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %55 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %54, i32 0, i32 0
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %59 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %62 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %10, align 8
  %66 = call i32 @snd_compr_fragment_elapsed(%struct.snd_compr_stream* %65)
  %67 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %68 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @Q6ASM_STREAM_RUNNING, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %74 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %73, i32 0, i32 0
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %112

77:                                               ; preds = %53
  %78 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %79 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %82 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %87 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %77
  %91 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %92 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %95 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @NO_TIMESTAMP, align 4
  %98 = call i32 @q6asm_write_async(i32 %93, i64 %96, i32 0, i32 0, i32 %97)
  %99 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %100 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %103 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %90, %77
  %107 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %108 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %107, i32 0, i32 0
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  br label %112

111:                                              ; preds = %4
  br label %112

112:                                              ; preds = %111, %106, %72, %49, %44
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @q6asm_write_async(i32, i64, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_compr_fragment_elapsed(%struct.snd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
