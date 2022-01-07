; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_iop_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_iop_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @kernfs_iop_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kernfs_iop_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = icmp ne %struct.dentry* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ECHILD, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %4, align 8
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @ERR_PTR(i32 %24)
  store i8* %25, i8** %4, align 8
  br label %46

26:                                               ; preds = %16
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kernfs_getlink(%struct.inode* %27, i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @kfree(i8* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %4, align 8
  br label %46

40:                                               ; preds = %26
  %41 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %42 = load i32, i32* @kfree_link, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @set_delayed_call(%struct.delayed_call* %41, i32 %42, i8* %43)
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %40, %35, %22, %12
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kernfs_getlink(%struct.inode*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
