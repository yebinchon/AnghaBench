; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_read_dir_block_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_read_dir_block_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ocfs2_validate_dir_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head**)* @ocfs2_read_dir_block_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_dir_block_direct(%struct.inode* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %6, align 8
  %9 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %10, %struct.buffer_head** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @INODE_CACHE(%struct.inode* %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ocfs2_validate_dir_block, align 4
  %15 = call i32 @ocfs2_read_block(i32 %12, i32 %13, %struct.buffer_head** %8, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i64 @ocfs2_supports_dir_trailer(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = call i32 @ocfs2_check_dir_trailer(%struct.inode* %26, %struct.buffer_head* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  %34 = icmp ne %struct.buffer_head* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = call i32 @brelse(%struct.buffer_head* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %53

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %50, %struct.buffer_head** %51, align 8
  br label %52

52:                                               ; preds = %49, %45, %42
  br label %53

53:                                               ; preds = %52, %38, %18
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @ocfs2_read_block(i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_dir_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_check_dir_trailer(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
