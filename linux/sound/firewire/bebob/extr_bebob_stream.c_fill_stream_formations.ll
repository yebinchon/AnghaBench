; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_fill_stream_formations.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_fill_stream_formations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_2__*, %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_bebob_stream_formation = type { i32 }

@AVC_BRIDGECO_ADDR_BYTES = common dso_local global i32 0, align 4
@FORMAT_MAXIMUM_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_DIR_IN = common dso_local global i32 0, align 4
@SND_BEBOB_STRM_FMT_ENTRIES = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_UNIT_ISOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"fail to get stream format %d for isoc %s plug %d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32, i16)* @fill_stream_formations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_stream_formations(%struct.snd_bebob* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca %struct.snd_bebob_stream_formation*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %16 = load i32, i32* @AVC_BRIDGECO_ADDR_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @FORMAT_MAXIMUM_LENGTH, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmalloc(i32 %20, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %34 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %33, i32 0, i32 2
  %35 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %34, align 8
  store %struct.snd_bebob_stream_formation* %35, %struct.snd_bebob_stream_formation** %9, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %38 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %37, i32 0, i32 1
  %39 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %38, align 8
  store %struct.snd_bebob_stream_formation* %39, %struct.snd_bebob_stream_formation** %9, align 8
  br label %40

40:                                               ; preds = %36, %32
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %92, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SND_BEBOB_STRM_FMT_ENTRIES, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %41
  %46 = load i32, i32* @FORMAT_MAXIMUM_LENGTH, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_ISOC, align 4
  %49 = load i16, i16* %7, align 2
  %50 = call i32 @avc_bridgeco_fill_unit_addr(i32* %19, i32 %47, i32 %48, i16 zeroext %49)
  %51 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %52 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @avc_bridgeco_get_plug_strm_fmt(%struct.TYPE_2__* %53, i32* %19, i32* %54, i32* %10, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  %63 = icmp ugt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %95

65:                                               ; preds = %61, %45
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %70 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i16, i16* %7, align 2
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %78, i16 zeroext %79, i32 %80)
  br label %95

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %9, align 8
  %87 = call i32 @parse_stream_formation(i32* %84, i32 %85, %struct.snd_bebob_stream_formation* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %41

95:                                               ; preds = %90, %68, %64, %41
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %25
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @avc_bridgeco_fill_unit_addr(i32*, i32, i32, i16 zeroext) #2

declare dso_local i32 @avc_bridgeco_get_plug_strm_fmt(%struct.TYPE_2__*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*, i16 zeroext, i32) #2

declare dso_local i32 @parse_stream_formation(i32*, i32, %struct.snd_bebob_stream_formation*) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
