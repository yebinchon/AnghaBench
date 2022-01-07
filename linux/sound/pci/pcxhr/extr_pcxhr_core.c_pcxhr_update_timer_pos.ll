; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_update_timer_pos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_update_timer_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcxhr_stream = type { i64, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@PCXHR_STREAM_STATUS_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"ERROR new_sample_count too small ??? %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcxhr_mgr*, %struct.pcxhr_stream*, i32)* @pcxhr_update_timer_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_update_timer_pos(%struct.pcxhr_mgr* %0, %struct.pcxhr_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.pcxhr_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store %struct.pcxhr_stream* %1, %struct.pcxhr_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %13 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %157

16:                                               ; preds = %3
  %17 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %18 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCXHR_STREAM_STATUS_RUNNING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %157

22:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %24 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %32 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %34 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %38 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %36
  %42 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %43 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %48 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %46, %41
  %57 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %58 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %59 = call i32 @pcxhr_stream_read_position(%struct.pcxhr_mgr* %57, %struct.pcxhr_stream* %58)
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %62 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %67 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %72 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %65, %56
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %80 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %83 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %78, %75
  br label %89

89:                                               ; preds = %88, %116
  %90 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %91 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %120

101:                                              ; preds = %89
  store i32 1, i32* %8, align 4
  %102 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %103 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %107 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %115 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %101
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %119 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %89

120:                                              ; preds = %100
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %123 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %121, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %129 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %133 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  br label %142

134:                                              ; preds = %120
  %135 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %136 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %135, i32 0, i32 2
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %134, %126
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %147 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %146, i32 0, i32 1
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %150 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %149, i32 0, i32 5
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %151)
  %153 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %154 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %153, i32 0, i32 1
  %155 = call i32 @mutex_lock(i32* %154)
  br label %156

156:                                              ; preds = %145, %142
  br label %157

157:                                              ; preds = %156, %16, %3
  ret void
}

declare dso_local i32 @pcxhr_stream_read_position(%struct.pcxhr_mgr*, %struct.pcxhr_stream*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
