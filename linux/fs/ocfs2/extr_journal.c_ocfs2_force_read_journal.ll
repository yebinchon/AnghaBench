; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_force_read_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_force_read_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ocfs2_force_read_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_force_read_journal(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ocfs2_super* @OCFS2_SB(i32 %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call i32 @i_size_read(%struct.inode* %18)
  %20 = call i64 @ocfs2_blocks_for_bytes(i32 %17, i32 %19)
  store i64 %20, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %75, %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %26, i64 %27, i64* %6, i64* %7, i32* null)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %80

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.buffer_head* @__find_get_block(i32 %45, i64 %46, i32 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %9, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %54 = icmp ne %struct.buffer_head* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %40
  br label %70

56:                                               ; preds = %40
  %57 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %58 = call i32 @brelse(%struct.buffer_head* %57)
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %59, i64 %60, i32 1, %struct.buffer_head** %9)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %80

67:                                               ; preds = %56
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %70

70:                                               ; preds = %67, %55
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %35

75:                                               ; preds = %35
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %5, align 8
  br label %21

79:                                               ; preds = %21
  br label %80

80:                                               ; preds = %79, %64, %31
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_blocks_for_bytes(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head* @__find_get_block(i32, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
