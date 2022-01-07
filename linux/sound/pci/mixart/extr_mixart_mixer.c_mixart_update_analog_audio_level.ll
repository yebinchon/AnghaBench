; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_update_analog_audio_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_update_analog_audio_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixart = type { i64*, i64*, i32, %struct.TYPE_4__*, i32, i32, i32, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.mixart_msg = type { i32, %struct.mixart_io_level*, i32, i32 }
%struct.mixart_io_level = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.mixart_return_uid = type { i64 }

@mixart_analog_level = common dso_local global i8** null, align 8
@MIXART_ANALOG_PLAYBACK_LEVEL_MIN = common dso_local global i64 0, align 8
@MSG_PHYSICALIO_SET_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"error MSG_PHYSICALIO_SET_LEVEL card(%d) is_capture(%d) error_code(%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixart*, i32)* @mixart_update_analog_audio_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_update_analog_audio_level(%struct.snd_mixart* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mixart_msg, align 8
  %9 = alloca %struct.mixart_io_level, align 8
  %10 = alloca %struct.mixart_return_uid, align 8
  store %struct.snd_mixart* %0, %struct.snd_mixart** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @memset(%struct.mixart_io_level* %9, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.mixart_io_level, %struct.mixart_io_level* %9, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %75, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %78

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i8**, i8*** @mixart_analog_level, align 8
  %21 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %22 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8*, i8** %20, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.mixart_io_level, %struct.mixart_io_level* %9, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %29, i8** %35, align 8
  br label %74

36:                                               ; preds = %16
  %37 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %38 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %37, i32 0, i32 7
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %36
  %46 = load i8**, i8*** @mixart_analog_level, align 8
  %47 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %48 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8*, i8** %46, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.mixart_io_level, %struct.mixart_io_level* %9, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %55, i8** %61, align 8
  br label %73

62:                                               ; preds = %36
  %63 = load i8**, i8*** @mixart_analog_level, align 8
  %64 = load i64, i64* @MIXART_ANALOG_PLAYBACK_LEVEL_MIN, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.mixart_io_level, %struct.mixart_io_level* %9, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %62, %45
  br label %74

74:                                               ; preds = %73, %19
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %13

78:                                               ; preds = %13
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %83 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  br label %91

86:                                               ; preds = %78
  %87 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %88 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @MSG_PHYSICALIO_SET_LEVEL, align 4
  %93 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 1
  store %struct.mixart_io_level* %9, %struct.mixart_io_level** %94, align 8
  %95 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 0
  store i32 16, i32* %95, align 8
  %96 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %97 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_mixart_send_msg(i32 %98, %struct.mixart_msg* %8, i32 8, %struct.mixart_return_uid* %10)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.mixart_return_uid, %struct.mixart_return_uid* %10, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %102, %91
  %107 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %108 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %113 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = getelementptr inbounds %struct.mixart_return_uid, %struct.mixart_return_uid* %10, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115, i64 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %106
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.mixart_io_level*, i32, i32) #1

declare dso_local i32 @snd_mixart_send_msg(i32, %struct.mixart_msg*, i32, %struct.mixart_return_uid*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
