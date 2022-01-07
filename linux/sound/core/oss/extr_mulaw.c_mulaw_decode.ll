; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_mulaw_decode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_mulaw_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.mulaw_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)* @mulaw_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mulaw_decode(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pcm_plugin*, align 8
  %6 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mulaw_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %5, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %6, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.mulaw_priv*
  store %struct.mulaw_priv* %21, %struct.mulaw_priv** %9, align 8
  %22 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %142, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %145

30:                                               ; preds = %26
  %31 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %31, i64 %33
  %35 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %30
  %39 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %39, i64 %41
  %43 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %47, i64 %49
  %51 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @snd_pcm_area_silence(%struct.TYPE_6__* %51, i32 0, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %46, %38
  %59 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %59, i64 %61
  %63 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %142

64:                                               ; preds = %30
  %65 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %65, i64 %67
  %69 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %70, i64 %72
  %74 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %77, i64 %79
  %81 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %76, i64 %85
  store i8* %86, i8** %12, align 8
  %87 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %87, i64 %89
  %91 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %94, i64 %96
  %98 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sdiv i32 %100, 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %93, i64 %102
  store i8* %103, i8** %13, align 8
  %104 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %104, i64 %106
  %108 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 8
  store i32 %111, i32* %14, align 4
  %112 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %112, i64 %114
  %116 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, 8
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %125, %64
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %16, align 4
  %124 = icmp sgt i32 %122, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i8*, i8** %12, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call signext i16 @ulaw2linear(i8 signext %127)
  store i16 %128, i16* %17, align 2
  %129 = load %struct.mulaw_priv*, %struct.mulaw_priv** %9, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load i16, i16* %17, align 2
  %132 = call i32 @cvt_s16_to_native(%struct.mulaw_priv* %129, i8* %130, i16 signext %131)
  %133 = load i32, i32* %14, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %12, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i8*, i8** %13, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %13, align 8
  br label %121

141:                                              ; preds = %121
  br label %142

142:                                              ; preds = %141, %58
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %26

145:                                              ; preds = %26
  ret void
}

declare dso_local i32 @snd_pcm_area_silence(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local signext i16 @ulaw2linear(i8 signext) #1

declare dso_local i32 @cvt_s16_to_native(%struct.mulaw_priv*, i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
