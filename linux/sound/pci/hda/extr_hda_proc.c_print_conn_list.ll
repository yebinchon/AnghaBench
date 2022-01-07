; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_conn_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_conn_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@AC_WID_AUD_MIX = common dso_local global i32 0, align 4
@AC_WID_VOL_KNB = common dso_local global i32 0, align 4
@AC_WID_POWER = common dso_local global i32 0, align 4
@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"  Connection: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  In-driver Connection: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32*, i32)* @print_conn_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_conn_list(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.snd_info_buffer*, align 8
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %7, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @AC_WID_AUD_MIX, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @AC_WID_VOL_KNB, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @AC_WID_POWER, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %35 = call i32 @snd_hda_codec_read(%struct.hda_codec* %32, i32 %33, i32 0, i32 %34, i32 0)
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %31, %27, %23, %19, %6
  %37 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %44 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %62 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %45

67:                                               ; preds = %45
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %69 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %36
  %71 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @snd_hda_get_conn_list(%struct.hda_codec* %71, i32 %72, i32** %15)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @memcmp(i32* %81, i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %80, %76
  %87 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %86
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %94 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %107, %92
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %95

110:                                              ; preds = %95
  %111 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %112 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %86
  br label %114

114:                                              ; preds = %113, %80, %70
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_hda_get_conn_list(%struct.hda_codec*, i32, i32**) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
