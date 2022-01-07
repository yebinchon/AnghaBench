; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_set_stream_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_set_stream_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lola_stream = type { i32, i32, i32 }

@LOLA_VERB_SET_STREAM_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot set stream format 0x%x\0A\00", align 1
@LOLA_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot set stream channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, %struct.lola_stream*, i32)* @lola_set_stream_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_set_stream_config(%struct.lola* %0, %struct.lola_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca %struct.lola_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %5, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lola*, %struct.lola** %5, align 8
  %13 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %14 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LOLA_VERB_SET_STREAM_FORMAT, align 4
  %17 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %18 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lola_codec_read(%struct.lola* %12, i32 %15, i32 %16, i32 %19, i32 0, i32* %11, i32* null)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.lola*, %struct.lola** %5, align 8
  %25 = getelementptr inbounds %struct.lola, %struct.lola* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %30 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %41 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 6
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.lola*, %struct.lola** %5, align 8
  %47 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %47, i64 %49
  %51 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LOLA_VERB_SET_CHANNEL_STREAMID, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @lola_codec_read(%struct.lola* %46, i32 %52, i32 %53, i32 0, i32 %54, i32* %11, i32* null)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %39
  %59 = load %struct.lola*, %struct.lola** %5, align 8
  %60 = getelementptr inbounds %struct.lola, %struct.lola* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %35

71:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %58, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @lola_codec_read(%struct.lola*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
