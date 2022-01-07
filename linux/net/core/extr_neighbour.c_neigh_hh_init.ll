; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_hh_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_hh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, %struct.hh_cache, %struct.TYPE_3__*, %struct.net_device* }
%struct.hh_cache = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.neighbour*, %struct.hh_cache*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*)* @neigh_hh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_hh_init(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hh_cache*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %6 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %7 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %15 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %14, i32 0, i32 1
  store %struct.hh_cache* %15, %struct.hh_cache** %5, align 8
  %16 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 0
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %20 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.neighbour*, %struct.hh_cache*, i32)*, i32 (%struct.neighbour*, %struct.hh_cache*, i32)** %27, align 8
  %29 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %30 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %28(%struct.neighbour* %29, %struct.hh_cache* %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %35 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %34, i32 0, i32 0
  %36 = call i32 @write_unlock_bh(i32* %35)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
