; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_lookup_voices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_lookup_voices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, %struct.snd_emux_voice* }
%struct.snd_emux_voice = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_emu10k1 = type { i32 }
%struct.best_voice = type { i32, i32 }

@V_END = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_OFF = common dso_local global i32 0, align 4
@V_FREE = common dso_local global i32 0, align 4
@V_OFF = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_RELEASED = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_PENDING = common dso_local global i32 0, align 4
@V_RELEASED = common dso_local global i32 0, align 4
@CVCF_CURRENTVOL = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_STANDBY = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_ON = common dso_local global i32 0, align 4
@V_PLAYING = common dso_local global i32 0, align 4
@SNDRV_SFNT_SAMPLE_SINGLESHOT = common dso_local global i32 0, align 4
@CCCA_CURRADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, %struct.snd_emu10k1*, %struct.best_voice*, i32)* @lookup_voices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_voices(%struct.snd_emux* %0, %struct.snd_emu10k1* %1, %struct.best_voice* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emux*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.best_voice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_emux_voice*, align 8
  %10 = alloca %struct.best_voice*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %5, align 8
  store %struct.snd_emu10k1* %1, %struct.snd_emu10k1** %6, align 8
  store %struct.best_voice* %2, %struct.best_voice** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %29, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @V_END, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %19, i64 %21
  %23 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %24, i64 %26
  %28 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %14

32:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %179, %32
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %36 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %182

39:                                               ; preds = %33
  %40 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %41 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %40, i32 0, i32 1
  %42 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %42, i64 %44
  store %struct.snd_emux_voice* %45, %struct.snd_emux_voice** %9, align 8
  %46 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %47 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @SNDRV_EMUX_ST_OFF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %39
  %53 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %54 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %179

61:                                               ; preds = %57
  %62 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %63 = load i32, i32* @V_FREE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %62, i64 %64
  store %struct.best_voice* %65, %struct.best_voice** %10, align 8
  br label %71

66:                                               ; preds = %52
  %67 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %68 = load i32, i32* @V_OFF, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %67, i64 %69
  store %struct.best_voice* %70, %struct.best_voice** %10, align 8
  br label %71

71:                                               ; preds = %66, %61
  br label %118

72:                                               ; preds = %39
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SNDRV_EMUX_ST_RELEASED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @SNDRV_EMUX_ST_PENDING, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76, %72
  %81 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %82 = load i32, i32* @V_RELEASED, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %81, i64 %83
  store %struct.best_voice* %84, %struct.best_voice** %10, align 8
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %86 = load i32, i32* @CVCF_CURRENTVOL, align 4
  %87 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %88 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %85, i32 %86, i64 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %80
  %94 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %95 = load i32, i32* @V_OFF, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %94, i64 %96
  store %struct.best_voice* %97, %struct.best_voice** %10, align 8
  br label %98

98:                                               ; preds = %93, %80
  br label %117

99:                                               ; preds = %76
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @SNDRV_EMUX_ST_STANDBY, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %179

104:                                              ; preds = %99
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @SNDRV_EMUX_ST_ON, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %111 = load i32, i32* @V_PLAYING, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %110, i64 %112
  store %struct.best_voice* %113, %struct.best_voice** %10, align 8
  br label %115

114:                                              ; preds = %104
  br label %179

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %98
  br label %118

118:                                              ; preds = %117, %71
  %119 = load %struct.best_voice*, %struct.best_voice** %10, align 8
  %120 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %121 = load i32, i32* @V_OFF, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %120, i64 %122
  %124 = icmp ne %struct.best_voice* %119, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %118
  %126 = load %struct.best_voice*, %struct.best_voice** %10, align 8
  %127 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %128 = load i32, i32* @V_FREE, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %127, i64 %129
  %131 = icmp ne %struct.best_voice* %126, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %125
  %133 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %134 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SNDRV_SFNT_SAMPLE_SINGLESHOT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %132
  %141 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %142 = load i32, i32* @CCCA_CURRADDR, align 4
  %143 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %144 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %141, i32 %142, i64 %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %149 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %147, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %140
  %154 = load %struct.best_voice*, %struct.best_voice** %7, align 8
  %155 = load i32, i32* @V_OFF, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %154, i64 %156
  store %struct.best_voice* %157, %struct.best_voice** %10, align 8
  br label %158

158:                                              ; preds = %153, %140
  br label %159

159:                                              ; preds = %158, %132, %125, %118
  %160 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %161 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.best_voice*, %struct.best_voice** %10, align 8
  %164 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  %167 = icmp slt i64 %162, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %159
  %169 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %9, align 8
  %170 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.best_voice*, %struct.best_voice** %10, align 8
  %174 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.best_voice*, %struct.best_voice** %10, align 8
  %177 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %168, %159
  br label %179

179:                                              ; preds = %178, %114, %103, %60
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %33

182:                                              ; preds = %33
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
