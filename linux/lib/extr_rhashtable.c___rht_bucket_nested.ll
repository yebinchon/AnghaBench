; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c___rht_bucket_nested.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c___rht_bucket_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhash_lock_head = type { i32 }
%struct.bucket_table = type { i32, i32, i32* }
%union.nested_table = type { %struct.rhash_lock_head* }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rhash_lock_head** @__rht_bucket_nested(%struct.bucket_table* %0, i32 %1) #0 {
  %3 = alloca %struct.rhash_lock_head**, align 8
  %4 = alloca %struct.bucket_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.nested_table*, align 8
  store %struct.bucket_table* %0, %struct.bucket_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = call i32 @ilog2(i32 8)
  %13 = sub i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %16 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %14, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %22 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %25 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = lshr i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %30 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rcu_dereference_raw(i32 %33)
  %35 = inttoptr i64 %34 to %union.nested_table*
  store %union.nested_table* %35, %union.nested_table** %10, align 8
  %36 = load %union.nested_table*, %union.nested_table** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %union.nested_table, %union.nested_table* %36, i64 %38
  %40 = bitcast %union.nested_table* %39 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %union.nested_table* @rht_dereference_bucket_rcu(i32 %41, %struct.bucket_table* %42, i32 %43)
  store %union.nested_table* %44, %union.nested_table** %10, align 8
  %45 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %46 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = lshr i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %60, %2
  %51 = load %union.nested_table*, %union.nested_table** %10, align 8
  %52 = icmp ne %union.nested_table* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 1, %55
  %57 = icmp ugt i32 %54, %56
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %81

60:                                               ; preds = %58
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %61, %64
  store i32 %65, i32* %7, align 4
  %66 = load %union.nested_table*, %union.nested_table** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %union.nested_table, %union.nested_table* %66, i64 %68
  %70 = bitcast %union.nested_table* %69 to i32*
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call %union.nested_table* @rht_dereference_bucket_rcu(i32 %71, %struct.bucket_table* %72, i32 %73)
  store %union.nested_table* %74, %union.nested_table** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = lshr i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = lshr i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %50

81:                                               ; preds = %58
  %82 = load %union.nested_table*, %union.nested_table** %10, align 8
  %83 = icmp ne %union.nested_table* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store %struct.rhash_lock_head** null, %struct.rhash_lock_head*** %3, align 8
  br label %91

85:                                               ; preds = %81
  %86 = load %union.nested_table*, %union.nested_table** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %union.nested_table, %union.nested_table* %86, i64 %88
  %90 = bitcast %union.nested_table* %89 to %struct.rhash_lock_head**
  store %struct.rhash_lock_head** %90, %struct.rhash_lock_head*** %3, align 8
  br label %91

91:                                               ; preds = %85, %84
  %92 = load %struct.rhash_lock_head**, %struct.rhash_lock_head*** %3, align 8
  ret %struct.rhash_lock_head** %92
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @rcu_dereference_raw(i32) #1

declare dso_local %union.nested_table* @rht_dereference_bucket_rcu(i32, %struct.bucket_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
