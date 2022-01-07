; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_item_remove.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.parman*, %struct.parman_prio*, %struct.parman_item*)* }
%struct.parman_prio = type { i32 }
%struct.parman_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parman_item_remove(%struct.parman* %0, %struct.parman_prio* %1, %struct.parman_item* %2) #0 {
  %4 = alloca %struct.parman*, align 8
  %5 = alloca %struct.parman_prio*, align 8
  %6 = alloca %struct.parman_item*, align 8
  store %struct.parman* %0, %struct.parman** %4, align 8
  store %struct.parman_prio* %1, %struct.parman_prio** %5, align 8
  store %struct.parman_item* %2, %struct.parman_item** %6, align 8
  %7 = load %struct.parman*, %struct.parman** %4, align 8
  %8 = getelementptr inbounds %struct.parman, %struct.parman* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.parman*, %struct.parman_prio*, %struct.parman_item*)*, i32 (%struct.parman*, %struct.parman_prio*, %struct.parman_item*)** %10, align 8
  %12 = load %struct.parman*, %struct.parman** %4, align 8
  %13 = load %struct.parman_prio*, %struct.parman_prio** %5, align 8
  %14 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %15 = call i32 %11(%struct.parman* %12, %struct.parman_prio* %13, %struct.parman_item* %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
