; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i32, i32, i32, i32, i64, %struct.ieee80211_sub_if_data*, i32, i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mesh_path_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mesh_path* (%struct.ieee80211_sub_if_data*, i32*, i32)* @mesh_path_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mesh_path* @mesh_path_new(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mesh_path*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mesh_path*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.mesh_path* @kzalloc(i32 48, i32 %9)
  store %struct.mesh_path* %10, %struct.mesh_path** %8, align 8
  %11 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %12 = icmp ne %struct.mesh_path* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.mesh_path* null, %struct.mesh_path** %4, align 8
  br label %46

14:                                               ; preds = %3
  %15 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %16 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcpy(i32 %17, i32* %18, i32 %19)
  %21 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %22 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @eth_broadcast_addr(i32 %23)
  %25 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %26 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %28 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %29 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %28, i32 0, i32 6
  store %struct.ieee80211_sub_if_data* %27, %struct.ieee80211_sub_if_data** %29, align 8
  %30 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %31 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %33 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %32, i32 0, i32 4
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load i32, i32* @jiffies, align 4
  %36 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %37 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %39 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %42 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %41, i32 0, i32 1
  %43 = load i32, i32* @mesh_path_timer, align 4
  %44 = call i32 @timer_setup(i32* %42, i32 %43, i32 0)
  %45 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  store %struct.mesh_path* %45, %struct.mesh_path** %4, align 8
  br label %46

46:                                               ; preds = %14, %13
  %47 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  ret %struct.mesh_path* %47
}

declare dso_local %struct.mesh_path* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
