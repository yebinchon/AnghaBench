; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_add_peer_chan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_add_peer_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.lowpan_btle_dev = type { i32 }
%struct.lowpan_peer = type { %struct.l2cap_chan*, i32, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@devices_lock = common dso_local global i32 0, align 4
@do_notify_peers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_chan* (%struct.l2cap_chan*, %struct.lowpan_btle_dev*, i32)* @add_peer_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_chan* @add_peer_chan(%struct.l2cap_chan* %0, %struct.lowpan_btle_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.lowpan_btle_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lowpan_peer*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.lowpan_btle_dev* %1, %struct.lowpan_btle_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.lowpan_peer* @kzalloc(i32 32, i32 %9)
  store %struct.lowpan_peer* %10, %struct.lowpan_peer** %8, align 8
  %11 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %12 = icmp ne %struct.lowpan_peer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %4, align 8
  br label %57

14:                                               ; preds = %3
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %16 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %17 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %16, i32 0, i32 0
  store %struct.l2cap_chan* %15, %struct.l2cap_chan** %17, align 8
  %18 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %19 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %18, i32 0, i32 3
  %20 = call i32 @memset(i32* %19, i32 0, i32 4)
  %21 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %22 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 0
  %27 = call i32 @baswap(i8* %24, i32* %26)
  %28 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %29 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %28, i32 0, i32 3
  %30 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %31 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @lowpan_iphc_uncompress_eui48_lladdr(i32* %29, i64 %32)
  %34 = call i32 @spin_lock(i32* @devices_lock)
  %35 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %36 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %6, align 8
  %39 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %40 = call i32 @peer_add(%struct.lowpan_btle_dev* %38, %struct.lowpan_peer* %39)
  %41 = call i32 @spin_unlock(i32* @devices_lock)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %14
  %45 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %6, align 8
  %46 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %45, i32 0, i32 0
  %47 = load i32, i32* @do_notify_peers, align 4
  %48 = call i32 @INIT_DELAYED_WORK(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %14
  %50 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %6, align 8
  %51 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %50, i32 0, i32 0
  %52 = call i32 @msecs_to_jiffies(i32 100)
  %53 = call i32 @schedule_delayed_work(i32* %51, i32 %52)
  %54 = load %struct.lowpan_peer*, %struct.lowpan_peer** %8, align 8
  %55 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %54, i32 0, i32 0
  %56 = load %struct.l2cap_chan*, %struct.l2cap_chan** %55, align 8
  store %struct.l2cap_chan* %56, %struct.l2cap_chan** %4, align 8
  br label %57

57:                                               ; preds = %49, %13
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  ret %struct.l2cap_chan* %58
}

declare dso_local %struct.lowpan_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @baswap(i8*, i32*) #1

declare dso_local i32 @lowpan_iphc_uncompress_eui48_lladdr(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @peer_add(%struct.lowpan_btle_dev*, %struct.lowpan_peer*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
