; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_match_spec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_match_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_spec = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@PORT_DIR_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_aio_spec*, i8*, i32)* @match_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_spec(%struct.uniphier_aio_spec* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_aio_spec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.uniphier_aio_spec* %0, %struct.uniphier_aio_spec** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %5, align 8
  %13 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %58

19:                                               ; preds = %11, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %5, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PORT_DIR_INPUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %58

31:                                               ; preds = %23, %19
  %32 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %5, align 8
  %33 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %5, align 8
  %38 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i64 %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %58

44:                                               ; preds = %36, %31
  %45 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %5, align 8
  %46 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %5, align 8
  %51 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strcmp(i64 %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %58

57:                                               ; preds = %49, %44
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %56, %43, %30, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
