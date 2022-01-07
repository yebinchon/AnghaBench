; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_init_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_init_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_oxfw_stream_init_duplex(%struct.snd_oxfw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_oxfw*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %3, align 8
  %5 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %6 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %7 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %6, i32 0, i32 2
  %8 = call i32 @init_stream(%struct.snd_oxfw* %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %15 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %20 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %21 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %20, i32 0, i32 0
  %22 = call i32 @init_stream(%struct.snd_oxfw* %19, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %27 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %28 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %27, i32 0, i32 2
  %29 = call i32 @destroy_stream(%struct.snd_oxfw* %26, i32* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %34 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %33, i32 0, i32 3
  %35 = call i32 @amdtp_domain_init(i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %40 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %41 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %40, i32 0, i32 2
  %42 = call i32 @destroy_stream(%struct.snd_oxfw* %39, i32* %41)
  %43 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %44 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %49 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %50 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %49, i32 0, i32 0
  %51 = call i32 @destroy_stream(%struct.snd_oxfw* %48, i32* %50)
  br label %52

52:                                               ; preds = %47, %38
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %25, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @init_stream(%struct.snd_oxfw*, i32*) #1

declare dso_local i32 @destroy_stream(%struct.snd_oxfw*, i32*) #1

declare dso_local i32 @amdtp_domain_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
