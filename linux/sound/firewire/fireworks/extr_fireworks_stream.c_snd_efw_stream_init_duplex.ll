; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_snd_efw_stream_init_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_snd_efw_stream_init_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32, i32, i32 }

@SND_EFW_TRANSPORT_MODE_IEC61883 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_efw_stream_init_duplex(%struct.snd_efw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_efw*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %3, align 8
  %5 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %6 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %7 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %6, i32 0, i32 1
  %8 = call i32 @init_stream(%struct.snd_efw* %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %15 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %16 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %15, i32 0, i32 0
  %17 = call i32 @init_stream(%struct.snd_efw* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %22 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %23 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %22, i32 0, i32 1
  %24 = call i32 @destroy_stream(%struct.snd_efw* %21, i32* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %13
  %27 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %28 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %27, i32 0, i32 2
  %29 = call i32 @amdtp_domain_init(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %34 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %35 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %34, i32 0, i32 1
  %36 = call i32 @destroy_stream(%struct.snd_efw* %33, i32* %35)
  %37 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %38 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %39 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %38, i32 0, i32 0
  %40 = call i32 @destroy_stream(%struct.snd_efw* %37, i32* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %59

42:                                               ; preds = %26
  %43 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %44 = load i32, i32* @SND_EFW_TRANSPORT_MODE_IEC61883, align 4
  %45 = call i32 @snd_efw_command_set_tx_mode(%struct.snd_efw* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %50 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %51 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %50, i32 0, i32 1
  %52 = call i32 @destroy_stream(%struct.snd_efw* %49, i32* %51)
  %53 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %54 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %55 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %54, i32 0, i32 0
  %56 = call i32 @destroy_stream(%struct.snd_efw* %53, i32* %55)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %32, %20, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @init_stream(%struct.snd_efw*, i32*) #1

declare dso_local i32 @destroy_stream(%struct.snd_efw*, i32*) #1

declare dso_local i32 @amdtp_domain_init(i32*) #1

declare dso_local i32 @snd_efw_command_set_tx_mode(%struct.snd_efw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
