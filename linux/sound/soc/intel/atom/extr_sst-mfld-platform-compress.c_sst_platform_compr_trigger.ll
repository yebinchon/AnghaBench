; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_compr_stream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }

@sst = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, i32)* @sst_platform_compr_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_compr_trigger(%struct.snd_compr_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_runtime_stream*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %10, align 8
  store %struct.sst_runtime_stream* %11, %struct.sst_runtime_stream** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %139 [
    i32 131, label %13
    i32 130, label %34
    i32 129, label %55
    i32 128, label %76
    i32 133, label %97
    i32 132, label %118
  ]

13:                                               ; preds = %2
  %14 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %15 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = icmp ne i32 (i32, i32)* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %22 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %30 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %25(i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %142

33:                                               ; preds = %13
  br label %139

34:                                               ; preds = %2
  %35 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %36 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = icmp ne i32 (i32, i32)* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %43 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %51 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %46(i32 %49, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %142

54:                                               ; preds = %34
  br label %139

55:                                               ; preds = %2
  %56 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %57 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = icmp ne i32 (i32, i32)* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %64 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %72 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(i32 %70, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %142

75:                                               ; preds = %55
  br label %139

76:                                               ; preds = %2
  %77 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %78 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = icmp ne i32 (i32, i32)* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %85 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %93 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %88(i32 %91, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %142

96:                                               ; preds = %76
  br label %139

97:                                               ; preds = %2
  %98 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %99 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = icmp ne i32 (i32, i32)* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %97
  %105 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %106 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %114 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %109(i32 %112, i32 %115)
  store i32 %116, i32* %3, align 4
  br label %142

117:                                              ; preds = %97
  br label %139

118:                                              ; preds = %2
  %119 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %120 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 5
  %123 = load i32 (i32, i32)*, i32 (i32, i32)** %122, align 8
  %124 = icmp ne i32 (i32, i32)* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %118
  %126 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %127 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %135 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %130(i32 %133, i32 %136)
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %2, %138, %117, %96, %75, %54, %33
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %125, %104, %83, %62, %41, %20
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
