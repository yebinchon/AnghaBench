; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_lock_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_lock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_bebob_stream_lock_release(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %3 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %4 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %7 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %16 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %22 = call i32 @snd_bebob_stream_lock_changed(%struct.snd_bebob* %21)
  br label %23

23:                                               ; preds = %20, %14
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %26 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_irq(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snd_bebob_stream_lock_changed(%struct.snd_bebob*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
