; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_init_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_init_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_init_duplex(%struct.snd_dg00x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dg00x*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %3, align 8
  %5 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %6 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %7 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %6, i32 0, i32 1
  %8 = call i32 @init_stream(%struct.snd_dg00x* %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %15 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %16 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %15, i32 0, i32 0
  %17 = call i32 @init_stream(%struct.snd_dg00x* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %22 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %23 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %22, i32 0, i32 1
  %24 = call i32 @destroy_stream(%struct.snd_dg00x* %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %27 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %26, i32 0, i32 2
  %28 = call i32 @amdtp_domain_init(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %33 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %34 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %33, i32 0, i32 1
  %35 = call i32 @destroy_stream(%struct.snd_dg00x* %32, i32* %34)
  %36 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %37 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %38 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %37, i32 0, i32 0
  %39 = call i32 @destroy_stream(%struct.snd_dg00x* %36, i32* %38)
  br label %40

40:                                               ; preds = %31, %25
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @init_stream(%struct.snd_dg00x*, i32*) #1

declare dso_local i32 @destroy_stream(%struct.snd_dg00x*, i32*) #1

declare dso_local i32 @amdtp_domain_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
