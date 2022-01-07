; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c___kernfs_iattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c___kernfs_iattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_iattrs = type { i32, i32, i32, i32, i32, i32 }
%struct.kernfs_node = type { %struct.kernfs_iattrs* }

@__kernfs_iattrs.iattr_mutex = internal global i32 0, align 4
@kernfs_iattrs_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_iattrs* (%struct.kernfs_node*, i32)* @__kernfs_iattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_iattrs* @__kernfs_iattrs(%struct.kernfs_node* %0, i32 %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernfs_iattrs*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @__kernfs_iattrs.iattr_mutex)
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %7, i32 0, i32 0
  %9 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %8, align 8
  %10 = icmp ne %struct.kernfs_iattrs* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  br label %65

15:                                               ; preds = %11
  %16 = load i32, i32* @kernfs_iattrs_cache, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.kernfs_iattrs* @kmem_cache_zalloc(i32 %16, i32 %17)
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %19, i32 0, i32 0
  store %struct.kernfs_iattrs* %18, %struct.kernfs_iattrs** %20, align 8
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %22 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %21, i32 0, i32 0
  %23 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %22, align 8
  %24 = icmp ne %struct.kernfs_iattrs* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %65

26:                                               ; preds = %15
  %27 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %29 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %28, i32 0, i32 0
  %30 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %29, align 8
  %31 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %34 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %33, i32 0, i32 0
  %35 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %34, align 8
  %36 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 4
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %38 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %37, i32 0, i32 0
  %39 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %38, align 8
  %40 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %39, i32 0, i32 1
  %41 = call i32 @ktime_get_real_ts64(i32* %40)
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %43 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %42, i32 0, i32 0
  %44 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %43, align 8
  %45 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %48 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %47, i32 0, i32 0
  %49 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %48, align 8
  %50 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 4
  %51 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %52 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %51, i32 0, i32 0
  %53 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %52, align 8
  %54 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %57 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %56, i32 0, i32 0
  %58 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %57, align 8
  %59 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 4
  %60 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %61 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %60, i32 0, i32 0
  %62 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %61, align 8
  %63 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %62, i32 0, i32 0
  %64 = call i32 @simple_xattrs_init(i32* %63)
  br label %65

65:                                               ; preds = %26, %25, %14
  %66 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %67 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %66, i32 0, i32 0
  %68 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %67, align 8
  store %struct.kernfs_iattrs* %68, %struct.kernfs_iattrs** %5, align 8
  %69 = call i32 @mutex_unlock(i32* @__kernfs_iattrs.iattr_mutex)
  %70 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %5, align 8
  ret %struct.kernfs_iattrs* %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kernfs_iattrs* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i32 @simple_xattrs_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
