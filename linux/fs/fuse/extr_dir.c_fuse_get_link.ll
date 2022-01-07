; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.fuse_conn = type { i64 }
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@page_put_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @fuse_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fuse_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %8, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i64 @is_bad_inode(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %28 = call i8* @page_get_link(%struct.dentry* %25, %struct.inode* %26, %struct.delayed_call* %27)
  store i8* %28, i8** %4, align 8
  br label %62

29:                                               ; preds = %19
  %30 = load i32, i32* @ECHILD, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %59

35:                                               ; preds = %29
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.page* @alloc_page(i32 %36)
  store %struct.page* %37, %struct.page** %9, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %59

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = call i32 @fuse_readlink_page(%struct.inode* %44, %struct.page* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.page*, %struct.page** %9, align 8
  %51 = call i32 @__free_page(%struct.page* %50)
  br label %59

52:                                               ; preds = %43
  %53 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %54 = load i32, i32* @page_put_link, align 4
  %55 = load %struct.page*, %struct.page** %9, align 8
  %56 = call i32 @set_delayed_call(%struct.delayed_call* %53, i32 %54, %struct.page* %55)
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i8* @page_address(%struct.page* %57)
  store i8* %58, i8** %4, align 8
  br label %62

59:                                               ; preds = %49, %42, %34, %18
  %60 = load i32, i32* %10, align 4
  %61 = call i8* @ERR_PTR(i32 %60)
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %59, %52, %24
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i8* @page_get_link(%struct.dentry*, %struct.inode*, %struct.delayed_call*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @fuse_readlink_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, %struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
