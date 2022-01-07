; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_set_stream_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_set_stream_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32**, i32**, i32, i64, %struct.amdtp_stream }
%struct.amdtp_stream = type { i32 }
%struct.snd_oxfw_stream_formation = type { i32, i32 }

@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@SND_OXFW_STREAM_FORMAT_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, %struct.amdtp_stream*, i32, i32)* @set_stream_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_stream_format(%struct.snd_oxfw* %0, %struct.amdtp_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_oxfw*, align 8
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.snd_oxfw_stream_formation, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %6, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %17 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %18 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %17, i32 0, i32 4
  %19 = icmp eq %struct.amdtp_stream* %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %22 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  store i32** %23, i32*** %10, align 8
  %24 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  store i32 %24, i32* %12, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %27 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  store i32** %28, i32*** %10, align 8
  %29 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %25, %20
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i32**, i32*** %10, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @snd_oxfw_stream_parse_format(i32* %40, %struct.snd_oxfw_stream_formation* %11)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %5, align 4
  br label %104

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %31

61:                                               ; preds = %56, %31
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %104

68:                                               ; preds = %61
  %69 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %70 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @set_rate(%struct.snd_oxfw* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %104

77:                                               ; preds = %68
  %78 = load i32**, i32*** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 5, %85
  store i32 %86, i32* %13, align 4
  %87 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %88 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32**, i32*** %10, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @avc_stream_set_format(i32 %89, i32 %90, i32 0, i32* %95, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %77
  %103 = call i32 @msleep(i32 100)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %100, %73, %65, %44
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @snd_oxfw_stream_parse_format(i32*, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32 @set_rate(%struct.snd_oxfw*, i32) #1

declare dso_local i32 @avc_stream_set_format(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
