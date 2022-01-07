; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ext2_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @dquot_initialize(%struct.inode* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = call %struct.inode* @ext2_new_inode(%struct.inode* %19, i32 %20, i32* %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call i32 @PTR_ERR(%struct.inode* %28)
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call i32 @ext2_set_file_ops(%struct.inode* %31)
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call i32 @mark_inode_dirty(%struct.inode* %33)
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = call i32 @ext2_add_nondir(%struct.dentry* %35, %struct.inode* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %27, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @ext2_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ext2_set_file_ops(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
