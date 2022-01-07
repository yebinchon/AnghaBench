; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_put_child_root.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_put_child_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*, i32, %struct.key_vector*)* @put_child_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_child_root(%struct.key_vector* %0, i32 %1, %struct.key_vector* %2) #0 {
  %4 = alloca %struct.key_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.key_vector*, align 8
  store %struct.key_vector* %0, %struct.key_vector** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.key_vector* %2, %struct.key_vector** %6, align 8
  %7 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %8 = call i64 @IS_TRIE(%struct.key_vector* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %12 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %17 = call i32 @rcu_assign_pointer(i32 %15, %struct.key_vector* %16)
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %22 = call i32 @get_index(i32 %20, %struct.key_vector* %21)
  %23 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %24 = call i32 @put_child(%struct.key_vector* %19, i32 %22, %struct.key_vector* %23)
  br label %25

25:                                               ; preds = %18, %10
  ret void
}

declare dso_local i64 @IS_TRIE(%struct.key_vector*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.key_vector*) #1

declare dso_local i32 @put_child(%struct.key_vector*, i32, %struct.key_vector*) #1

declare dso_local i32 @get_index(i32, %struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
