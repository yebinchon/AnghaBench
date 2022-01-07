; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_extend_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_extend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64)* @ocfs2_extend_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_file(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %9)
  store %struct.ocfs2_inode_info* %10, %struct.ocfs2_inode_info** %8, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = icmp ne %struct.buffer_head* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %102

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i64 @i_size_read(%struct.inode* %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %102

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i64 @i_size_read(%struct.inode* %27)
  %29 = icmp slt i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %32, i32 0, i32 1
  %34 = call i32 @down_write(i32* %33)
  %35 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %25
  %42 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @ocfs2_size_fits_inline_data(%struct.buffer_head* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 1
  %49 = call i32 @up_write(i32* %48)
  br label %91

50:                                               ; preds = %41
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %53 = call i32 @ocfs2_convert_inline_data_to_extents(%struct.inode* %51, %struct.buffer_head* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %57, i32 0, i32 1
  %59 = call i32 @up_write(i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %102

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %25
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @OCFS2_SB(i32 %66)
  %68 = call i64 @ocfs2_sparse_alloc(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @ocfs2_zero_extend(%struct.inode* %71, %struct.buffer_head* %72, i64 %73)
  store i32 %74, i32* %7, align 4
  br label %81

75:                                               ; preds = %63
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @ocfs2_extend_no_holes(%struct.inode* %76, %struct.buffer_head* %77, i64 %78, i64 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %83 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %82, i32 0, i32 1
  %84 = call i32 @up_write(i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %102

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %46
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @ocfs2_simple_size_update(%struct.inode* %92, %struct.buffer_head* %93, i64 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %101

101:                                              ; preds = %98, %91
  br label %102

102:                                              ; preds = %101, %87, %56, %24, %18
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ocfs2_size_fits_inline_data(%struct.buffer_head*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_convert_inline_data_to_extents(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_sparse_alloc(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_zero_extend(%struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ocfs2_extend_no_holes(%struct.inode*, %struct.buffer_head*, i64, i64) #1

declare dso_local i32 @ocfs2_simple_size_update(%struct.inode*, %struct.buffer_head*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
