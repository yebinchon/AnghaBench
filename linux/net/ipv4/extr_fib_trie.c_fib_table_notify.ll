; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_table_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_table_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_table = type { i64 }
%struct.notifier_block = type { i32 }
%struct.trie = type { %struct.key_vector* }
%struct.key_vector = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib_table*, %struct.notifier_block*)* @fib_table_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib_table_notify(%struct.net* %0, %struct.fib_table* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.fib_table*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.trie*, align 8
  %8 = alloca %struct.key_vector*, align 8
  %9 = alloca %struct.key_vector*, align 8
  %10 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.fib_table* %1, %struct.fib_table** %5, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  %11 = load %struct.fib_table*, %struct.fib_table** %5, align 8
  %12 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.trie*
  store %struct.trie* %14, %struct.trie** %7, align 8
  %15 = load %struct.trie*, %struct.trie** %7, align 8
  %16 = getelementptr inbounds %struct.trie, %struct.trie* %15, i32 0, i32 0
  %17 = load %struct.key_vector*, %struct.key_vector** %16, align 8
  store %struct.key_vector* %17, %struct.key_vector** %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %38, %3
  %19 = load i64, i64* %10, align 8
  %20 = call %struct.key_vector* @leaf_walk_rcu(%struct.key_vector** %9, i64 %19)
  store %struct.key_vector* %20, %struct.key_vector** %8, align 8
  %21 = icmp ne %struct.key_vector* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.net*, %struct.net** %4, align 8
  %24 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %25 = load %struct.fib_table*, %struct.fib_table** %5, align 8
  %26 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %27 = call i32 @fib_leaf_notify(%struct.net* %23, %struct.key_vector* %24, %struct.fib_table* %25, %struct.notifier_block* %26)
  %28 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %29 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %34 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %39

38:                                               ; preds = %22
  br label %18

39:                                               ; preds = %37, %18
  ret void
}

declare dso_local %struct.key_vector* @leaf_walk_rcu(%struct.key_vector**, i64) #1

declare dso_local i32 @fib_leaf_notify(%struct.net*, %struct.key_vector*, %struct.fib_table*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
