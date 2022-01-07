; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_leaf_walk_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_leaf_walk_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (%struct.key_vector**, i64)* @leaf_walk_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @leaf_walk_rcu(%struct.key_vector** %0, i64 %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca %struct.key_vector**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca %struct.key_vector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.key_vector** %0, %struct.key_vector*** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.key_vector**, %struct.key_vector*** %4, align 8
  %11 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  store %struct.key_vector* %11, %struct.key_vector** %7, align 8
  br label %12

12:                                               ; preds = %55, %2
  %13 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  store %struct.key_vector* %13, %struct.key_vector** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %16 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %22 = call i32 @get_index(i64 %20, %struct.key_vector* %21)
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %29 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = lshr i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %59

34:                                               ; preds = %24
  %35 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  %38 = trunc i64 %36 to i32
  %39 = call %struct.key_vector* @get_child_rcu(%struct.key_vector* %35, i32 %38)
  store %struct.key_vector* %39, %struct.key_vector** %7, align 8
  %40 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %41 = icmp ne %struct.key_vector* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %34
  %44 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %45 = call i64 @IS_LEAF(%struct.key_vector* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %49 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %102

54:                                               ; preds = %47, %43
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %57 = call i64 @IS_TNODE(%struct.key_vector* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %12, label %59

59:                                               ; preds = %55, %42, %33
  br label %60

60:                                               ; preds = %97, %91, %72, %59
  %61 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %62 = call i32 @IS_TRIE(%struct.key_vector* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %68 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = shl i64 1, %69
  %71 = icmp uge i64 %66, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %74 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %9, align 8
  %76 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %77 = call %struct.key_vector* @node_parent_rcu(%struct.key_vector* %76)
  store %struct.key_vector* %77, %struct.key_vector** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %80 = call i32 @get_index(i64 %78, %struct.key_vector* %79)
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %8, align 8
  br label %60

83:                                               ; preds = %65
  %84 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  %87 = trunc i64 %85 to i32
  %88 = call %struct.key_vector* @get_child_rcu(%struct.key_vector* %84, i32 %87)
  store %struct.key_vector* %88, %struct.key_vector** %7, align 8
  %89 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %90 = icmp ne %struct.key_vector* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %60

92:                                               ; preds = %83
  %93 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %94 = call i64 @IS_LEAF(%struct.key_vector* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %102

97:                                               ; preds = %92
  %98 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  store %struct.key_vector* %98, %struct.key_vector** %6, align 8
  store i64 0, i64* %8, align 8
  br label %60

99:                                               ; preds = %60
  %100 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %101 = load %struct.key_vector**, %struct.key_vector*** %4, align 8
  store %struct.key_vector* %100, %struct.key_vector** %101, align 8
  store %struct.key_vector* null, %struct.key_vector** %3, align 8
  br label %106

102:                                              ; preds = %96, %53
  %103 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %104 = load %struct.key_vector**, %struct.key_vector*** %4, align 8
  store %struct.key_vector* %103, %struct.key_vector** %104, align 8
  %105 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  store %struct.key_vector* %105, %struct.key_vector** %3, align 8
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  ret %struct.key_vector* %107
}

declare dso_local i32 @get_index(i64, %struct.key_vector*) #1

declare dso_local %struct.key_vector* @get_child_rcu(%struct.key_vector*, i32) #1

declare dso_local i64 @IS_LEAF(%struct.key_vector*) #1

declare dso_local i64 @IS_TNODE(%struct.key_vector*) #1

declare dso_local i32 @IS_TRIE(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @node_parent_rcu(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
