; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_assume_stream_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_assume_stream_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_oxfw_stream_formation = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"fail to get current stream format for isoc %s plug %d:%d\0A\00", align 1
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@oxfw_rate_table = common dso_local global i64* null, align 8
@avc_stream_rate_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, i32, i32, i32*, i32*, i32**)* @assume_stream_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assume_stream_formats(%struct.snd_oxfw* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32** %5) #0 {
  %7 = alloca %struct.snd_oxfw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.snd_oxfw_stream_formation, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %17 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  %18 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @avc_stream_get_format_single(%struct.TYPE_5__* %19, i32 %20, i32 %21, i32* %22, i32* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %6
  %28 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  %29 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37, i32 %38)
  br label %143

40:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @snd_oxfw_stream_parse_format(i32* %41, %struct.snd_oxfw_stream_formation* %13)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %143

46:                                               ; preds = %40
  %47 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  %48 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @devm_kmemdup(i32* %50, i32* %51, i32 %53, i32 %54)
  %56 = load i32**, i32*** %12, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %55, i32** %59, align 8
  %60 = load i32**, i32*** %12, align 8
  %61 = load i32, i32* %15, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %46
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  br label %143

69:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %137, %69
  %71 = load i32, i32* %14, align 4
  %72 = load i64*, i64** @oxfw_rate_table, align 8
  %73 = call i32 @ARRAY_SIZE(i64* %72)
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %75, label %140

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** @oxfw_rate_table, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %137

85:                                               ; preds = %75
  %86 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  %87 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i64*, i64** @oxfw_rate_table, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @avc_general_inquiry_sig_fmt(%struct.TYPE_5__* %88, i64 %93, i32 %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %137

100:                                              ; preds = %85
  %101 = load i32, i32* %15, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %15, align 4
  %103 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  %104 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32* @devm_kmemdup(i32* %106, i32* %107, i32 %109, i32 %110)
  %112 = load i32**, i32*** %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  store i32* %111, i32** %115, align 8
  %116 = load i32**, i32*** %12, align 8
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %100
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %16, align 4
  br label %143

125:                                              ; preds = %100
  %126 = load i32*, i32** @avc_stream_rate_table, align 8
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32**, i32*** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %125, %99, %84
  %138 = load i32, i32* %14, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %70

140:                                              ; preds = %70
  store i32 0, i32* %16, align 4
  %141 = load %struct.snd_oxfw*, %struct.snd_oxfw** %7, align 8
  %142 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %140, %122, %66, %45, %27
  %144 = load i32, i32* %16, align 4
  ret i32 %144
}

declare dso_local i32 @avc_stream_get_format_single(%struct.TYPE_5__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @snd_oxfw_stream_parse_format(i32*, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32* @devm_kmemdup(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @avc_general_inquiry_sig_fmt(%struct.TYPE_5__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
