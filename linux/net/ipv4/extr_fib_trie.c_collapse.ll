; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_collapse.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.key_vector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (%struct.trie*, %struct.key_vector*)* @collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @collapse(%struct.trie* %0, %struct.key_vector* %1) #0 {
  %3 = alloca %struct.trie*, align 8
  %4 = alloca %struct.key_vector*, align 8
  %5 = alloca %struct.key_vector*, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca i64, align 8
  store %struct.trie* %0, %struct.trie** %3, align 8
  store %struct.key_vector* %1, %struct.key_vector** %4, align 8
  store %struct.key_vector* null, %struct.key_vector** %5, align 8
  %8 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %9 = call i64 @child_length(%struct.key_vector* %8)
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %18, %2
  %11 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %12 = icmp ne %struct.key_vector* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %7, align 8
  %22 = call %struct.key_vector* @get_child(%struct.key_vector* %19, i64 %21)
  store %struct.key_vector* %22, %struct.key_vector** %5, align 8
  br label %10

23:                                               ; preds = %16
  %24 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %25 = call %struct.key_vector* @node_parent(%struct.key_vector* %24)
  store %struct.key_vector* %25, %struct.key_vector** %6, align 8
  %26 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %27 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %28 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %31 = call i32 @put_child_root(%struct.key_vector* %26, i32 %29, %struct.key_vector* %30)
  %32 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %33 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %34 = call i32 @node_set_parent(%struct.key_vector* %32, %struct.key_vector* %33)
  %35 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %36 = call i32 @node_free(%struct.key_vector* %35)
  %37 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  ret %struct.key_vector* %37
}

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i64) #1

declare dso_local %struct.key_vector* @node_parent(%struct.key_vector*) #1

declare dso_local i32 @put_child_root(%struct.key_vector*, i32, %struct.key_vector*) #1

declare dso_local i32 @node_set_parent(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @node_free(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
