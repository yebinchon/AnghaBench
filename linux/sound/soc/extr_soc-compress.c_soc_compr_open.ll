; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_10__*, %struct.TYPE_7__*, i32, %struct.snd_soc_dai* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }
%struct.snd_soc_dai = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Compress ASoC: can't open interface %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Compress ASoC: %s startup failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @soc_compr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_compr_open(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %8 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 3
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %12, align 8
  store %struct.snd_soc_dai* %13, %struct.snd_soc_dai** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mutex_lock_nested(i32* %17, i32 %22)
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)** %36, align 8
  %38 = icmp ne i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %30
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)** %45, align 8
  %47 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %49 = call i32 %46(%struct.snd_compr_stream* %47, %struct.snd_soc_dai* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %152

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61, %30, %1
  %63 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %64 = call i32 @soc_compr_components_open(%struct.snd_compr_stream* %63, %struct.snd_soc_component** %5)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %121

68:                                               ; preds = %62
  %69 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %70 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %110

75:                                               ; preds = %68
  %76 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %77 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to i32 (%struct.snd_compr_stream*)**
  %83 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %82, align 8
  %84 = icmp ne i32 (%struct.snd_compr_stream*)* %83, null
  br i1 %84, label %85, label %110

85:                                               ; preds = %75
  %86 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %87 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = bitcast {}** %91 to i32 (%struct.snd_compr_stream*)**
  %93 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %92, align 8
  %94 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %95 = call i32 %93(%struct.snd_compr_stream* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %85
  %99 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %100 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %103 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %121

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %75, %68
  %111 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %112 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %113 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @snd_soc_runtime_activate(%struct.snd_soc_pcm_runtime* %111, i32 %114)
  %116 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %117 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  store i32 0, i32* %2, align 4
  br label %159

121:                                              ; preds = %98, %67
  %122 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %124 = call i32 @soc_compr_components_free(%struct.snd_compr_stream* %122, %struct.snd_soc_component* %123)
  %125 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %126 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = icmp ne %struct.TYPE_8__* %129, null
  br i1 %130, label %131, label %151

131:                                              ; preds = %121
  %132 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %133 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)** %137, align 8
  %139 = icmp ne i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %131
  %141 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %142 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)** %146, align 8
  %148 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %149 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %150 = call i32 %147(%struct.snd_compr_stream* %148, %struct.snd_soc_dai* %149)
  br label %151

151:                                              ; preds = %140, %131, %121
  br label %152

152:                                              ; preds = %151, %52
  %153 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %154 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %152, %110
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @soc_compr_components_open(%struct.snd_compr_stream*, %struct.snd_soc_component**) #1

declare dso_local i32 @snd_soc_runtime_activate(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @soc_compr_components_free(%struct.snd_compr_stream*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
