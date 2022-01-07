; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_stop_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_stop_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i64, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_oxfw_stream_stop_duplex(%struct.snd_oxfw* %0) #0 {
  %2 = alloca %struct.snd_oxfw*, align 8
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %2, align 8
  %3 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %4 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %9 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %8, i32 0, i32 4
  %10 = call i32 @amdtp_domain_stop(i32* %9)
  %11 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %12 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %11, i32 0, i32 3
  %13 = call i32 @cmp_connection_break(i32* %12)
  %14 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %15 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %14, i32 0, i32 3
  %16 = call i32 @cmp_connection_release(i32* %15)
  %17 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %18 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %23 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %22, i32 0, i32 1
  %24 = call i32 @cmp_connection_break(i32* %23)
  %25 = load %struct.snd_oxfw*, %struct.snd_oxfw** %2, align 8
  %26 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %25, i32 0, i32 1
  %27 = call i32 @cmp_connection_release(i32* %26)
  br label %28

28:                                               ; preds = %21, %7
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @cmp_connection_break(i32*) #1

declare dso_local i32 @cmp_connection_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
