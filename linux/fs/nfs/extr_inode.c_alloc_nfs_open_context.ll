; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_alloc_nfs_open_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_alloc_nfs_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32*, i32, %struct.TYPE_2__, i64, i64, i64, i32, i32*, i32*, %struct.cred*, i32 }
%struct.TYPE_2__ = type { %struct.nfs_open_context* }
%struct.cred = type { i32 }
%struct.dentry = type { i32 }
%struct.file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_open_context* @alloc_nfs_open_context(%struct.dentry* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.nfs_open_context*, align 8
  %9 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file* %2, %struct.file** %7, align 8
  %10 = call %struct.cred* (...) @get_current_cred()
  store %struct.cred* %10, %struct.cred** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfs_open_context* @kmalloc(i32 88, i32 %11)
  store %struct.nfs_open_context* %12, %struct.nfs_open_context** %8, align 8
  %13 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %14 = icmp ne %struct.nfs_open_context* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.cred*, %struct.cred** %9, align 8
  %17 = call i32 @put_cred(%struct.cred* %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.nfs_open_context* @ERR_PTR(i32 %19)
  store %struct.nfs_open_context* %20, %struct.nfs_open_context** %4, align 8
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nfs_sb_active(i32 %24)
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = call i32 @dget(%struct.dentry* %26)
  %28 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %29 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cred*, %struct.cred** %9, align 8
  %31 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %32 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %31, i32 0, i32 9
  store %struct.cred* %30, %struct.cred** %32, align 8
  %33 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %34 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %33, i32 0, i32 8
  store i32* null, i32** %34, align 8
  %35 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %36 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %35, i32 0, i32 7
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %39 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %41 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %43 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.file*, %struct.file** %7, align 8
  %45 = ptrtoint %struct.file* %44 to i64
  %46 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %47 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %49 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %48, i32 0, i32 2
  %50 = call i32 @nfs_init_lock_context(%struct.TYPE_2__* %49)
  %51 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %52 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %53 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.nfs_open_context* %51, %struct.nfs_open_context** %54, align 8
  %55 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %56 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %55, i32 0, i32 1
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %59 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  store %struct.nfs_open_context* %60, %struct.nfs_open_context** %4, align 8
  br label %61

61:                                               ; preds = %21, %15
  %62 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  ret %struct.nfs_open_context* %62
}

declare dso_local %struct.cred* @get_current_cred(...) #1

declare dso_local %struct.nfs_open_context* @kmalloc(i32, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local %struct.nfs_open_context* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_sb_active(i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @nfs_init_lock_context(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
