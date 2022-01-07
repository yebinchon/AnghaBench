; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_file_remove_privs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_file_remove_privs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_remove_privs(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.dentry* @file_dentry(%struct.file* %8)
  store %struct.dentry* %9, %struct.dentry** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i64 @IS_NOSEC(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @dentry_needs_remove_privs(%struct.dentry* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @__remove_privs(%struct.dentry* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i32 @inode_has_no_xattr(%struct.inode* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %27, %21
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.dentry* @file_dentry(%struct.file*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @IS_NOSEC(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @dentry_needs_remove_privs(%struct.dentry*) #1

declare dso_local i32 @__remove_privs(%struct.dentry*, i32) #1

declare dso_local i32 @inode_has_no_xattr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
