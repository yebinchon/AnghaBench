; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_insert_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.key_vector = type { i32 }
%struct.fib_alias = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trie*, %struct.key_vector*, %struct.fib_alias*, i32)* @fib_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_insert_node(%struct.trie* %0, %struct.key_vector* %1, %struct.fib_alias* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trie*, align 8
  %7 = alloca %struct.key_vector*, align 8
  %8 = alloca %struct.fib_alias*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_vector*, align 8
  %11 = alloca %struct.key_vector*, align 8
  %12 = alloca %struct.key_vector*, align 8
  store %struct.trie* %0, %struct.trie** %6, align 8
  store %struct.key_vector* %1, %struct.key_vector** %7, align 8
  store %struct.fib_alias* %2, %struct.fib_alias** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.fib_alias*, %struct.fib_alias** %8, align 8
  %15 = call %struct.key_vector* @leaf_new(i32 %13, %struct.fib_alias* %14)
  store %struct.key_vector* %15, %struct.key_vector** %11, align 8
  %16 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %17 = icmp ne %struct.key_vector* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %77

19:                                               ; preds = %4
  %20 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %23 = call i32 @get_index(i32 %21, %struct.key_vector* %22)
  %24 = call %struct.key_vector* @get_child(%struct.key_vector* %20, i32 %23)
  store %struct.key_vector* %24, %struct.key_vector** %10, align 8
  %25 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %26 = icmp ne %struct.key_vector* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %31 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %29, %32
  %34 = call i32 @__fls(i32 %33)
  %35 = call %struct.key_vector* @tnode_new(i32 %28, i32 %34, i32 1)
  store %struct.key_vector* %35, %struct.key_vector** %12, align 8
  %36 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  %37 = icmp ne %struct.key_vector* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %74

39:                                               ; preds = %27
  %40 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  %41 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %42 = call i32 @NODE_INIT_PARENT(%struct.key_vector* %40, %struct.key_vector* %41)
  %43 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  %46 = call i32 @get_index(i32 %44, %struct.key_vector* %45)
  %47 = xor i32 %46, 1
  %48 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %49 = call i32 @put_child(%struct.key_vector* %43, i32 %47, %struct.key_vector* %48)
  %50 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  %53 = call i32 @put_child_root(%struct.key_vector* %50, i32 %51, %struct.key_vector* %52)
  %54 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %55 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  %56 = call i32 @node_set_parent(%struct.key_vector* %54, %struct.key_vector* %55)
  %57 = load %struct.key_vector*, %struct.key_vector** %12, align 8
  store %struct.key_vector* %57, %struct.key_vector** %7, align 8
  br label %58

58:                                               ; preds = %39, %19
  %59 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %60 = load %struct.fib_alias*, %struct.fib_alias** %8, align 8
  %61 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @node_push_suffix(%struct.key_vector* %59, i32 %62)
  %64 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %65 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %66 = call i32 @NODE_INIT_PARENT(%struct.key_vector* %64, %struct.key_vector* %65)
  %67 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %70 = call i32 @put_child_root(%struct.key_vector* %67, i32 %68, %struct.key_vector* %69)
  %71 = load %struct.trie*, %struct.trie** %6, align 8
  %72 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %73 = call i32 @trie_rebalance(%struct.trie* %71, %struct.key_vector* %72)
  store i32 0, i32* %5, align 4
  br label %80

74:                                               ; preds = %38
  %75 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %76 = call i32 @node_free(%struct.key_vector* %75)
  br label %77

77:                                               ; preds = %74, %18
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %58
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.key_vector* @leaf_new(i32, %struct.fib_alias*) #1

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i32) #1

declare dso_local i32 @get_index(i32, %struct.key_vector*) #1

declare dso_local %struct.key_vector* @tnode_new(i32, i32, i32) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @NODE_INIT_PARENT(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @put_child(%struct.key_vector*, i32, %struct.key_vector*) #1

declare dso_local i32 @put_child_root(%struct.key_vector*, i32, %struct.key_vector*) #1

declare dso_local i32 @node_set_parent(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @node_push_suffix(%struct.key_vector*, i32) #1

declare dso_local i32 @trie_rebalance(%struct.trie*, %struct.key_vector*) #1

declare dso_local i32 @node_free(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
