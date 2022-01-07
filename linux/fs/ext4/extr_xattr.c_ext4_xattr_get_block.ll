; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@REQ_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*)* @ext4_xattr_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_xattr_get_block(%struct.inode* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.buffer_head* null, %struct.buffer_head** %2, align 8
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ_PRIO, align 4
  %21 = call %struct.buffer_head* @ext4_sb_bread(i32 %15, i32 %19, i32 %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %4, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = call i64 @IS_ERR(%struct.buffer_head* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %26, %struct.buffer_head** %2, align 8
  br label %40

27:                                               ; preds = %12
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = call i32 @ext4_xattr_check_block(%struct.inode* %28, %struct.buffer_head* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = call i32 @brelse(%struct.buffer_head* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.buffer_head* @ERR_PTR(i32 %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %2, align 8
  br label %40

38:                                               ; preds = %27
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %39, %struct.buffer_head** %2, align 8
  br label %40

40:                                               ; preds = %38, %33, %25, %11
  %41 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %41
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
