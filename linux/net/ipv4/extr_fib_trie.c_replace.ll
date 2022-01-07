; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_replace.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.key_vector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (%struct.trie*, %struct.key_vector*, %struct.key_vector*)* @replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @replace(%struct.trie* %0, %struct.key_vector* %1, %struct.key_vector* %2) #0 {
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.key_vector*, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca %struct.key_vector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.key_vector*, align 8
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.key_vector* %1, %struct.key_vector** %5, align 8
  store %struct.key_vector* %2, %struct.key_vector** %6, align 8
  %10 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %11 = call %struct.key_vector* @node_parent(%struct.key_vector* %10)
  store %struct.key_vector* %11, %struct.key_vector** %7, align 8
  %12 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %13 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %14 = call i32 @NODE_INIT_PARENT(%struct.key_vector* %12, %struct.key_vector* %13)
  %15 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %16 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %17 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %20 = call i32 @put_child_root(%struct.key_vector* %15, i32 %18, %struct.key_vector* %19)
  %21 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %22 = call i32 @update_children(%struct.key_vector* %21)
  %23 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %24 = call i32 @tnode_free(%struct.key_vector* %23)
  %25 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %26 = call i64 @child_length(%struct.key_vector* %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %43, %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %8, align 8
  %34 = call %struct.key_vector* @get_child(%struct.key_vector* %31, i64 %33)
  store %struct.key_vector* %34, %struct.key_vector** %9, align 8
  %35 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %36 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %37 = call i64 @tnode_full(%struct.key_vector* %35, %struct.key_vector* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.trie*, %struct.trie** %4, align 8
  %41 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %42 = call %struct.key_vector* @resize(%struct.trie* %40, %struct.key_vector* %41)
  store %struct.key_vector* %42, %struct.key_vector** %6, align 8
  br label %43

43:                                               ; preds = %39, %30
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  ret %struct.key_vector* %45
}

declare dso_local %struct.key_vector* @node_parent(%struct.key_vector*) #1

declare dso_local i32 @NODE_INIT_PARENT(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @put_child_root(%struct.key_vector*, i32, %struct.key_vector*) #1

declare dso_local i32 @update_children(%struct.key_vector*) #1

declare dso_local i32 @tnode_free(%struct.key_vector*) #1

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i64) #1

declare dso_local i64 @tnode_full(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local %struct.key_vector* @resize(%struct.trie*, %struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
