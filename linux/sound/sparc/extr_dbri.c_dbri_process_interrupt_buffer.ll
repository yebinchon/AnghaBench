; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_dbri_process_interrupt_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_dbri_process_interrupt_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@DBRI_INT_BLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dbri*)* @dbri_process_interrupt_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbri_process_interrupt_buffer(%struct.snd_dbri* %0) #0 {
  %2 = alloca %struct.snd_dbri*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_dbri* %0, %struct.snd_dbri** %2, align 8
  br label %4

4:                                                ; preds = %38, %1
  %5 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %11 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %18 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %23 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %27 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %31 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DBRI_INT_BLK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %37 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %36, i32 0, i32 0
  store i64 1, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %16
  %39 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @dbri_process_one_interrupt(%struct.snd_dbri* %39, i64 %40)
  br label %4

42:                                               ; preds = %4
  ret void
}

declare dso_local i32 @dbri_process_one_interrupt(%struct.snd_dbri*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
