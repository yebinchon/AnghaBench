; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.mtpav* }
%struct.mtpav = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*)* @snd_mtpav_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_free(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca %struct.mtpav*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %5 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %6 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %5, i32 0, i32 0
  %7 = load %struct.mtpav*, %struct.mtpav** %6, align 8
  store %struct.mtpav* %7, %struct.mtpav** %3, align 8
  %8 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %9 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %8, i32 0, i32 3
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %13 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %18 = call i32 @snd_mtpav_remove_output_timer(%struct.mtpav* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %21 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %20, i32 0, i32 3
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %25 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %30 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %33 = bitcast %struct.mtpav* %32 to i8*
  %34 = call i32 @free_irq(i64 %31, i8* %33)
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %37 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @release_and_free_resource(i32 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_mtpav_remove_output_timer(%struct.mtpav*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @release_and_free_resource(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
