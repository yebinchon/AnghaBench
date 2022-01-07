; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_set_probe_once.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_set_probe_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@NUD_FAILED = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@RETRANS_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__neigh_set_probe_once(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %3 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %4 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %11 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %10, i32 0, i32 3
  store i64 %9, i64* %11, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NUD_FAILED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  br label %37

19:                                               ; preds = %8
  %20 = load i32, i32* @NUD_INCOMPLETE, align 4
  %21 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %22 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %24 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %23, i32 0, i32 2
  %25 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %26 = call i32 @neigh_max_probes(%struct.neighbour* %25)
  %27 = call i32 @atomic_set(i32* %24, i32 %26)
  %28 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RETRANS_TIME, align 4
  %34 = call i64 @NEIGH_VAR(i32 %32, i32 %33)
  %35 = add nsw i64 %29, %34
  %36 = call i32 @neigh_add_timer(%struct.neighbour* %28, i64 %35)
  br label %37

37:                                               ; preds = %19, %18, %7
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_max_probes(%struct.neighbour*) #1

declare dso_local i32 @neigh_add_timer(%struct.neighbour*, i64) #1

declare dso_local i64 @NEIGH_VAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
