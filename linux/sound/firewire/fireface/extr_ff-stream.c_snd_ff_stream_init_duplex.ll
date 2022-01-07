; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_init_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_init_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ff_stream_init_duplex(%struct.snd_ff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ff*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %3, align 8
  %5 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %6 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %6, i32 0, i32 1
  %8 = call i32 @init_stream(%struct.snd_ff* %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %15 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %15, i32 0, i32 0
  %17 = call i32 @init_stream(%struct.snd_ff* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %22 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %22, i32 0, i32 1
  %24 = call i32 @destroy_stream(%struct.snd_ff* %21, i32* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %13
  %27 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %27, i32 0, i32 2
  %29 = call i32 @amdtp_domain_init(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %34 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %35 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %34, i32 0, i32 1
  %36 = call i32 @destroy_stream(%struct.snd_ff* %33, i32* %35)
  %37 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %38 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %39 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %38, i32 0, i32 0
  %40 = call i32 @destroy_stream(%struct.snd_ff* %37, i32* %39)
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %20, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @init_stream(%struct.snd_ff*, i32*) #1

declare dso_local i32 @destroy_stream(%struct.snd_ff*, i32*) #1

declare dso_local i32 @amdtp_domain_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
