; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_slot_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_slot_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_slot = type { %struct.slot* }
%struct.slot = type { %struct.slot*, %struct.slot*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixer_oss_slot*)* @snd_mixer_oss_slot_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixer_oss_slot_free(%struct.snd_mixer_oss_slot* %0) #0 {
  %2 = alloca %struct.snd_mixer_oss_slot*, align 8
  %3 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_slot* %0, %struct.snd_mixer_oss_slot** %2, align 8
  %4 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %2, align 8
  %5 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %4, i32 0, i32 0
  %6 = load %struct.slot*, %struct.slot** %5, align 8
  store %struct.slot* %6, %struct.slot** %3, align 8
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = icmp ne %struct.slot* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.slot*, %struct.slot** %3, align 8
  %11 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.slot*, %struct.slot** %3, align 8
  %16 = getelementptr inbounds %struct.slot, %struct.slot* %15, i32 0, i32 0
  %17 = load %struct.slot*, %struct.slot** %16, align 8
  %18 = icmp ne %struct.slot* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.slot*, %struct.slot** %3, align 8
  %21 = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 0
  %22 = load %struct.slot*, %struct.slot** %21, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 1
  %24 = load %struct.slot*, %struct.slot** %23, align 8
  %25 = call i32 @kfree(%struct.slot* %24)
  %26 = load %struct.slot*, %struct.slot** %3, align 8
  %27 = getelementptr inbounds %struct.slot, %struct.slot* %26, i32 0, i32 0
  %28 = load %struct.slot*, %struct.slot** %27, align 8
  %29 = call i32 @kfree(%struct.slot* %28)
  br label %30

30:                                               ; preds = %19, %14, %9
  %31 = load %struct.slot*, %struct.slot** %3, align 8
  %32 = call i32 @kfree(%struct.slot* %31)
  br label %33

33:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @kfree(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
