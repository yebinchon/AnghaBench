; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsync.c_ext4_sync_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsync.c_ext4_sync_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@EXT4_STATE_NEWENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ext4_sync_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_sync_parent(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* null, %struct.dentry** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = load i32, i32* @EXT4_STATE_NEWENTRY, align 4
  %9 = call i64 @ext4_test_inode_state(%struct.inode* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.inode* @igrab(%struct.inode* %13)
  store %struct.inode* %14, %struct.inode** %3, align 8
  br label %15

15:                                               ; preds = %57, %12
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i32, i32* @EXT4_STATE_NEWENTRY, align 4
  %18 = call i64 @ext4_test_inode_state(%struct.inode* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i32, i32* @EXT4_STATE_NEWENTRY, align 4
  %23 = call i32 @ext4_clear_inode_state(%struct.inode* %21, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.dentry* @d_find_any_alias(%struct.inode* %24)
  store %struct.dentry* %25, %struct.dentry** %4, align 8
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.inode* @d_inode(i32 %32)
  %34 = call %struct.inode* @igrab(%struct.inode* %33)
  store %struct.inode* %34, %struct.inode** %5, align 8
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call i32 @dput(%struct.dentry* %35)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %58

40:                                               ; preds = %29
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @iput(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %43, %struct.inode** %3, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sync_mapping_buffers(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %58

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call i32 @sync_inode_metadata(%struct.inode* %52, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  br label %15

58:                                               ; preds = %56, %50, %39, %28, %15
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call i32 @iput(%struct.inode* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @sync_mapping_buffers(i32) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
