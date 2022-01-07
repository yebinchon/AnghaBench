; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_setup_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_setup_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.soundfont_voice_parm }
%struct.soundfont_voice_parm = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@voltarget = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @setup_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca %struct.soundfont_voice_parm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %5 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %5, i32 0, i32 6
  %7 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %8 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %7, i32 0, i32 7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_4__* %6 to i8*
  %12 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 4 %12, i64 24, i1 false)
  %13 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %14 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %16 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %17, i32 0, i32 2
  store i32 -1, i32* %18, align 8
  %19 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %20 = call i32 @calc_volume(%struct.snd_emux_voice* %19)
  %21 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %22 = call i32 @calc_pitch(%struct.snd_emux_voice* %21)
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %24 = call i32 @calc_pan(%struct.snd_emux_voice* %23)
  %25 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %26 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.soundfont_voice_parm* %27, %struct.soundfont_voice_parm** %3, align 8
  %28 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %29 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LO_BYTE(i32 %30)
  %32 = icmp sge i32 %31, 128
  br i1 %32, label %33, label %72

33:                                               ; preds = %1
  %34 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %35 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 32768
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %40 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %39, i32 0, i32 1
  store i32 49151, i32* %40, align 4
  %41 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %42 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @HI_BYTE(i32 %43)
  %45 = shl i32 %44, 4
  %46 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %47 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 65535
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 65535, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %55 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %58 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LO_BYTE(i32 %59)
  %61 = add nsw i32 %56, %60
  %62 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %63 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %65 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LIMITVALUE(i32 %66, i32 0, i32 255)
  %68 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %69 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  store i32 %71, i32* %69, align 4
  br label %85

72:                                               ; preds = %33, %1
  %73 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %74 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %77 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %79 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  store i32 %81, i32* %79, align 4
  %82 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %83 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %72, %53
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 65535
  br i1 %87, label %88, label %152

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 12
  %91 = shl i32 1, %90
  %92 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %93 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, 2048
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %99 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 4142
  %102 = sdiv i32 %101, 10000
  %103 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %104 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %97, %88
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 1024
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %113 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 1892
  %116 = sdiv i32 %115, 10000
  %117 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %118 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %111, %107
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, 512
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %127 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %128, 905
  %130 = sdiv i32 %129, 10000
  %131 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %132 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %125, %121
  %136 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %137 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = ashr i32 %138, 1
  %140 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %141 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %145 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 65535
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %150 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %149, i32 0, i32 4
  store i32 65535, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %135
  br label %155

152:                                              ; preds = %85
  %153 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %154 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %153, i32 0, i32 4
  store i32 65535, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %151
  %156 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %157 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @LO_BYTE(i32 %158)
  %160 = icmp sge i32 %159, 128
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %163 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, -256
  store i32 %165, i32* %163, align 4
  %166 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %167 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, 127
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %161, %155
  %171 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %172 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %171, i32 0, i32 5
  store i32 0, i32* %172, align 4
  %173 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %174 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @LO_BYTE(i32 %175)
  %177 = icmp sge i32 %176, 128
  br i1 %177, label %178, label %187

178:                                              ; preds = %170
  %179 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %180 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, -256
  store i32 %182, i32* %180, align 4
  %183 = load %struct.soundfont_voice_parm*, %struct.soundfont_voice_parm** %3, align 8
  %184 = getelementptr inbounds %struct.soundfont_voice_parm, %struct.soundfont_voice_parm* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, 127
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %178, %170
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @calc_volume(%struct.snd_emux_voice*) #2

declare dso_local i32 @calc_pitch(%struct.snd_emux_voice*) #2

declare dso_local i32 @calc_pan(%struct.snd_emux_voice*) #2

declare dso_local i32 @LO_BYTE(i32) #2

declare dso_local i32 @HI_BYTE(i32) #2

declare dso_local i32 @LIMITVALUE(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
