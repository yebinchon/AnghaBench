; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_adat1_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_adat1_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32 }

@RME9652_ADAT1_INTERNAL = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_adat1_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_adat1_input(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @RME9652_ADAT1_INTERNAL, align 4
  %10 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %11 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @RME9652_ADAT1_INTERNAL, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %18 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %23 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %28 = call i32 @rme9652_stop(%struct.snd_rme9652* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %31 = load i32, i32* @RME9652_control_register, align 4
  %32 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %33 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rme9652_write(%struct.snd_rme9652* %30, i32 %31, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %40 = call i32 @rme9652_start(%struct.snd_rme9652* %39)
  br label %41

41:                                               ; preds = %38, %29
  ret i32 0
}

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_start(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
