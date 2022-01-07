; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32*, i32 }
%struct.dentry = type { i32 }

@GFP_USER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@simple_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @bpf_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* @GFP_USER, align 4
  %12 = load i32, i32* @__GFP_NOWARN, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @kstrdup(i8* %10, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* @S_IRWXUGO, align 4
  %26 = load i32, i32* @S_IFLNK, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.inode* @bpf_get_inode(i32 %23, %struct.inode* %24, i32 %27)
  store %struct.inode* %28, %struct.inode** %9, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call i64 @IS_ERR(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %20
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  store i32* @simple_symlink_inode_operations, i32** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @bpf_dentry_finalize(%struct.dentry* %43, %struct.inode* %44, %struct.inode* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %37, %32, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.inode* @bpf_get_inode(i32, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @bpf_dentry_finalize(%struct.dentry*, %struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
