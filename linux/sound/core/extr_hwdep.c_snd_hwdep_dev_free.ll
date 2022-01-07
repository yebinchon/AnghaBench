; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_dev_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_dev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_hwdep* }
%struct.snd_hwdep = type { i32, i32 (%struct.snd_hwdep*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_hwdep_dev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hwdep_dev_free(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca %struct.snd_hwdep*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %5 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %6 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %5, i32 0, i32 0
  %7 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  store %struct.snd_hwdep* %7, %struct.snd_hwdep** %4, align 8
  %8 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %9 = icmp ne %struct.snd_hwdep* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %13 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %12, i32 0, i32 1
  %14 = load i32 (%struct.snd_hwdep*)*, i32 (%struct.snd_hwdep*)** %13, align 8
  %15 = icmp ne i32 (%struct.snd_hwdep*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %18 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %17, i32 0, i32 1
  %19 = load i32 (%struct.snd_hwdep*)*, i32 (%struct.snd_hwdep*)** %18, align 8
  %20 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %21 = call i32 %19(%struct.snd_hwdep* %20)
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %24 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %23, i32 0, i32 0
  %25 = call i32 @put_device(i32* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
