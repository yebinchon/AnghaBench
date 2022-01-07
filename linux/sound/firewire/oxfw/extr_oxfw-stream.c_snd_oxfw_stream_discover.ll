; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_discover.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32, i32, i32, i64**, i64**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_oxfw_stream_formation = type { i64 }

@AVC_PLUG_INFO_BUF_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"fail to get info for isoc/external in/out plugs: %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@SND_OXFW_STREAM_FORMAT_ENTRIES = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_oxfw_stream_discover(%struct.snd_oxfw* %0) #0 {
  %2 = alloca %struct.snd_oxfw*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_oxfw_stream_formation, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %2, align 8
  %9 = load i32, i32* @AVC_PLUG_INFO_BUF_BYTES, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %14 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @avc_general_get_plug_info(%struct.TYPE_2__* %15, i32 31, i32 7, i32 0, i64* %12)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %21 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %131

26:                                               ; preds = %1
  %27 = getelementptr inbounds i64, i64* %12, i64 0
  %28 = load i64, i64* %27, align 16
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds i64, i64* %12, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %131

37:                                               ; preds = %30, %26
  br label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds i64, i64* %12, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %38
  %43 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %44 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  %45 = call i32 @fill_stream_formats(%struct.snd_oxfw* %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %131

49:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %79, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %56 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %55, i32 0, i32 4
  %57 = load i64**, i64*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  store i64* %61, i64** %6, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = icmp eq i64* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %79

65:                                               ; preds = %54
  %66 = load i64*, i64** %6, align 8
  %67 = call i32 @snd_oxfw_stream_parse_format(i64* %66, %struct.snd_oxfw_stream_formation* %5)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %77 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %70, %64
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %84 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %38
  %86 = getelementptr inbounds i64, i64* %12, i64 0
  %87 = load i64, i64* %86, align 16
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %85
  %90 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %91 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %92 = call i32 @fill_stream_formats(%struct.snd_oxfw* %90, i32 %91, i32 0)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %131

96:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %126, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %103 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %102, i32 0, i32 3
  %104 = load i64**, i64*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %104, i64 %106
  %108 = load i64*, i64** %107, align 8
  store i64* %108, i64** %6, align 8
  %109 = load i64*, i64** %6, align 8
  %110 = icmp eq i64* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %126

112:                                              ; preds = %101
  %113 = load i64*, i64** %6, align 8
  %114 = call i32 @snd_oxfw_stream_parse_format(i64* %113, %struct.snd_oxfw_stream_formation* %5)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %126

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %124 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125, %117, %111
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %97

129:                                              ; preds = %97
  br label %130

130:                                              ; preds = %129, %85
  br label %131

131:                                              ; preds = %130, %95, %48, %34, %19
  %132 = load i32, i32* %8, align 4
  %133 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avc_general_get_plug_info(%struct.TYPE_2__*, i32, i32, i32, i64*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @fill_stream_formats(%struct.snd_oxfw*, i32, i32) #2

declare dso_local i32 @snd_oxfw_stream_parse_format(i64*, %struct.snd_oxfw_stream_formation*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
