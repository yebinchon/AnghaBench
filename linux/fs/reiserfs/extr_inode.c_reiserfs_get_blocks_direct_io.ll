; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_get_blocks_direct_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_get_blocks_direct_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@GET_BLOCK_NO_DANGLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@i_pack_on_close_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @reiserfs_get_blocks_direct_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_get_blocks_direct_io(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @i_blocksize(%struct.inode* %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GET_BLOCK_NO_DANGLE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @reiserfs_get_block(%struct.inode* %17, i32 %18, %struct.buffer_head* %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %73

27:                                               ; preds = %4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = call i64 @buffer_mapped(%struct.buffer_head* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call i32 @clear_buffer_mapped(%struct.buffer_head* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %31, %27
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @i_pack_on_close_mask, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %41
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @reiserfs_write_lock(i32 %52)
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @reiserfs_commit_for_inode(%struct.inode* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @i_pack_on_close_mask, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @reiserfs_write_unlock(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %49
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @reiserfs_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_commit_for_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
