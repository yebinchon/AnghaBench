; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_quit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32, i32, i64, i64, i64, i64, i64, i64, i32* }
%struct.snd_soc_dai = type { i32 }
%struct.fsi_master = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"over_run = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"under_run = %d\0A\00", align 1
@quit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, %struct.fsi_stream*)* @fsi_stream_quit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_stream_quit(%struct.fsi_priv* %0, %struct.fsi_stream* %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_stream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.fsi_master*, align 8
  %7 = alloca i64, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %4, align 8
  %8 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %9 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = call %struct.snd_soc_dai* @fsi_get_dai(i32* %10)
  store %struct.snd_soc_dai* %11, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %13 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %12)
  store %struct.fsi_master* %13, %struct.fsi_master** %6, align 8
  %14 = load %struct.fsi_master*, %struct.fsi_master** %6, align 8
  %15 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %19 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %27 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %32 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %40 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %45 = load i32, i32* @quit, align 4
  %46 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %47 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %48 = call i32 @fsi_stream_handler_call(%struct.fsi_stream* %44, i32 %45, %struct.fsi_priv* %46, %struct.fsi_stream* %47)
  %49 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %50 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %49, i32 0, i32 8
  store i32* null, i32** %50, align 8
  %51 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %52 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %54 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %56 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %58 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %60 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %62 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %64 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %66 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.fsi_master*, %struct.fsi_master** %6, align 8
  %68 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %67, i32 0, i32 0
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret void
}

declare dso_local %struct.snd_soc_dai* @fsi_get_dai(i32*) #1

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @fsi_stream_handler_call(%struct.fsi_stream*, i32, %struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
