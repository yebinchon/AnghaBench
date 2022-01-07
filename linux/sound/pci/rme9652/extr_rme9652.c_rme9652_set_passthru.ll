; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_passthru.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32 }

@RME9652_inp_0 = common dso_local global i32 0, align 4
@RME9652_start_bit = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_passthru(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %9 = call i32 @rme9652_set_thru(%struct.snd_rme9652* %8, i32 -1, i32 1)
  %10 = load i32, i32* @RME9652_inp_0, align 4
  %11 = call i32 @rme9652_encode_latency(i32 7)
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RME9652_start_bit, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %16 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %18 = call i32 @rme9652_reset_hw_pointer(%struct.snd_rme9652* %17)
  %19 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %20 = load i32, i32* @RME9652_control_register, align 4
  %21 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %22 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rme9652_write(%struct.snd_rme9652* %19, i32 %20, i32 %23)
  %25 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %26 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %29 = call i32 @rme9652_set_thru(%struct.snd_rme9652* %28, i32 -1, i32 0)
  %30 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %31 = call i32 @rme9652_stop(%struct.snd_rme9652* %30)
  %32 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %33 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %7
  ret i32 0
}

declare dso_local i32 @rme9652_set_thru(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_encode_latency(i32) #1

declare dso_local i32 @rme9652_reset_hw_pointer(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
