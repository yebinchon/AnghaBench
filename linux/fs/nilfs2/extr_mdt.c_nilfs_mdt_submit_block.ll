; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_submit_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_submit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, i32, %struct.buffer_head**)* @nilfs_mdt_submit_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_submit_block(%struct.inode* %0, i64 %1, i32 %2, i32 %3, %struct.buffer_head** %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %16, i32 %19, i64 %20, i32 0)
  store %struct.buffer_head* %21, %struct.buffer_head** %11, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %112

29:                                               ; preds = %5
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %33 = call i64 @buffer_uptodate(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %96

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @REQ_RAHEAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %43 = call i32 @trylock_buffer(%struct.buffer_head* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %101

48:                                               ; preds = %41
  br label %52

49:                                               ; preds = %36
  %50 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %51 = call i32 @lock_buffer(%struct.buffer_head* %50)
  br label %52

52:                                               ; preds = %49, %48
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = call i64 @buffer_uptodate(%struct.buffer_head* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = call i32 @unlock_buffer(%struct.buffer_head* %57)
  br label %96

59:                                               ; preds = %52
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @nilfs_bmap_lookup(i32 %63, i64 %64, i64* %12)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = call i32 @unlock_buffer(%struct.buffer_head* %70)
  br label %101

72:                                               ; preds = %59
  %73 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %12, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @map_bh(%struct.buffer_head* %73, i32 %76, i32 %78)
  %80 = load i32, i32* @end_buffer_read_sync, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = call i32 @get_bh(%struct.buffer_head* %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %88 = call i32 @submit_bh(i32 %85, i32 %86, %struct.buffer_head* %87)
  store i32 0, i32* %13, align 4
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @trace_nilfs2_mdt_submit_block(%struct.inode* %89, i32 %92, i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %72, %56, %35
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = call i32 @get_bh(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %100 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %99, %struct.buffer_head** %100, align 8
  br label %101

101:                                              ; preds = %96, %69, %45
  %102 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @unlock_page(i32 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %107 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @put_page(i32 %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  br label %112

112:                                              ; preds = %101, %28
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_bmap_lookup(i32, i64, i64*) #1

declare dso_local %struct.TYPE_2__* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @trace_nilfs2_mdt_submit_block(%struct.inode*, i32, i64, i32) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
