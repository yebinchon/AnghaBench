; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_open_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_open_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32 }
%struct.file = type { i32 }
%struct.snd_pcm_substream = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_pcm_substream*)* }

@.str = private unnamed_addr constant [36 x i8] c"snd_pcm_hw_constraints_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"snd_pcm_hw_constraints_complete failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_open_substream(%struct.snd_pcm* %0, i32 %1, %struct.file* %2, %struct.snd_pcm_substream** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.snd_pcm_substream**, align 8
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.snd_pcm_substream** %3, %struct.snd_pcm_substream*** %9, align 8
  %12 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = call i32 @snd_pcm_attach_substream(%struct.snd_pcm* %12, i32 %13, %struct.file* %14, %struct.snd_pcm_substream** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %27 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  store %struct.snd_pcm_substream* %26, %struct.snd_pcm_substream** %27, align 8
  store i32 0, i32* %5, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %30 = call i32 @snd_pcm_hw_constraints_init(%struct.snd_pcm_substream* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = call i32 @pcm_dbg(%struct.snd_pcm* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %59

36:                                               ; preds = %28
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %40, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %43 = call i32 %41(%struct.snd_pcm_substream* %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %59

46:                                               ; preds = %36
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %50 = call i32 @snd_pcm_hw_constraints_complete(%struct.snd_pcm_substream* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %55 = call i32 @pcm_dbg(%struct.snd_pcm* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %58 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  store %struct.snd_pcm_substream* %57, %struct.snd_pcm_substream** %58, align 8
  store i32 0, i32* %5, align 4
  br label %63

59:                                               ; preds = %53, %45, %33
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %61 = call i32 @snd_pcm_release_substream(%struct.snd_pcm_substream* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %56, %25, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @snd_pcm_attach_substream(%struct.snd_pcm*, i32, %struct.file*, %struct.snd_pcm_substream**) #1

declare dso_local i32 @snd_pcm_hw_constraints_init(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pcm_dbg(%struct.snd_pcm*, i8*) #1

declare dso_local i32 @snd_pcm_hw_constraints_complete(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_release_substream(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
