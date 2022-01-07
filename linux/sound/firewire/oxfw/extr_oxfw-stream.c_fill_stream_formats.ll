; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_fill_stream_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_fill_stream_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32**, i32** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_oxfw_stream_formation = type { i32 }

@AVC_GENERIC_FRAME_MAXIMUM_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"fail to get stream format %d for isoc %s plug %d:%d\0A\00", align 1
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@SND_OXFW_STREAM_FORMAT_ENTRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, i32, i16)* @fill_stream_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_stream_formats(%struct.snd_oxfw* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_oxfw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_oxfw_stream_formation, align 4
  %13 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @AVC_GENERIC_FRAME_MAXIMUM_BYTES, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %150

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %28 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  store i32** %29, i32*** %9, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %32 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  store i32** %33, i32*** %9, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @AVC_GENERIC_FRAME_MAXIMUM_BYTES, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %37 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @avc_stream_get_format_list(%struct.TYPE_4__* %38, i32 %39, i32 0, i32* %40, i32* %10, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32, i32* @AVC_GENERIC_FRAME_MAXIMUM_BYTES, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i16, i16* %7, align 2
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %9, align 8
  %53 = call i32 @assume_stream_formats(%struct.snd_oxfw* %48, i32 %49, i16 zeroext %50, i32* %51, i32* %10, i32** %52)
  store i32 %53, i32* %13, align 4
  br label %146

54:                                               ; preds = %34
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %59 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i16, i16* %7, align 2
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %67, i16 zeroext %68, i32 %69)
  br label %146

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %144, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %145

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %145

83:                                               ; preds = %77
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @snd_oxfw_stream_parse_format(i32* %84, %struct.snd_oxfw_stream_formation* %12)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %145

89:                                               ; preds = %83
  %90 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %91 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i32* @devm_kmemdup(i32* %93, i32* %94, i32 %95, i32 %96)
  %98 = load i32**, i32*** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  store i32* %97, i32** %101, align 8
  %102 = load i32**, i32*** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %89
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %145

111:                                              ; preds = %89
  %112 = load i32, i32* @AVC_GENERIC_FRAME_MAXIMUM_BYTES, align 4
  store i32 %112, i32* %10, align 4
  %113 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %114 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = call i32 @avc_stream_get_format_list(%struct.TYPE_4__* %115, i32 %116, i32 0, i32* %117, i32* %10, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  store i32 0, i32* %13, align 4
  br label %145

126:                                              ; preds = %111
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %131 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %140 = load i16, i16* %7, align 2
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %134, i8* %139, i16 zeroext %140, i32 %141)
  br label %145

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143
  br label %73

145:                                              ; preds = %129, %125, %108, %88, %80, %73
  br label %146

146:                                              ; preds = %145, %57, %46
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @kfree(i32* %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %19
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @avc_stream_get_format_list(%struct.TYPE_4__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @assume_stream_formats(%struct.snd_oxfw*, i32, i16 zeroext, i32*, i32*, i32**) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*, i16 zeroext, i32) #1

declare dso_local i32 @snd_oxfw_stream_parse_format(i32*, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32* @devm_kmemdup(i32*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
