; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_leaf_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_leaf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i32, i32, i64, i64, i32 }
%struct.fib_alias = type { i32, i32 }
%struct.tnode = type { %struct.key_vector* }

@trie_leaf_kmem = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (i32, %struct.fib_alias*)* @leaf_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @leaf_new(i32 %0, %struct.fib_alias* %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_alias*, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca %struct.tnode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fib_alias* %1, %struct.fib_alias** %5, align 8
  %8 = load i32, i32* @trie_leaf_kmem, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tnode* @kmem_cache_alloc(i32 %8, i32 %9)
  store %struct.tnode* %10, %struct.tnode** %7, align 8
  %11 = load %struct.tnode*, %struct.tnode** %7, align 8
  %12 = icmp ne %struct.tnode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.key_vector* null, %struct.key_vector** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.tnode*, %struct.tnode** %7, align 8
  %16 = getelementptr inbounds %struct.tnode, %struct.tnode* %15, i32 0, i32 0
  %17 = load %struct.key_vector*, %struct.key_vector** %16, align 8
  store %struct.key_vector* %17, %struct.key_vector** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %20 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %22 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %24 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.fib_alias*, %struct.fib_alias** %5, align 8
  %26 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %29 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %31 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %30, i32 0, i32 0
  %32 = call i32 @INIT_HLIST_HEAD(i32* %31)
  %33 = load %struct.fib_alias*, %struct.fib_alias** %5, align 8
  %34 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %33, i32 0, i32 0
  %35 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %36 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %35, i32 0, i32 0
  %37 = call i32 @hlist_add_head(i32* %34, i32* %36)
  %38 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  store %struct.key_vector* %38, %struct.key_vector** %3, align 8
  br label %39

39:                                               ; preds = %14, %13
  %40 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  ret %struct.key_vector* %40
}

declare dso_local %struct.tnode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
