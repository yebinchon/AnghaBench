; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_convert_chmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_convert_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_chmap_elem = type { i32*, i32 }

@convert_chmap.uac1_maps = internal global [13 x i32] [i32 152, i32 150, i32 153, i32 148, i32 140, i32 139, i32 151, i32 149, i32 146, i32 140, i32 139, i32 138, i32 0], align 16
@convert_chmap.uac2_maps = internal global [28 x i32] [i32 152, i32 150, i32 153, i32 148, i32 145, i32 142, i32 151, i32 149, i32 146, i32 140, i32 139, i32 138, i32 136, i32 137, i32 134, i32 131, i32 132, i32 130, i32 135, i32 133, i32 147, i32 143, i32 129, i32 128, i32 154, i32 144, i32 141, i32 0], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@UAC_VERSION_2 = common dso_local global i32 0, align 4
@SNDRV_CHMAP_MONO = common dso_local global i32 0, align 4
@SNDRV_CHMAP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_pcm_chmap_elem* (i32, i32, i32)* @convert_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_pcm_chmap_elem* @convert_chmap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.snd_pcm_chmap_elem* null, %struct.snd_pcm_chmap_elem** %4, align 8
  br label %122

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.snd_pcm_chmap_elem* @kzalloc(i32 16, i32 %19)
  store %struct.snd_pcm_chmap_elem* %20, %struct.snd_pcm_chmap_elem** %8, align 8
  %21 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %22 = icmp ne %struct.snd_pcm_chmap_elem* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.snd_pcm_chmap_elem* null, %struct.snd_pcm_chmap_elem** %4, align 8
  br label %122

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @UAC_VERSION_2, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32* getelementptr inbounds ([28 x i32], [28 x i32]* @convert_chmap.uac2_maps, i64 0, i64 0), i32* getelementptr inbounds ([13 x i32], [13 x i32]* @convert_chmap.uac1_maps, i64 0, i64 0)
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %65

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %49, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = lshr i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %36

65:                                               ; preds = %43
  br label %104

66:                                               ; preds = %24
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @SNDRV_CHMAP_MONO, align 4
  %71 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  br label %103

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %99, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ]
  br i1 %88, label %89, label %102

89:                                               ; preds = %87
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %89
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %9, align 8
  br label %79

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %117, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i32, i32* @SNDRV_CHMAP_UNKNOWN, align 4
  %111 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %105

120:                                              ; preds = %105
  %121 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  store %struct.snd_pcm_chmap_elem* %121, %struct.snd_pcm_chmap_elem** %4, align 8
  br label %122

122:                                              ; preds = %120, %23, %17
  %123 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %4, align 8
  ret %struct.snd_pcm_chmap_elem* %123
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_pcm_chmap_elem* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
