; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFSD_FILE_SHUTDOWN = common dso_local global i32 0, align 4
@nfsd_file_lru_flags = common dso_local global i32 0, align 4
@nfsd_file_hashtbl = common dso_local global %struct.TYPE_4__* null, align 8
@NFSD_FILE_HASH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nfsd: unable to allocate nfsd_file_hashtbl\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nfsd_file\00", align 1
@nfsd_file_slab = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"nfsd: unable to create nfsd_file_slab\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"nfsd_file_mark\00", align 1
@nfsd_file_mark_slab = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"nfsd: unable to create nfsd_file_mark_slab\0A\00", align 1
@nfsd_file_lru = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"nfsd: failed to init nfsd_file_lru: %d\0A\00", align 1
@nfsd_file_shrinker = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"nfsd: failed to register nfsd_file_shrinker: %d\0A\00", align 1
@nfsd_file_lease_notifier = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"nfsd: unable to register lease notifier: %d\0A\00", align 1
@nfsd_file_fsnotify_ops = common dso_local global i32 0, align 4
@nfsd_file_fsnotify_group = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"nfsd: unable to create fsnotify group: %ld\0A\00", align 1
@nfsd_filecache_laundrette = common dso_local global i32 0, align 4
@nfsd_file_delayed_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_file_cache_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @NFSD_FILE_SHUTDOWN, align 4
  %7 = call i32 @clear_bit(i32 %6, i32* @nfsd_file_lru_flags)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %100

11:                                               ; preds = %0
  %12 = load i32, i32* @NFSD_FILE_HASH_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_4__* @kcalloc(i32 %12, i32 8, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %93

19:                                               ; preds = %11
  %20 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i32* %20, i32** @nfsd_file_slab, align 8
  %21 = load i32*, i32** @nfsd_file_slab, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %93

25:                                               ; preds = %19
  %26 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i32* %26, i32** @nfsd_file_mark_slab, align 8
  %27 = load i32*, i32** @nfsd_file_mark_slab, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %93

31:                                               ; preds = %25
  %32 = call i32 @list_lru_init(i32* @nfsd_file_lru)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  br label %93

38:                                               ; preds = %31
  %39 = call i32 @register_shrinker(i32* @nfsd_file_shrinker)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  br label %91

45:                                               ; preds = %38
  %46 = call i32 @lease_register_notifier(i32* @nfsd_file_lease_notifier)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  br label %89

52:                                               ; preds = %45
  %53 = call i32* @fsnotify_alloc_group(i32* @nfsd_file_fsnotify_ops)
  store i32* %53, i32** @nfsd_file_fsnotify_group, align 8
  %54 = load i32*, i32** @nfsd_file_fsnotify_group, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32*, i32** @nfsd_file_fsnotify_group, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  store i32* null, i32** @nfsd_file_fsnotify_group, align 8
  br label %87

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @NFSD_FILE_HASH_SIZE, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = call i32 @INIT_HLIST_HEAD(i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  %74 = load i32, i32* %3, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @spin_lock_init(i32* %77)
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %62

82:                                               ; preds = %62
  %83 = load i32, i32* @nfsd_file_delayed_close, align 4
  %84 = call i32 @INIT_DELAYED_WORK(i32* @nfsd_filecache_laundrette, i32 %83)
  br label %85

85:                                               ; preds = %93, %82
  %86 = load i32, i32* %2, align 4
  store i32 %86, i32* %1, align 4
  br label %100

87:                                               ; preds = %57
  %88 = call i32 @lease_unregister_notifier(i32* @nfsd_file_lease_notifier)
  br label %89

89:                                               ; preds = %87, %49
  %90 = call i32 @unregister_shrinker(i32* @nfsd_file_shrinker)
  br label %91

91:                                               ; preds = %89, %42
  %92 = call i32 @list_lru_destroy(i32* @nfsd_file_lru)
  br label %93

93:                                               ; preds = %91, %35, %29, %23, %17
  %94 = load i32*, i32** @nfsd_file_slab, align 8
  %95 = call i32 @kmem_cache_destroy(i32* %94)
  store i32* null, i32** @nfsd_file_slab, align 8
  %96 = load i32*, i32** @nfsd_file_mark_slab, align 8
  %97 = call i32 @kmem_cache_destroy(i32* %96)
  store i32* null, i32** @nfsd_file_mark_slab, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  %99 = call i32 @kfree(%struct.TYPE_4__* %98)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @nfsd_file_hashtbl, align 8
  br label %85

100:                                              ; preds = %85, %10
  %101 = load i32, i32* %1, align 4
  ret i32 %101
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @list_lru_init(i32*) #1

declare dso_local i32 @register_shrinker(i32*) #1

declare dso_local i32 @lease_register_notifier(i32*) #1

declare dso_local i32* @fsnotify_alloc_group(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @lease_unregister_notifier(i32*) #1

declare dso_local i32 @unregister_shrinker(i32*) #1

declare dso_local i32 @list_lru_destroy(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
