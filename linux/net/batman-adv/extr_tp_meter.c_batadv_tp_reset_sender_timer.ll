; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_reset_sender_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_reset_sender_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tp_vars = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_tp_vars*)* @batadv_tp_reset_sender_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_reset_sender_timer(%struct.batadv_tp_vars* %0) #0 {
  %2 = alloca %struct.batadv_tp_vars*, align 8
  store %struct.batadv_tp_vars* %0, %struct.batadv_tp_vars** %2, align 8
  %3 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %3, i32 0, i32 2
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %13 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %12, i32 0, i32 1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %16 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  %19 = add nsw i64 %14, %18
  %20 = call i32 @mod_timer(i32* %13, i64 %19)
  br label %21

21:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
