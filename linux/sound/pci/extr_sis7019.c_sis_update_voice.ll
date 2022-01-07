; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_update_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_update_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voice = type { i32, i32, i32, i32, i32, i32, i64, i32, i64 }

@VOICE_SSO_TIMING = common dso_local global i32 0, align 4
@VOICE_SYNC_TIMING = common dso_local global i32 0, align 4
@SIS_CAPTURE_DMA_FORMAT_CSO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.voice*)* @sis_update_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_update_voice(%struct.voice* %0) #0 {
  %2 = alloca %struct.voice*, align 8
  %3 = alloca i32, align 4
  store %struct.voice* %0, %struct.voice** %2, align 8
  %4 = load %struct.voice*, %struct.voice** %2, align 8
  %5 = getelementptr inbounds %struct.voice, %struct.voice* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @VOICE_SSO_TIMING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.voice*, %struct.voice** %2, align 8
  %12 = load %struct.voice*, %struct.voice** %2, align 8
  %13 = getelementptr inbounds %struct.voice, %struct.voice* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sis_update_sso(%struct.voice* %11, i32 %14)
  br label %162

16:                                               ; preds = %1
  %17 = load %struct.voice*, %struct.voice** %2, align 8
  %18 = getelementptr inbounds %struct.voice, %struct.voice* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VOICE_SYNC_TIMING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %161

23:                                               ; preds = %16
  %24 = load %struct.voice*, %struct.voice** %2, align 8
  %25 = getelementptr inbounds %struct.voice, %struct.voice* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.voice*, %struct.voice** %2, align 8
  %28 = getelementptr inbounds %struct.voice, %struct.voice* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %23
  %32 = load %struct.voice*, %struct.voice** %2, align 8
  %33 = getelementptr inbounds %struct.voice, %struct.voice* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.voice*, %struct.voice** %2, align 8
  %36 = getelementptr inbounds %struct.voice, %struct.voice* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.voice*, %struct.voice** %2, align 8
  %40 = getelementptr inbounds %struct.voice, %struct.voice* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.voice*, %struct.voice** %2, align 8
  %43 = getelementptr inbounds %struct.voice, %struct.voice* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load %struct.voice*, %struct.voice** %2, align 8
  %48 = load %struct.voice*, %struct.voice** %2, align 8
  %49 = getelementptr inbounds %struct.voice, %struct.voice* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sis_update_sso(%struct.voice* %47, i32 %50)
  br label %58

52:                                               ; preds = %31
  %53 = load %struct.voice*, %struct.voice** %2, align 8
  %54 = load %struct.voice*, %struct.voice** %2, align 8
  %55 = getelementptr inbounds %struct.voice, %struct.voice* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sis_update_sso(%struct.voice* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  br label %167

59:                                               ; preds = %23
  %60 = load %struct.voice*, %struct.voice** %2, align 8
  %61 = getelementptr inbounds %struct.voice, %struct.voice* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  %63 = load %struct.voice*, %struct.voice** %2, align 8
  %64 = getelementptr inbounds %struct.voice, %struct.voice* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SIS_CAPTURE_DMA_FORMAT_CSO, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @readw(i64 %67)
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.voice*, %struct.voice** %2, align 8
  %75 = getelementptr inbounds %struct.voice, %struct.voice* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 2
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %59
  %80 = load %struct.voice*, %struct.voice** %2, align 8
  %81 = getelementptr inbounds %struct.voice, %struct.voice* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %59
  %86 = load i32, i32* %3, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %89, 16
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 16, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = load %struct.voice*, %struct.voice** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @sis_update_sso(%struct.voice* %93, i32 %94)
  br label %167

96:                                               ; preds = %85
  %97 = load i32, i32* %3, align 4
  %98 = icmp sgt i32 %97, -9
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.voice*, %struct.voice** %2, align 8
  %101 = getelementptr inbounds %struct.voice, %struct.voice* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.voice*, %struct.voice** %2, align 8
  %105 = getelementptr inbounds %struct.voice, %struct.voice* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %115

106:                                              ; preds = %96
  %107 = load %struct.voice*, %struct.voice** %2, align 8
  %108 = getelementptr inbounds %struct.voice, %struct.voice* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %109, %110
  %112 = add nsw i32 %111, 10
  %113 = load %struct.voice*, %struct.voice** %2, align 8
  %114 = getelementptr inbounds %struct.voice, %struct.voice* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %106, %99
  %116 = load %struct.voice*, %struct.voice** %2, align 8
  %117 = getelementptr inbounds %struct.voice, %struct.voice* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.voice*, %struct.voice** %2, align 8
  %121 = getelementptr inbounds %struct.voice, %struct.voice* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load %struct.voice*, %struct.voice** %2, align 8
  %126 = load %struct.voice*, %struct.voice** %2, align 8
  %127 = getelementptr inbounds %struct.voice, %struct.voice* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @sis_update_sso(%struct.voice* %125, i32 %128)
  %130 = load %struct.voice*, %struct.voice** %2, align 8
  %131 = getelementptr inbounds %struct.voice, %struct.voice* %130, i32 0, i32 2
  store i32 0, i32* %131, align 8
  br label %138

132:                                              ; preds = %115
  %133 = load %struct.voice*, %struct.voice** %2, align 8
  %134 = load %struct.voice*, %struct.voice** %2, align 8
  %135 = getelementptr inbounds %struct.voice, %struct.voice* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sis_update_sso(%struct.voice* %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %124
  %139 = load %struct.voice*, %struct.voice** %2, align 8
  %140 = getelementptr inbounds %struct.voice, %struct.voice* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.voice*, %struct.voice** %2, align 8
  %143 = getelementptr inbounds %struct.voice, %struct.voice* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %141, %144
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.voice*, %struct.voice** %2, align 8
  %148 = getelementptr inbounds %struct.voice, %struct.voice* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp sge i32 %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %138
  %152 = load %struct.voice*, %struct.voice** %2, align 8
  %153 = getelementptr inbounds %struct.voice, %struct.voice* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %151, %138
  %158 = load i32, i32* %3, align 4
  %159 = load %struct.voice*, %struct.voice** %2, align 8
  %160 = getelementptr inbounds %struct.voice, %struct.voice* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %16
  br label %162

162:                                              ; preds = %161, %10
  %163 = load %struct.voice*, %struct.voice** %2, align 8
  %164 = getelementptr inbounds %struct.voice, %struct.voice* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @snd_pcm_period_elapsed(i32 %165)
  br label %167

167:                                              ; preds = %162, %92, %58
  ret void
}

declare dso_local i32 @sis_update_sso(%struct.voice*, i32) #1

declare dso_local i64 @readw(i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
