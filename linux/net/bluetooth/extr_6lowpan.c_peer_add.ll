; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_peer_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_peer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_btle_dev = type { i32, i32 }
%struct.lowpan_peer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lowpan_btle_dev*, %struct.lowpan_peer*)* @peer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peer_add(%struct.lowpan_btle_dev* %0, %struct.lowpan_peer* %1) #0 {
  %3 = alloca %struct.lowpan_btle_dev*, align 8
  %4 = alloca %struct.lowpan_peer*, align 8
  store %struct.lowpan_btle_dev* %0, %struct.lowpan_btle_dev** %3, align 8
  store %struct.lowpan_peer* %1, %struct.lowpan_peer** %4, align 8
  %5 = load %struct.lowpan_peer*, %struct.lowpan_peer** %4, align 8
  %6 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %5, i32 0, i32 0
  %7 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %8 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %7, i32 0, i32 1
  %9 = call i32 @list_add_rcu(i32* %6, i32* %8)
  %10 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %11 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  ret void
}

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
