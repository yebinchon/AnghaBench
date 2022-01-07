; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_node_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_node_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*, %struct.key_vector*)* @node_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_set_parent(%struct.key_vector* %0, %struct.key_vector* %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca %struct.key_vector*, align 8
  store %struct.key_vector* %0, %struct.key_vector** %3, align 8
  store %struct.key_vector* %1, %struct.key_vector** %4, align 8
  %5 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %6 = icmp ne %struct.key_vector* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %9 = call %struct.TYPE_2__* @tn_info(%struct.key_vector* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %13 = call i32 @rcu_assign_pointer(i32 %11, %struct.key_vector* %12)
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, %struct.key_vector*) #1

declare dso_local %struct.TYPE_2__* @tn_info(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
