; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_create_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i32 }
%struct.address_space = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BH_NILFS_Node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @nilfs_btnode_create_block(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = call %struct.inode* @NILFS_BTNC_I(%struct.address_space* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = load %struct.address_space*, %struct.address_space** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BH_NILFS_Node, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %10, %struct.address_space* %11, i32 %12, i32 %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = icmp ne %struct.buffer_head* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %74

23:                                               ; preds = %2
  %24 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %25 = call i64 @buffer_mapped(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = call i64 @buffer_uptodate(%struct.buffer_head* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call i64 @buffer_dirty(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %27, %23
  %36 = phi i1 [ true, %27 ], [ true, %23 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @i_blocksize(%struct.inode* %48)
  %50 = call i32 @memset(i32 %47, i32 0, i32 %49)
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = call i32 @set_buffer_mapped(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = call i32 @set_buffer_uptodate(%struct.buffer_head* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @unlock_page(i32 %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @put_page(i32 %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %73, %struct.buffer_head** %3, align 8
  br label %74

74:                                               ; preds = %44, %22
  %75 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %75
}

declare dso_local %struct.inode* @NILFS_BTNC_I(%struct.address_space*) #1

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
