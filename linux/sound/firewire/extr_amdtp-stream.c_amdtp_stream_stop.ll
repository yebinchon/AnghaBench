; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*)* @amdtp_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdtp_stream_stop(%struct.amdtp_stream* %0) #0 {
  %2 = alloca %struct.amdtp_stream*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %2, align 8
  %3 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %4 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %7 = call i32 @amdtp_stream_running(%struct.amdtp_stream* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %11 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %10, i32 0, i32 1
  %12 = call i32 @mutex_unlock(i32* %11)
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %15 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %14, i32 0, i32 6
  %16 = call i32 @tasklet_kill(i32* %15)
  %17 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %18 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fw_iso_context_stop(i32 %19)
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %22 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fw_iso_context_destroy(i32 %23)
  %25 = call i32 @ERR_PTR(i32 -1)
  %26 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %27 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %29 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %28, i32 0, i32 4
  %30 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %31 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iso_packets_buffer_destroy(i32* %29, i32 %32)
  %34 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %35 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %39 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %41 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdtp_stream_running(%struct.amdtp_stream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @fw_iso_context_stop(i32) #1

declare dso_local i32 @fw_iso_context_destroy(i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @iso_packets_buffer_destroy(i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
