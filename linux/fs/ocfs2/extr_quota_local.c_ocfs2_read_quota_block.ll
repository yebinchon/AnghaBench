; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_read_quota_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_read_quota_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [95 x i8] c"Quota file %llu is probably corrupted! Requested to read block %Lu but file has size only %Lu\0A\00", align 1
@ocfs2_validate_quota_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head**)* @ocfs2_read_quota_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_quota_block(%struct.inode* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @i_size_read(%struct.inode* %12)
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = ashr i32 %13, %19
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @i_size_read(%struct.inode* %33)
  %35 = sext i32 %34 to i64
  %36 = call i32 @ocfs2_error(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @ocfs2_validate_quota_block, align 4
  %41 = call i32 @ocfs2_read_virt_blocks(%struct.inode* %38, i64 %39, i32 1, %struct.buffer_head** %9, i32 0, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %55, %struct.buffer_head** %56, align 8
  br label %57

57:                                               ; preds = %54, %50, %47
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_error(%struct.TYPE_3__*, i8*, i64, i64, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_virt_blocks(%struct.inode*, i64, i32, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
