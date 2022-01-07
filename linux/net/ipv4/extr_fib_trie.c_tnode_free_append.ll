; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_tnode_free_append.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_tnode_free_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*, %struct.key_vector*)* @tnode_free_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tnode_free_append(%struct.key_vector* %0, %struct.key_vector* %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca %struct.key_vector*, align 8
  store %struct.key_vector* %0, %struct.key_vector** %3, align 8
  store %struct.key_vector* %1, %struct.key_vector** %4, align 8
  %5 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %6 = call %struct.TYPE_4__* @tn_info(%struct.key_vector* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %11 = call %struct.TYPE_4__* @tn_info(%struct.key_vector* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %15 = call %struct.TYPE_4__* @tn_info(%struct.key_vector* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %18 = call %struct.TYPE_4__* @tn_info(%struct.key_vector* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %20, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @tn_info(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
