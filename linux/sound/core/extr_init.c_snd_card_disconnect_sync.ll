; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_disconnect_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_disconnect_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"snd_card_disconnect error (%d), skipping sync\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_card_disconnect_sync(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %4 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %5 = call i32 @snd_card_disconnect(%struct.snd_card* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @dev_err(i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %25 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wait_event_lock_irq(i32 %20, i32 %23, i32 %26)
  %28 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %31

31:                                               ; preds = %14, %8
  ret void
}

declare dso_local i32 @snd_card_disconnect(%struct.snd_card*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
