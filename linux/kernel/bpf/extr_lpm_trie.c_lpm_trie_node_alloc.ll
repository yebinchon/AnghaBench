; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_lpm_trie.c_lpm_trie_node_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_lpm_trie.c_lpm_trie_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpm_trie_node = type { i64, i64 }
%struct.lpm_trie = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpm_trie_node* (%struct.lpm_trie*, i8*)* @lpm_trie_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpm_trie_node* @lpm_trie_node_alloc(%struct.lpm_trie* %0, i8* %1) #0 {
  %3 = alloca %struct.lpm_trie_node*, align 8
  %4 = alloca %struct.lpm_trie*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpm_trie_node*, align 8
  %7 = alloca i64, align 8
  store %struct.lpm_trie* %0, %struct.lpm_trie** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.lpm_trie*, %struct.lpm_trie** %4, align 8
  %9 = getelementptr inbounds %struct.lpm_trie, %struct.lpm_trie* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 16, %10
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.lpm_trie*, %struct.lpm_trie** %4, align 8
  %16 = getelementptr inbounds %struct.lpm_trie, %struct.lpm_trie* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.lpm_trie*, %struct.lpm_trie** %4, align 8
  %27 = getelementptr inbounds %struct.lpm_trie, %struct.lpm_trie* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.lpm_trie_node* @kmalloc_node(i64 %22, i32 %25, i32 %29)
  store %struct.lpm_trie_node* %30, %struct.lpm_trie_node** %6, align 8
  %31 = load %struct.lpm_trie_node*, %struct.lpm_trie_node** %6, align 8
  %32 = icmp ne %struct.lpm_trie_node* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store %struct.lpm_trie_node* null, %struct.lpm_trie_node** %3, align 8
  br label %55

34:                                               ; preds = %21
  %35 = load %struct.lpm_trie_node*, %struct.lpm_trie_node** %6, align 8
  %36 = getelementptr inbounds %struct.lpm_trie_node, %struct.lpm_trie_node* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.lpm_trie_node*, %struct.lpm_trie_node** %6, align 8
  %41 = getelementptr inbounds %struct.lpm_trie_node, %struct.lpm_trie_node* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.lpm_trie*, %struct.lpm_trie** %4, align 8
  %44 = getelementptr inbounds %struct.lpm_trie, %struct.lpm_trie* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.lpm_trie*, %struct.lpm_trie** %4, align 8
  %49 = getelementptr inbounds %struct.lpm_trie, %struct.lpm_trie* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i64 %46, i8* %47, i64 %51)
  br label %53

53:                                               ; preds = %39, %34
  %54 = load %struct.lpm_trie_node*, %struct.lpm_trie_node** %6, align 8
  store %struct.lpm_trie_node* %54, %struct.lpm_trie_node** %3, align 8
  br label %55

55:                                               ; preds = %53, %33
  %56 = load %struct.lpm_trie_node*, %struct.lpm_trie_node** %3, align 8
  ret %struct.lpm_trie_node* %56
}

declare dso_local %struct.lpm_trie_node* @kmalloc_node(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
