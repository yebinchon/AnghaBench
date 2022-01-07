; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_new_watch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_new_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.idr }
%struct.idr = type { i32 }
%struct.inode = type { i32 }
%struct.inotify_inode_mark = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@inotify_inode_mark_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, %struct.inode*, i32)* @inotify_new_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inotify_new_watch(%struct.fsnotify_group* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsnotify_group*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inotify_inode_mark*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.idr*, align 8
  %12 = alloca i32*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %14 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store %struct.idr* %15, %struct.idr** %11, align 8
  %16 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %17 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @inotify_arg_to_mask(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @inotify_inode_mark_cachep, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.inotify_inode_mark* @kmem_cache_alloc(i32 %21, i32 %22)
  store %struct.inotify_inode_mark* %23, %struct.inotify_inode_mark** %8, align 8
  %24 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %25 = icmp ne %struct.inotify_inode_mark* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %84

33:                                               ; preds = %3
  %34 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %35 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %34, i32 0, i32 1
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %37 = call i32 @fsnotify_init_mark(%struct.TYPE_6__* %35, %struct.fsnotify_group* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %40 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %43 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 4
  %44 = load %struct.idr*, %struct.idr** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %47 = call i32 @inotify_add_to_idr(%struct.idr* %44, i32* %45, %struct.inotify_inode_mark* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %79

51:                                               ; preds = %33
  %52 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %53 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @inc_inotify_watches(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %60 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %61 = call i32 @inotify_remove_from_idr(%struct.fsnotify_group* %59, %struct.inotify_inode_mark* %60)
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %79

64:                                               ; preds = %51
  %65 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %66 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %65, i32 0, i32 1
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call i32 @fsnotify_add_inode_mark_locked(%struct.TYPE_6__* %66, %struct.inode* %67, i32 0)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %73 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %74 = call i32 @inotify_remove_from_idr(%struct.fsnotify_group* %72, %struct.inotify_inode_mark* %73)
  br label %79

75:                                               ; preds = %64
  %76 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %77 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %71, %58, %50
  %80 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %8, align 8
  %81 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %80, i32 0, i32 1
  %82 = call i32 @fsnotify_put_mark(%struct.TYPE_6__* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %30
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @inotify_arg_to_mask(i32) #1

declare dso_local %struct.inotify_inode_mark* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fsnotify_init_mark(%struct.TYPE_6__*, %struct.fsnotify_group*) #1

declare dso_local i32 @inotify_add_to_idr(%struct.idr*, i32*, %struct.inotify_inode_mark*) #1

declare dso_local i32 @inc_inotify_watches(i32) #1

declare dso_local i32 @inotify_remove_from_idr(%struct.fsnotify_group*, %struct.inotify_inode_mark*) #1

declare dso_local i32 @fsnotify_add_inode_mark_locked(%struct.TYPE_6__*, %struct.inode*, i32) #1

declare dso_local i32 @fsnotify_put_mark(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
