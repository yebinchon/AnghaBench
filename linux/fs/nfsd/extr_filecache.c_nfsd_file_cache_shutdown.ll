; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_cache_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_cache_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dispose = common dso_local global i32 0, align 4
@NFSD_FILE_SHUTDOWN = common dso_local global i32 0, align 4
@nfsd_file_lru_flags = common dso_local global i32 0, align 4
@nfsd_file_lease_notifier = common dso_local global i32 0, align 4
@nfsd_file_shrinker = common dso_local global i32 0, align 4
@nfsd_filecache_laundrette = common dso_local global i32 0, align 4
@nfsd_file_lru = common dso_local global i32 0, align 4
@nfsd_file_fsnotify_group = common dso_local global i32* null, align 8
@nfsd_file_slab = common dso_local global i32* null, align 8
@nfsd_file_mark_slab = common dso_local global i32* null, align 8
@nfsd_file_hashtbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_file_cache_shutdown() #0 {
  %1 = load i32, i32* @dispose, align 4
  %2 = call i32 @LIST_HEAD(i32 %1)
  %3 = load i32, i32* @NFSD_FILE_SHUTDOWN, align 4
  %4 = call i32 @set_bit(i32 %3, i32* @nfsd_file_lru_flags)
  %5 = call i32 @lease_unregister_notifier(i32* @nfsd_file_lease_notifier)
  %6 = call i32 @unregister_shrinker(i32* @nfsd_file_shrinker)
  %7 = call i32 @cancel_delayed_work_sync(i32* @nfsd_filecache_laundrette)
  %8 = call i32 @nfsd_file_cache_purge(i32* null)
  %9 = call i32 @list_lru_destroy(i32* @nfsd_file_lru)
  %10 = call i32 (...) @rcu_barrier()
  %11 = load i32*, i32** @nfsd_file_fsnotify_group, align 8
  %12 = call i32 @fsnotify_put_group(i32* %11)
  store i32* null, i32** @nfsd_file_fsnotify_group, align 8
  %13 = load i32*, i32** @nfsd_file_slab, align 8
  %14 = call i32 @kmem_cache_destroy(i32* %13)
  store i32* null, i32** @nfsd_file_slab, align 8
  %15 = call i32 (...) @fsnotify_wait_marks_destroyed()
  %16 = load i32*, i32** @nfsd_file_mark_slab, align 8
  %17 = call i32 @kmem_cache_destroy(i32* %16)
  store i32* null, i32** @nfsd_file_mark_slab, align 8
  %18 = load i32*, i32** @nfsd_file_hashtbl, align 8
  %19 = call i32 @kfree(i32* %18)
  store i32* null, i32** @nfsd_file_hashtbl, align 8
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lease_unregister_notifier(i32*) #1

declare dso_local i32 @unregister_shrinker(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @nfsd_file_cache_purge(i32*) #1

declare dso_local i32 @list_lru_destroy(i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @fsnotify_put_group(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @fsnotify_wait_marks_destroyed(...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
