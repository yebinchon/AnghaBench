; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_free_and_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_free_and_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32 }
%struct.rhash_head = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rhashtable_free_and_destroy(%struct.rhashtable* %0, void (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.rhashtable*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bucket_table*, align 8
  %8 = alloca %struct.bucket_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rhash_head*, align 8
  %11 = alloca %struct.rhash_head*, align 8
  store %struct.rhashtable* %0, %struct.rhashtable** %4, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %13 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %12, i32 0, i32 2
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %16 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %19 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %22 = call %struct.rhash_head* @rht_dereference(i32 %20, %struct.rhashtable* %21)
  %23 = bitcast %struct.rhash_head* %22 to %struct.bucket_table*
  store %struct.bucket_table* %23, %struct.bucket_table** %7, align 8
  br label %24

24:                                               ; preds = %95, %3
  %25 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %26 = icmp ne void (i8*, i8*)* %25, null
  br i1 %26, label %27, label %83

27:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %79, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %31 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %28
  %35 = call i32 (...) @cond_resched()
  %36 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %37 = bitcast %struct.bucket_table* %36 to %struct.rhash_head*
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @rht_bucket(%struct.rhash_head* %37, i32 %38)
  %40 = call %struct.rhash_head* @rht_ptr_exclusive(i32 %39)
  store %struct.rhash_head* %40, %struct.rhash_head** %10, align 8
  %41 = load %struct.rhash_head*, %struct.rhash_head** %10, align 8
  %42 = call i32 @rht_is_a_nulls(%struct.rhash_head* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = load %struct.rhash_head*, %struct.rhash_head** %10, align 8
  %46 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %49 = call %struct.rhash_head* @rht_dereference(i32 %47, %struct.rhashtable* %48)
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi %struct.rhash_head* [ %49, %44 ], [ null, %50 ]
  store %struct.rhash_head* %52, %struct.rhash_head** %11, align 8
  br label %53

53:                                               ; preds = %76, %51
  %54 = load %struct.rhash_head*, %struct.rhash_head** %10, align 8
  %55 = call i32 @rht_is_a_nulls(%struct.rhash_head* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %60 = load %struct.rhash_head*, %struct.rhash_head** %10, align 8
  %61 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @rhashtable_free_one(%struct.rhashtable* %59, %struct.rhash_head* %60, void (i8*, i8*)* %61, i8* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load %struct.rhash_head*, %struct.rhash_head** %11, align 8
  store %struct.rhash_head* %65, %struct.rhash_head** %10, align 8
  %66 = load %struct.rhash_head*, %struct.rhash_head** %10, align 8
  %67 = call i32 @rht_is_a_nulls(%struct.rhash_head* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.rhash_head*, %struct.rhash_head** %10, align 8
  %71 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %74 = call %struct.rhash_head* @rht_dereference(i32 %72, %struct.rhashtable* %73)
  br label %76

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi %struct.rhash_head* [ %74, %69 ], [ null, %75 ]
  store %struct.rhash_head* %77, %struct.rhash_head** %11, align 8
  br label %53

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %28

82:                                               ; preds = %28
  br label %83

83:                                               ; preds = %82, %24
  %84 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %85 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %88 = call %struct.rhash_head* @rht_dereference(i32 %86, %struct.rhashtable* %87)
  %89 = bitcast %struct.rhash_head* %88 to %struct.bucket_table*
  store %struct.bucket_table* %89, %struct.bucket_table** %8, align 8
  %90 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %91 = bitcast %struct.bucket_table* %90 to %struct.rhash_head*
  %92 = call i32 @bucket_table_free(%struct.rhash_head* %91)
  %93 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  %94 = icmp ne %struct.bucket_table* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load %struct.bucket_table*, %struct.bucket_table** %8, align 8
  store %struct.bucket_table* %96, %struct.bucket_table** %7, align 8
  br label %24

97:                                               ; preds = %83
  %98 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %99 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rhash_head* @rht_dereference(i32, %struct.rhashtable*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.rhash_head* @rht_ptr_exclusive(i32) #1

declare dso_local i32 @rht_bucket(%struct.rhash_head*, i32) #1

declare dso_local i32 @rht_is_a_nulls(%struct.rhash_head*) #1

declare dso_local i32 @rhashtable_free_one(%struct.rhashtable*, %struct.rhash_head*, void (i8*, i8*)*, i8*) #1

declare dso_local i32 @bucket_table_free(%struct.rhash_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
