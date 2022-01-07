; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_put_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_put_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_connector = type { %struct.fsnotify_mark_connector*, i32, i32 }
%struct.fsnotify_mark = type { i32, i32, i32, i32 }

@FSNOTIFY_OBJ_TYPE_DETACHED = common dso_local global i32 0, align 4
@destroy_lock = common dso_local global i32 0, align 4
@connector_destroy_list = common dso_local global %struct.fsnotify_mark_connector* null, align 8
@system_unbound_wq = common dso_local global i32 0, align 4
@connector_reaper_work = common dso_local global i32 0, align 4
@destroy_list = common dso_local global i32 0, align 4
@reaper_work = common dso_local global i32 0, align 4
@FSNOTIFY_REAPER_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_put_mark(%struct.fsnotify_mark* %0) #0 {
  %2 = alloca %struct.fsnotify_mark*, align 8
  %3 = alloca %struct.fsnotify_mark_connector*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %2, align 8
  %7 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %8 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fsnotify_mark_connector* @READ_ONCE(i32 %9)
  store %struct.fsnotify_mark_connector* %10, %struct.fsnotify_mark_connector** %3, align 8
  store i8* null, i8** %4, align 8
  %11 = load i32, i32* @FSNOTIFY_OBJ_TYPE_DETACHED, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %13 = icmp ne %struct.fsnotify_mark_connector* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %16 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %15, i32 0, i32 3
  %17 = call i64 @refcount_dec_and_test(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %21 = call i32 @fsnotify_final_mark_destroy(%struct.fsnotify_mark* %20)
  br label %22

22:                                               ; preds = %19, %14
  br label %76

23:                                               ; preds = %1
  %24 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %25 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %24, i32 0, i32 3
  %26 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %27 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %26, i32 0, i32 1
  %28 = call i32 @refcount_dec_and_lock(i32* %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %76

31:                                               ; preds = %23
  %32 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %33 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %32, i32 0, i32 2
  %34 = call i32 @hlist_del_init_rcu(i32* %33)
  %35 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %36 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %35, i32 0, i32 2
  %37 = call i64 @hlist_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %41 = call i8* @fsnotify_detach_connector_from_object(%struct.fsnotify_mark_connector* %40, i32* %5)
  store i8* %41, i8** %4, align 8
  store i32 1, i32* %6, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %44 = call i32 @__fsnotify_recalc_mask(%struct.fsnotify_mark_connector* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %47 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @WRITE_ONCE(i32 %48, i32* null)
  %50 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %51 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @fsnotify_drop_object(i32 %53, i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %45
  %59 = call i32 @spin_lock(i32* @destroy_lock)
  %60 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** @connector_destroy_list, align 8
  %61 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %62 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %61, i32 0, i32 0
  store %struct.fsnotify_mark_connector* %60, %struct.fsnotify_mark_connector** %62, align 8
  %63 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  store %struct.fsnotify_mark_connector* %63, %struct.fsnotify_mark_connector** @connector_destroy_list, align 8
  %64 = call i32 @spin_unlock(i32* @destroy_lock)
  %65 = load i32, i32* @system_unbound_wq, align 4
  %66 = call i32 @queue_work(i32 %65, i32* @connector_reaper_work)
  br label %67

67:                                               ; preds = %58, %45
  %68 = call i32 @spin_lock(i32* @destroy_lock)
  %69 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %70 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %69, i32 0, i32 0
  %71 = call i32 @list_add(i32* %70, i32* @destroy_list)
  %72 = call i32 @spin_unlock(i32* @destroy_lock)
  %73 = load i32, i32* @system_unbound_wq, align 4
  %74 = load i32, i32* @FSNOTIFY_REAPER_DELAY, align 4
  %75 = call i32 @queue_delayed_work(i32 %73, i32* @reaper_work, i32 %74)
  br label %76

76:                                               ; preds = %67, %30, %22
  ret void
}

declare dso_local %struct.fsnotify_mark_connector* @READ_ONCE(i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @fsnotify_final_mark_destroy(%struct.fsnotify_mark*) #1

declare dso_local i32 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i8* @fsnotify_detach_connector_from_object(%struct.fsnotify_mark_connector*, i32*) #1

declare dso_local i32 @__fsnotify_recalc_mask(%struct.fsnotify_mark_connector*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_drop_object(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
