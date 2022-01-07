; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.neigh_table = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @__neigh_create(%struct.neigh_table* %0, i8* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.neighbour* @___neigh_create(%struct.neigh_table* %9, i8* %10, %struct.net_device* %11, i32 0, i32 %12)
  ret %struct.neighbour* %13
}

declare dso_local %struct.neighbour* @___neigh_create(%struct.neigh_table*, i8*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
