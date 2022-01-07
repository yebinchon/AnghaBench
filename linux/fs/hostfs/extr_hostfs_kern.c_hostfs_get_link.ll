; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @hostfs_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hostfs_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ECHILD, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i8* @ERR_PTR(i32 %15)
  store i8* %16, i8** %4, align 8
  br label %63

17:                                               ; preds = %3
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i8* @dentry_name(%struct.dentry* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @PATH_MAX, align 4
  %34 = call i32 @hostfs_do_readlink(i8* %31, i8* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @E2BIG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @__putname(i8* %42)
  br label %44

44:                                               ; preds = %41, %23
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @kfree(i8* %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @ERR_PTR(i32 %50)
  store i8* %51, i8** %4, align 8
  br label %63

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %17
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i8* @ERR_PTR(i32 %55)
  store i8* %56, i8** %4, align 8
  br label %63

57:                                               ; preds = %52
  %58 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %59 = load i32, i32* @kfree_link, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @set_delayed_call(%struct.delayed_call* %58, i32 %59, i8* %60)
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %57, %53, %47, %13
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @dentry_name(%struct.dentry*) #1

declare dso_local i32 @hostfs_do_readlink(i8*, i8*, i32) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
