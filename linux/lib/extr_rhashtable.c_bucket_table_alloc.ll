; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_bucket_table_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_bucket_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.bucket_table = type { i64, i32*, i32, i32, i32, i32 }
%struct.rhashtable = type { i32 }

@bucket_table_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@buckets = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rhashtable_bucket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bucket_table* (%struct.rhashtable*, i64, i32)* @bucket_table_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bucket_table* @bucket_table_alloc(%struct.rhashtable* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bucket_table*, align 8
  %5 = alloca %struct.rhashtable*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bucket_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rhashtable* %0, %struct.rhashtable** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bucket_table* null, %struct.bucket_table** %8, align 8
  %11 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %12 = load i32, i32* @buckets, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @struct_size(%struct.bucket_table* %11, i32 %12, i64 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.bucket_table* @kvzalloc(i32 %14, i32 %15)
  store %struct.bucket_table* %16, %struct.bucket_table** %8, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %19 = icmp eq %struct.bucket_table* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @__GFP_NOFAIL, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.rhashtable*, %struct.rhashtable** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.bucket_table* @nested_bucket_table_alloc(%struct.rhashtable* %28, i64 %29, i32 %30)
  store %struct.bucket_table* %31, %struct.bucket_table** %8, align 8
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %27, %20, %3
  %33 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %34 = icmp eq %struct.bucket_table* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store %struct.bucket_table* null, %struct.bucket_table** %4, align 8
  br label %71

36:                                               ; preds = %32
  %37 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %38 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %37, i32 0, i32 5
  %39 = call i32 @lockdep_init_map(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @bucket_table_alloc.__key, i32 0)
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %42 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %44 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %43, i32 0, i32 4
  %45 = call i32 @rcu_head_init(i32* %44)
  %46 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %47 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %46, i32 0, i32 3
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = call i32 (...) @get_random_u32()
  %50 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %51 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %66, %36
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %59 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @INIT_RHT_NULLS_HEAD(i32 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  store %struct.bucket_table* %70, %struct.bucket_table** %4, align 8
  br label %71

71:                                               ; preds = %69, %35
  %72 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  ret %struct.bucket_table* %72
}

declare dso_local %struct.bucket_table* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.bucket_table*, i32, i64) #1

declare dso_local %struct.bucket_table* @nested_bucket_table_alloc(%struct.rhashtable*, i64, i32) #1

declare dso_local i32 @lockdep_init_map(i32*, i8*, %struct.lock_class_key*, i32) #1

declare dso_local i32 @rcu_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_random_u32(...) #1

declare dso_local i32 @INIT_RHT_NULLS_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
