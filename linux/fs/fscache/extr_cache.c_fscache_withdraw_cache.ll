; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cache.c_fscache_withdraw_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cache.c_fscache_withdraw_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cache = type { %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fscache_cache*)*, i32 (%struct.fscache_cache*)* }

@dying_objects = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Withdrawing cache \22%s\22\0A\00", align 1
@FSCACHE_CACHE_WITHDRAWN = common dso_local global i32 0, align 4
@fscache_addremove_sem = common dso_local global i32 0, align 4
@fscache_n_cop_sync_cache = common dso_local global i32 0, align 4
@fscache_n_cop_dissociate_pages = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"wait for finish\00", align 1
@fscache_cache_cleared_wq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"wait for clearance\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"cleared\00", align 1
@FSCACHE_TAG_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_withdraw_cache(%struct.fscache_cache* %0) #0 {
  %2 = alloca %struct.fscache_cache*, align 8
  store %struct.fscache_cache* %0, %struct.fscache_cache** %2, align 8
  %3 = load i32, i32* @dying_objects, align 4
  %4 = call i32 @LIST_HEAD(i32 %3)
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %7 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @FSCACHE_CACHE_WITHDRAWN, align 4
  %13 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %14 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %13, i32 0, i32 6
  %15 = call i64 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %1
  %20 = call i32 @down_write(i32* @fscache_addremove_sem)
  %21 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %22 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %21, i32 0, i32 5
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %25 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = call i32 @up_write(i32* @fscache_addremove_sem)
  %29 = call i32 @fscache_stat(i32* @fscache_n_cop_sync_cache)
  %30 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %31 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.fscache_cache*)*, i32 (%struct.fscache_cache*)** %33, align 8
  %35 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %36 = call i32 %34(%struct.fscache_cache* %35)
  %37 = call i32 @fscache_stat_d(i32* @fscache_n_cop_sync_cache)
  %38 = call i32 @fscache_stat(i32* @fscache_n_cop_dissociate_pages)
  %39 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %40 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.fscache_cache*)*, i32 (%struct.fscache_cache*)** %42, align 8
  %44 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %45 = call i32 %43(%struct.fscache_cache* %44)
  %46 = call i32 @fscache_stat_d(i32* @fscache_n_cop_dissociate_pages)
  %47 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %49 = call i32 @fscache_withdraw_all_objects(%struct.fscache_cache* %48, i32* @dying_objects)
  %50 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @fscache_cache_cleared_wq, align 4
  %52 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %53 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %52, i32 0, i32 3
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @wait_event(i32 %51, i32 %56)
  %58 = call i32 @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @fscache_cache_cleared_wq, align 4
  %60 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %61 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %60, i32 0, i32 2
  %62 = call i32 @list_empty(i32* %61)
  %63 = call i32 @wait_event(i32 %59, i32 %62)
  %64 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %65 = call i32 @list_empty(i32* @dying_objects)
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %68 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @kobject_put(i32 %69)
  %71 = load i32, i32* @FSCACHE_TAG_RESERVED, align 4
  %72 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %73 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %71, i32* %75)
  %77 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %78 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @fscache_release_cache_tag(%struct.TYPE_4__* %79)
  %81 = load %struct.fscache_cache*, %struct.fscache_cache** %2, align 8
  %82 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %81, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %82, align 8
  %83 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @fscache_withdraw_all_objects(%struct.fscache_cache*, i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fscache_release_cache_tag(%struct.TYPE_4__*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
