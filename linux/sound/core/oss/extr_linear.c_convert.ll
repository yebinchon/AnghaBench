; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_linear.c_convert.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_linear.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.linear_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pcm_plugin*, align 8
  %6 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.linear_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %5, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %6, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.linear_priv*
  store %struct.linear_priv* %20, %struct.linear_priv** %9, align 8
  %21 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %138, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %141

29:                                               ; preds = %25
  %30 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %30, i64 %32
  %34 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %29
  %38 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %38, i64 %40
  %42 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %46, i64 %48
  %50 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @snd_pcm_area_silence(%struct.TYPE_6__* %50, i32 0, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %45, %37
  %58 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %58, i64 %60
  %62 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %138

63:                                               ; preds = %29
  %64 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %64, i64 %66
  %68 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %69, i64 %71
  %73 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %76, i64 %78
  %80 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %75, i64 %84
  store i8* %85, i8** %12, align 8
  %86 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %86, i64 %88
  %90 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %93, i64 %95
  %97 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %92, i64 %101
  store i8* %102, i8** %13, align 8
  %103 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %103, i64 %105
  %107 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 8
  store i32 %110, i32* %14, align 4
  %111 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %111, i64 %113
  %115 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 8
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %124, %63
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %16, align 4
  %123 = icmp sgt i32 %121, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load %struct.linear_priv*, %struct.linear_priv** %9, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @do_convert(%struct.linear_priv* %125, i8* %126, i8* %127)
  %129 = load i32, i32* %14, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %12, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i8*, i8** %13, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %13, align 8
  br label %120

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %137, %57
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %25

141:                                              ; preds = %25
  ret void
}

declare dso_local i32 @snd_pcm_area_silence(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @do_convert(%struct.linear_priv*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
