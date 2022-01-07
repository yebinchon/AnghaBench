; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_compr_file* }
%struct.snd_compr_file = type { %struct.snd_compr_stream }
%struct.snd_compr_stream = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"avail is %ld\0A\00", align 1
@SNDRV_PCM_STATE_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_compr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_compr_file*, align 8
  %7 = alloca %struct.snd_compr_stream*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.snd_compr_file*, %struct.snd_compr_file** %11, align 8
  store %struct.snd_compr_file* %12, %struct.snd_compr_file** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.snd_compr_file*, %struct.snd_compr_file** %6, align 8
  %14 = icmp ne %struct.snd_compr_file* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EPOLLERR, align 4
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.snd_compr_file*, %struct.snd_compr_file** %6, align 8
  %23 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %22, i32 0, i32 0
  store %struct.snd_compr_stream* %23, %struct.snd_compr_stream** %7, align 8
  %24 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %25 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %30 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %39 [
    i32 132, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %21, %21
  %35 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %36 = call i32 @snd_compr_get_poll(%struct.snd_compr_stream* %35)
  %37 = load i32, i32* @EPOLLERR, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %9, align 4
  br label %83

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %43 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @poll_wait(%struct.file* %41, i32* %45, i32* %46)
  %48 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %49 = call i64 @snd_compr_get_avail(%struct.snd_compr_stream* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %53 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %77 [
    i32 133, label %57
    i32 129, label %65
    i32 130, label %65
    i32 131, label %65
  ]

57:                                               ; preds = %40
  %58 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %59 = call i32 @snd_compr_get_poll(%struct.snd_compr_stream* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @SNDRV_PCM_STATE_SETUP, align 4
  %61 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %62 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  br label %82

65:                                               ; preds = %40, %40, %40
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %68 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %66, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %75 = call i32 @snd_compr_get_poll(%struct.snd_compr_stream* %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %65
  br label %82

77:                                               ; preds = %40
  %78 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %79 = call i32 @snd_compr_get_poll(%struct.snd_compr_stream* %78)
  %80 = load i32, i32* @EPOLLERR, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %77, %76, %57
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %7, align 8
  %85 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_compr_get_poll(%struct.snd_compr_stream*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @snd_compr_get_avail(%struct.snd_compr_stream*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
