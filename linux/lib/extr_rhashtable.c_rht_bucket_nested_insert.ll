; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rht_bucket_nested_insert.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rht_bucket_nested_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhash_lock_head = type { i32 }
%struct.rhashtable = type { i32 }
%struct.bucket_table = type { i32, i32, i32* }
%union.nested_table = type { %struct.rhash_lock_head* }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rhash_lock_head** @rht_bucket_nested_insert(%struct.rhashtable* %0, %struct.bucket_table* %1, i32 %2) #0 {
  %4 = alloca %struct.rhash_lock_head**, align 8
  %5 = alloca %struct.rhashtable*, align 8
  %6 = alloca %struct.bucket_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.nested_table*, align 8
  store %struct.rhashtable* %0, %struct.rhashtable** %5, align 8
  store %struct.bucket_table* %1, %struct.bucket_table** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = call i32 @ilog2(i32 8)
  %14 = sub i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %17 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %15, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %23 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %26 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = lshr i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %30 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rcu_dereference_raw(i32 %33)
  %35 = inttoptr i64 %34 to %union.nested_table*
  store %union.nested_table* %35, %union.nested_table** %11, align 8
  %36 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %37 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.rhashtable*, %struct.rhashtable** %5, align 8
  %42 = load %union.nested_table*, %union.nested_table** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %union.nested_table, %union.nested_table* %42, i64 %44
  %46 = bitcast %union.nested_table* %45 to i32*
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = icmp ule i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call %union.nested_table* @nested_table_alloc(%struct.rhashtable* %41, i32* %46, i32 %51)
  store %union.nested_table* %52, %union.nested_table** %11, align 8
  br label %53

53:                                               ; preds = %63, %3
  %54 = load %union.nested_table*, %union.nested_table** %11, align 8
  %55 = icmp ne %union.nested_table* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 1, %58
  %60 = icmp ugt i32 %57, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %87

63:                                               ; preds = %61
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = lshr i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.rhashtable*, %struct.rhashtable** %5, align 8
  %76 = load %union.nested_table*, %union.nested_table** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %union.nested_table, %union.nested_table* %76, i64 %78
  %80 = bitcast %union.nested_table* %79 to i32*
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 1, %82
  %84 = icmp ule i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call %union.nested_table* @nested_table_alloc(%struct.rhashtable* %75, i32* %80, i32 %85)
  store %union.nested_table* %86, %union.nested_table** %11, align 8
  br label %53

87:                                               ; preds = %61
  %88 = load %union.nested_table*, %union.nested_table** %11, align 8
  %89 = icmp ne %union.nested_table* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store %struct.rhash_lock_head** null, %struct.rhash_lock_head*** %4, align 8
  br label %97

91:                                               ; preds = %87
  %92 = load %union.nested_table*, %union.nested_table** %11, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %union.nested_table, %union.nested_table* %92, i64 %94
  %96 = bitcast %union.nested_table* %95 to %struct.rhash_lock_head**
  store %struct.rhash_lock_head** %96, %struct.rhash_lock_head*** %4, align 8
  br label %97

97:                                               ; preds = %91, %90
  %98 = load %struct.rhash_lock_head**, %struct.rhash_lock_head*** %4, align 8
  ret %struct.rhash_lock_head** %98
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @rcu_dereference_raw(i32) #1

declare dso_local %union.nested_table* @nested_table_alloc(%struct.rhashtable*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
