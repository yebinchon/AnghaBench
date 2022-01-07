; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_test_suballoc_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_test_suballoc_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_group_desc = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"suballoc bit %u out of range of %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"read group %llu failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64, i64, i64, i32*)* @ocfs2_test_suballoc_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_test_suballoc_bit(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_group_desc*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %13, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @trace_ocfs2_test_suballoc_bit(i64 %20, i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %15, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add nsw i64 %28, 1
  %30 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %31 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @ocfs2_bits_per_group(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %7
  %37 = load i32, i32* @ML_ERROR, align 4
  %38 = load i64, i64* %13, align 8
  %39 = trunc i64 %38 to i32
  %40 = zext i32 %39 to i64
  %41 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @ocfs2_bits_per_group(i32* %43)
  %45 = call i32 @mlog(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %19, align 4
  br label %82

48:                                               ; preds = %7
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  br label %57

53:                                               ; preds = %48
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i64 @ocfs2_which_suballoc_group(i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i64 [ %52, %51 ], [ %56, %53 ]
  store i64 %58, i64* %18, align 8
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %61 = load i64, i64* %18, align 8
  %62 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %59, %struct.ocfs2_dinode* %60, i64 %61, %struct.buffer_head** %17)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load i32, i32* @ML_ERROR, align 4
  %67 = load i64, i64* %18, align 8
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @mlog(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %67, i32 %68)
  br label %82

70:                                               ; preds = %57
  %71 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %74, %struct.ocfs2_group_desc** %16, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %77 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i64*
  %80 = call i32 @ocfs2_test_bit(i64 %75, i64* %79)
  %81 = load i32*, i32** %14, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %70, %65, %36
  %83 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %84 = call i32 @brelse(%struct.buffer_head* %83)
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %19, align 4
  ret i32 %91
}

declare dso_local i32 @trace_ocfs2_test_suballoc_bit(i64, i32) #1

declare dso_local i32 @ocfs2_bits_per_group(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i64 @ocfs2_which_suballoc_group(i64, i64) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_test_bit(i64, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
