; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64 }
%struct.pcm_runtime = type { i64, i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcm_substream = type { i64, i64 }

@EPIPE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@STREAM_DISABLED = common dso_local global i64 0, align 8
@rates = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid rate %d in prepare.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not start pcm stream.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @usb6fire_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  %5 = alloca %struct.pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.pcm_runtime* %9, %struct.pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream* %10)
  store %struct.pcm_substream* %11, %struct.pcm_substream** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EPIPE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %124

22:                                               ; preds = %1
  %23 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %24 = icmp ne %struct.pcm_substream* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %124

28:                                               ; preds = %22
  %29 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %33 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %35 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %37 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STREAM_DISABLED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %28
  %42 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %64, %41
  %45 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** @rates, align 8
  %49 = call i64 @ARRAY_SIZE(i64* %48)
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** @rates, align 8
  %56 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %57 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %69

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %44

69:                                               ; preds = %62, %44
  %70 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %71 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @rates, align 8
  %74 = call i64 @ARRAY_SIZE(i64* %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %78 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %81 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %124

92:                                               ; preds = %69
  %93 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %94 = call i32 @usb6fire_pcm_set_rate(%struct.pcm_runtime* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %99 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %124

102:                                              ; preds = %92
  %103 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %104 = call i32 @usb6fire_pcm_stream_start(%struct.pcm_runtime* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %109 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %108, i32 0, i32 2
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %112 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %124

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %28
  %121 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %122 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %121, i32 0, i32 2
  %123 = call i32 @mutex_unlock(i32* %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %107, %97, %76, %25, %19
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb6fire_pcm_set_rate(%struct.pcm_runtime*) #1

declare dso_local i32 @usb6fire_pcm_stream_start(%struct.pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
