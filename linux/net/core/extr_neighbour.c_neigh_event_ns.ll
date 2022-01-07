; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_event_ns.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_event_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.neigh_table = type { i32 }
%struct.net_device = type { i32 }

@NUD_STALE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @neigh_event_ns(%struct.neigh_table* %0, i32* %1, i8* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.neighbour*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %10 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %4
  %22 = phi i1 [ true, %4 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call %struct.neighbour* @__neigh_lookup(%struct.neigh_table* %10, i8* %11, %struct.net_device* %12, i32 %23)
  store %struct.neighbour* %24, %struct.neighbour** %9, align 8
  %25 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %26 = icmp ne %struct.neighbour* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @NUD_STALE, align 4
  %31 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %32 = call i32 @neigh_update(%struct.neighbour* %28, i32* %29, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  ret %struct.neighbour* %34
}

declare dso_local %struct.neighbour* @__neigh_lookup(%struct.neigh_table*, i8*, %struct.net_device*, i32) #1

declare dso_local i32 @neigh_update(%struct.neighbour*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
