; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_untag_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_untag_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.audit_chunk = type { i32, i32 }
%struct.fsnotify_mark = type { i32 }

@audit_tree_group = common dso_local global %struct.TYPE_2__* null, align 8
@FSNOTIFY_MARK_FLAG_ATTACHED = common dso_local global i32 0, align 4
@hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_chunk*, %struct.fsnotify_mark*)* @untag_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @untag_chunk(%struct.audit_chunk* %0, %struct.fsnotify_mark* %1) #0 {
  %3 = alloca %struct.audit_chunk*, align 8
  %4 = alloca %struct.fsnotify_mark*, align 8
  %5 = alloca %struct.audit_chunk*, align 8
  %6 = alloca i32, align 4
  store %struct.audit_chunk* %0, %struct.audit_chunk** %3, align 8
  store %struct.fsnotify_mark* %1, %struct.fsnotify_mark** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @audit_tree_group, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %11 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSNOTIFY_MARK_FLAG_ATTACHED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %18 = call %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark* %17)
  %19 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %20 = icmp ne %struct.audit_chunk* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %64

22:                                               ; preds = %16
  %23 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %24 = call i32 @chunk_count_trees(%struct.audit_chunk* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = call i32 @spin_lock(i32* @hash_lock)
  %29 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %30 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %29, i32 0, i32 1
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %33 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %32, i32 0, i32 0
  %34 = call i32 @list_del_rcu(i32* %33)
  %35 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %36 = call i32 @replace_mark_chunk(%struct.fsnotify_mark* %35, i32* null)
  %37 = call i32 @spin_unlock(i32* @hash_lock)
  %38 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %39 = call i32 @fsnotify_detach_mark(%struct.fsnotify_mark* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @audit_tree_group, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %44 = call i32 @audit_mark_put_chunk(%struct.audit_chunk* %43)
  %45 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %46 = call i32 @fsnotify_free_mark(%struct.fsnotify_mark* %45)
  br label %68

47:                                               ; preds = %22
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.audit_chunk* @alloc_chunk(i32 %48)
  store %struct.audit_chunk* %49, %struct.audit_chunk** %5, align 8
  %50 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  %51 = icmp ne %struct.audit_chunk* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %64

53:                                               ; preds = %47
  %54 = call i32 @spin_lock(i32* @hash_lock)
  %55 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  %56 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %57 = call i32 @replace_chunk(%struct.audit_chunk* %55, %struct.audit_chunk* %56)
  %58 = call i32 @spin_unlock(i32* @hash_lock)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @audit_tree_group, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.audit_chunk*, %struct.audit_chunk** %3, align 8
  %63 = call i32 @audit_mark_put_chunk(%struct.audit_chunk* %62)
  br label %68

64:                                               ; preds = %52, %21
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @audit_tree_group, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %53, %27
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark*) #1

declare dso_local i32 @chunk_count_trees(%struct.audit_chunk*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @replace_mark_chunk(%struct.fsnotify_mark*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_detach_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @audit_mark_put_chunk(%struct.audit_chunk*) #1

declare dso_local i32 @fsnotify_free_mark(%struct.fsnotify_mark*) #1

declare dso_local %struct.audit_chunk* @alloc_chunk(i32) #1

declare dso_local i32 @replace_chunk(%struct.audit_chunk*, %struct.audit_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
