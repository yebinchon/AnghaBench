; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_update_children.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_update_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*)* @update_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_children(%struct.key_vector* %0) #0 {
  %2 = alloca %struct.key_vector*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.key_vector*, align 8
  store %struct.key_vector* %0, %struct.key_vector** %2, align 8
  %5 = load %struct.key_vector*, %struct.key_vector** %2, align 8
  %6 = call i64 @child_length(%struct.key_vector* %5)
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %29, %17, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load %struct.key_vector*, %struct.key_vector** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %3, align 8
  %14 = call %struct.key_vector* @get_child(%struct.key_vector* %11, i64 %13)
  store %struct.key_vector* %14, %struct.key_vector** %4, align 8
  %15 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %16 = icmp ne %struct.key_vector* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %7

18:                                               ; preds = %10
  %19 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %20 = call %struct.key_vector* @node_parent(%struct.key_vector* %19)
  %21 = load %struct.key_vector*, %struct.key_vector** %2, align 8
  %22 = icmp eq %struct.key_vector* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  call void @update_children(%struct.key_vector* %24)
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %27 = load %struct.key_vector*, %struct.key_vector** %2, align 8
  %28 = call i32 @node_set_parent(%struct.key_vector* %26, %struct.key_vector* %27)
  br label %29

29:                                               ; preds = %25, %23
  br label %7

30:                                               ; preds = %7
  ret void
}

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i64) #1

declare dso_local %struct.key_vector* @node_parent(%struct.key_vector*) #1

declare dso_local i32 @node_set_parent(%struct.key_vector*, %struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
