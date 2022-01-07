; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }

@arp_tbl = common dso_local global %struct.neigh_table zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @arp_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_invalidate(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.neigh_table*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* @arp_tbl, i32* %4, %struct.net_device* %8)
  store %struct.neighbour* %9, %struct.neighbour** %5, align 8
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store %struct.neigh_table* @arp_tbl, %struct.neigh_table** %7, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %13 = icmp ne %struct.neighbour* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %16 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NUD_NOARP, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %24 = load i32, i32* @NUD_FAILED, align 4
  %25 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %26 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @neigh_update(%struct.neighbour* %23, i32* null, i32 %24, i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.neigh_table*, %struct.neigh_table** %7, align 8
  %31 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %30, i32 0, i32 0
  %32 = call i32 @write_lock_bh(i32* %31)
  %33 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %34 = call i32 @neigh_release(%struct.neighbour* %33)
  %35 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %36 = load %struct.neigh_table*, %struct.neigh_table** %7, align 8
  %37 = call i32 @neigh_remove_one(%struct.neighbour* %35, %struct.neigh_table* %36)
  %38 = load %struct.neigh_table*, %struct.neigh_table** %7, align 8
  %39 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %38, i32 0, i32 0
  %40 = call i32 @write_unlock_bh(i32* %39)
  br label %41

41:                                               ; preds = %29, %2
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_update(%struct.neighbour*, i32*, i32, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @neigh_remove_one(%struct.neighbour*, %struct.neigh_table*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
