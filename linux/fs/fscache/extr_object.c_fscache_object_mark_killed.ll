; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_mark_killed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_mark_killed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FSCACHE_OBJECT_KILLED_BY_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error: Object already killed by cache [%s]\0A\00", align 1
@fscache_n_cache_no_space_reject = common dso_local global i32 0, align 4
@fscache_n_cache_stale_objects = common dso_local global i32 0, align 4
@fscache_n_cache_retired_objects = common dso_local global i32 0, align 4
@fscache_n_cache_culled_objects = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_object_mark_killed(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FSCACHE_OBJECT_KILLED_BY_CACHE, align 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %7 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %6, i32 0, i32 1
  %8 = call i64 @test_and_set_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %12 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %27 [
    i32 130, label %19
    i32 131, label %21
    i32 128, label %23
    i32 129, label %25
  ]

19:                                               ; preds = %17
  %20 = call i32 @fscache_stat(i32* @fscache_n_cache_no_space_reject)
  br label %27

21:                                               ; preds = %17
  %22 = call i32 @fscache_stat(i32* @fscache_n_cache_stale_objects)
  br label %27

23:                                               ; preds = %17
  %24 = call i32 @fscache_stat(i32* @fscache_n_cache_retired_objects)
  br label %27

25:                                               ; preds = %17
  %26 = call i32 @fscache_stat(i32* @fscache_n_cache_culled_objects)
  br label %27

27:                                               ; preds = %10, %17, %25, %23, %21, %19
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
