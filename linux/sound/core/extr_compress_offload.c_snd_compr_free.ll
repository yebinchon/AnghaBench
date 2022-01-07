; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_compr_runtime* }
%struct.snd_compr_runtime = type { i32, %struct.TYPE_5__, %struct.snd_compr_runtime*, i32 }
%struct.TYPE_5__ = type { %struct.snd_compr_runtime*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*, i32)* }
%struct.snd_compr_file = type { i32, %struct.TYPE_5__, %struct.snd_compr_file*, i32 }

@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_compr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_free(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snd_compr_file*, align 8
  %6 = alloca %struct.snd_compr_runtime*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  %10 = bitcast %struct.snd_compr_runtime* %9 to %struct.snd_compr_file*
  store %struct.snd_compr_file* %10, %struct.snd_compr_file** %5, align 8
  %11 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %12 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %13, align 8
  store %struct.snd_compr_runtime* %14, %struct.snd_compr_runtime** %6, align 8
  %15 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %16 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %33 [
    i32 128, label %22
    i32 130, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %24 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %27, align 8
  %29 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %30 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %29, i32 0, i32 1
  %31 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %32 = call i32 %28(%struct.TYPE_5__* %30, i32 %31)
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %36 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %39, align 8
  %41 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %42 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %41, i32 0, i32 1
  %43 = call i32 %40(%struct.TYPE_5__* %42)
  %44 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %45 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %46, align 8
  %48 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %34
  %52 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %53 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %54, align 8
  %56 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %55, i32 0, i32 2
  %57 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %56, align 8
  %58 = call i32 @kfree(%struct.snd_compr_runtime* %57)
  br label %59

59:                                               ; preds = %51, %34
  %60 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %61 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %62, align 8
  %64 = call i32 @kfree(%struct.snd_compr_runtime* %63)
  %65 = load %struct.snd_compr_file*, %struct.snd_compr_file** %5, align 8
  %66 = bitcast %struct.snd_compr_file* %65 to %struct.snd_compr_runtime*
  %67 = call i32 @kfree(%struct.snd_compr_runtime* %66)
  ret i32 0
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.snd_compr_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
