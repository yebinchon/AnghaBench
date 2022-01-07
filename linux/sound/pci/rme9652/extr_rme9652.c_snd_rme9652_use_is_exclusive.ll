; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_use_is_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_use_is_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*)* @snd_rme9652_use_is_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652* %0) #0 {
  %2 = alloca %struct.snd_rme9652*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %6 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %5, i32 0, i32 2
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %10 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %13 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %18 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %23 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21, %16, %1
  %28 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %29 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %28, i32 0, i32 2
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
