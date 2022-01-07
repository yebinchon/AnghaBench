; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_term_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_term_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterm_name_combo = type { i32, i8* }
%struct.snd_usb_audio = type { i32 }
%struct.usb_audio_term = type { i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"Selector\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Process Unit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Ext Unit\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Mixer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unit %d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@iterm_names = common dso_local global %struct.iterm_name_combo* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_audio_term*, i8*, i32, i32)* @get_term_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_term_name(%struct.snd_usb_audio* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca %struct.usb_audio_term*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iterm_name_combo*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %7, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %15 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %20 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %21 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @snd_usb_copy_string_desc(%struct.snd_usb_audio* %19, i64 %22, i8* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %111

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %5
  %32 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %33 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %111

41:                                               ; preds = %37
  %42 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %43 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 16
  switch i32 %45, label %58 [
    i32 128, label %46
    i32 129, label %49
    i32 131, label %52
    i32 130, label %55
  ]

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* %6, align 4
  br label %111

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 12, i32* %6, align 4
  br label %111

52:                                               ; preds = %41
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 8, i32* %6, align 4
  br label %111

55:                                               ; preds = %41
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 5, i32* %6, align 4
  br label %111

58:                                               ; preds = %41
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %61 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %6, align 4
  br label %111

64:                                               ; preds = %31
  %65 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %66 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 65280
  switch i32 %68, label %81 [
    i32 256, label %69
    i32 512, label %72
    i32 1024, label %75
    i32 1280, label %78
  ]

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %111

72:                                               ; preds = %64
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strcpy(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %111

75:                                               ; preds = %64
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @strcpy(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 7, i32* %6, align 4
  br label %111

78:                                               ; preds = %64
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strcpy(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 5, i32* %6, align 4
  br label %111

81:                                               ; preds = %64
  %82 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** @iterm_names, align 8
  store %struct.iterm_name_combo* %82, %struct.iterm_name_combo** %12, align 8
  br label %83

83:                                               ; preds = %107, %81
  %84 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %85 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %90 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %93 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %88
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %99 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcpy(i8* %97, i8* %100)
  %102 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %103 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  store i32 %105, i32* %6, align 4
  br label %111

106:                                              ; preds = %88
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %109 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %108, i32 1
  store %struct.iterm_name_combo* %109, %struct.iterm_name_combo** %12, align 8
  br label %83

110:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %96, %78, %75, %72, %69, %58, %55, %52, %49, %46, %40, %28
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @snd_usb_copy_string_desc(%struct.snd_usb_audio*, i64, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
