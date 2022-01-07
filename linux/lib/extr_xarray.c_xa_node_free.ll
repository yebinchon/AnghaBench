; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xa_node_free.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xa_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i32, i32, i32 }

@XA_RCU_FREE = common dso_local global i32 0, align 4
@radix_tree_node_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xa_node*)* @xa_node_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xa_node_free(%struct.xa_node* %0) #0 {
  %2 = alloca %struct.xa_node*, align 8
  store %struct.xa_node* %0, %struct.xa_node** %2, align 8
  %3 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %4 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %5 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %4, i32 0, i32 2
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @XA_NODE_BUG_ON(%struct.xa_node* %3, i32 %9)
  %11 = load i32, i32* @XA_RCU_FREE, align 4
  %12 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %13 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %15 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %14, i32 0, i32 0
  %16 = load i32, i32* @radix_tree_node_rcu_free, align 4
  %17 = call i32 @call_rcu(i32* %15, i32 %16)
  ret void
}

declare dso_local i32 @XA_NODE_BUG_ON(%struct.xa_node*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
