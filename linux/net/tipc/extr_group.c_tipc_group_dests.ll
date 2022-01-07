; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_dests.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_dests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nlist = type { i32 }
%struct.tipc_group = type { %struct.tipc_nlist }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_nlist* @tipc_group_dests(%struct.tipc_group* %0) #0 {
  %2 = alloca %struct.tipc_group*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %2, align 8
  %3 = load %struct.tipc_group*, %struct.tipc_group** %2, align 8
  %4 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %3, i32 0, i32 0
  ret %struct.tipc_nlist* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
