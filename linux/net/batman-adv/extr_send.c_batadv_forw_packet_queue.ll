; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { i32, i32, i32 }
%struct.hlist_head = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Requeuing after batadv_forw_packet_steal() not allowed!\0A\00", align 1
@batadv_event_workqueue = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_forw_packet*, i32*, %struct.hlist_head*, i64)* @batadv_forw_packet_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_forw_packet_queue(%struct.batadv_forw_packet* %0, i32* %1, %struct.hlist_head* %2, i64 %3) #0 {
  %5 = alloca %struct.batadv_forw_packet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hlist_head*, align 8
  %8 = alloca i64, align 8
  store %struct.batadv_forw_packet* %0, %struct.batadv_forw_packet** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hlist_head* %2, %struct.hlist_head** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %12 = call i64 @batadv_forw_packet_was_stolen(%struct.batadv_forw_packet* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %16 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %15, i32 0, i32 2
  %17 = call i32 @hlist_fake(i32* %16)
  %18 = call i32 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @spin_unlock_bh(i32* %19)
  br label %38

21:                                               ; preds = %4
  %22 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %23 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %22, i32 0, i32 1
  %24 = call i32 @hlist_del_init(i32* %23)
  %25 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %26 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %25, i32 0, i32 1
  %27 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %28 = call i32 @hlist_add_head(i32* %26, %struct.hlist_head* %27)
  %29 = load i32, i32* @batadv_event_workqueue, align 4
  %30 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %31 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @jiffies, align 8
  %34 = sub i64 %32, %33
  %35 = call i32 @queue_delayed_work(i32 %29, i32* %31, i64 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @spin_unlock_bh(i32* %36)
  br label %38

38:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @batadv_forw_packet_was_stolen(%struct.batadv_forw_packet*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @hlist_fake(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
