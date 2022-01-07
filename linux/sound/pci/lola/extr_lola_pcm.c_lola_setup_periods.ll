; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_setup_periods.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_setup_periods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lola_pcm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }
%struct.lola_stream = type { i32, i32, i32, i64 }

@LOLA_BDL_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Too many BDL entries: buffer=%d, period=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, %struct.lola_pcm*, %struct.snd_pcm_substream*, %struct.lola_stream*)* @lola_setup_periods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_setup_periods(%struct.lola* %0, %struct.lola_pcm* %1, %struct.snd_pcm_substream* %2, %struct.lola_stream* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lola*, align 8
  %7 = alloca %struct.lola_pcm*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.lola_stream*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %6, align 8
  store %struct.lola_pcm* %1, %struct.lola_pcm** %7, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %8, align 8
  store %struct.lola_stream* %3, %struct.lola_stream** %9, align 8
  %15 = load %struct.lola_stream*, %struct.lola_stream** %9, align 8
  %16 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load %struct.lola_stream*, %struct.lola_stream** %9, align 8
  %19 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %14, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.lola_pcm*, %struct.lola_pcm** %7, align 8
  %24 = getelementptr inbounds %struct.lola_pcm, %struct.lola_pcm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @LOLA_BDL_ENTRY_SIZE, align 4
  %28 = load %struct.lola_stream*, %struct.lola_stream** %9, align 8
  %29 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %35 = load %struct.lola_stream*, %struct.lola_stream** %9, align 8
  %36 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %51, %4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %43 = load %struct.lola_stream*, %struct.lola_stream** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @setup_bdle(%struct.snd_pcm_substream* %42, %struct.lola_stream* %43, i32** %10, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %55

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %37

54:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %68

55:                                               ; preds = %49
  %56 = load %struct.lola*, %struct.lola** %6, align 8
  %57 = getelementptr inbounds %struct.lola, %struct.lola* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.lola_stream*, %struct.lola_stream** %9, align 8
  %62 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %55, %54
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @setup_bdle(%struct.snd_pcm_substream*, %struct.lola_stream*, i32**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
