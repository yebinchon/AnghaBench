; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_pcm.c_get_pcm_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_pcm.c_get_pcm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2sbus_dev = type { %struct.pcm_info, %struct.pcm_info }
%struct.pcm_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2sbus_dev*, i32, %struct.pcm_info**, %struct.pcm_info**)* @get_pcm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pcm_info(%struct.i2sbus_dev* %0, i32 %1, %struct.pcm_info** %2, %struct.pcm_info** %3) #0 {
  %5 = alloca %struct.i2sbus_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_info**, align 8
  %8 = alloca %struct.pcm_info**, align 8
  store %struct.i2sbus_dev* %0, %struct.i2sbus_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pcm_info** %2, %struct.pcm_info*** %7, align 8
  store %struct.pcm_info** %3, %struct.pcm_info*** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %4
  %12 = load %struct.pcm_info**, %struct.pcm_info*** %7, align 8
  %13 = icmp ne %struct.pcm_info** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %16 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %15, i32 0, i32 0
  %17 = load %struct.pcm_info**, %struct.pcm_info*** %7, align 8
  store %struct.pcm_info* %16, %struct.pcm_info** %17, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.pcm_info**, %struct.pcm_info*** %8, align 8
  %20 = icmp ne %struct.pcm_info** %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %23 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %22, i32 0, i32 1
  %24 = load %struct.pcm_info**, %struct.pcm_info*** %8, align 8
  store %struct.pcm_info* %23, %struct.pcm_info** %24, align 8
  br label %25

25:                                               ; preds = %21, %18
  br label %41

26:                                               ; preds = %4
  %27 = load %struct.pcm_info**, %struct.pcm_info*** %7, align 8
  %28 = icmp ne %struct.pcm_info** %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %31 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %30, i32 0, i32 1
  %32 = load %struct.pcm_info**, %struct.pcm_info*** %7, align 8
  store %struct.pcm_info* %31, %struct.pcm_info** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.pcm_info**, %struct.pcm_info*** %8, align 8
  %35 = icmp ne %struct.pcm_info** %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %38 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %37, i32 0, i32 0
  %39 = load %struct.pcm_info**, %struct.pcm_info*** %8, align 8
  store %struct.pcm_info* %38, %struct.pcm_info** %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
