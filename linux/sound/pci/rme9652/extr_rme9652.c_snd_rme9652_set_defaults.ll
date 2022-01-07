; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i64, i64 }

@RME9652_inp_0 = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i64 0, align 8
@RME9652_NCHANNELS = common dso_local global i32 0, align 4
@RME9652_thru_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rme9652*)* @snd_rme9652_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme9652_set_defaults(%struct.snd_rme9652* %0) #0 {
  %2 = alloca %struct.snd_rme9652*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %2, align 8
  %4 = load i32, i32* @RME9652_inp_0, align 4
  %5 = call i32 @rme9652_encode_latency(i32 7)
  %6 = or i32 %4, %5
  %7 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %8 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %10 = load i64, i64* @RME9652_control_register, align 8
  %11 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %12 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rme9652_write(%struct.snd_rme9652* %9, i64 %10, i32 %13)
  %15 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %16 = call i32 @rme9652_reset_hw_pointer(%struct.snd_rme9652* %15)
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %18 = call i32 @rme9652_compute_period_size(%struct.snd_rme9652* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @RME9652_NCHANNELS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %25 = load i64, i64* @RME9652_thru_base, align 8
  %26 = load i32, i32* %3, align 4
  %27 = mul i32 %26, 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @rme9652_write(%struct.snd_rme9652* %24, i64 %29, i32 0)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %36 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %38 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %40 = call i32 @rme9652_set_rate(%struct.snd_rme9652* %39, i32 48000)
  ret void
}

declare dso_local i32 @rme9652_encode_latency(i32) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i64, i32) #1

declare dso_local i32 @rme9652_reset_hw_pointer(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_compute_period_size(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_set_rate(%struct.snd_rme9652*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
