; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @nilfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nilfs_transaction_info, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nilfs_transaction_begin(i32 %15, %struct.nilfs_transaction_info* %11, i32 1)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.inode* @nilfs_new_inode(%struct.inode* %22, i32 %23)
  store %struct.inode* %24, %struct.inode** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.inode* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i32 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %21
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @init_special_inode(%struct.inode* %31, i32 %34, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %37)
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @nilfs_add_nondir(%struct.dentry* %39, %struct.inode* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %30, %21
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nilfs_transaction_commit(i32 %48)
  store i32 %49, i32* %12, align 4
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nilfs_transaction_abort(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %19
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.inode* @nilfs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
