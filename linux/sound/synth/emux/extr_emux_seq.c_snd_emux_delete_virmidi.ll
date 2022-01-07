; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_delete_virmidi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_delete_virmidi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_delete_virmidi(%struct.snd_emux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %3, align 8
  %5 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %6 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %5, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %14 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %19 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @snd_device_free(i32 %29, i64 %36)
  br label %38

38:                                               ; preds = %26, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %44 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @kfree(i64* %45)
  %47 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %48 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %47, i32 0, i32 1
  store i64* null, i64** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @snd_device_free(i32, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
