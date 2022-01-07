; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c___ocfs2_prepare_orphan_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c___ocfs2_prepare_orphan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_DIO_ORPHAN_PREFIX_LEN = common dso_local global i32 0, align 4
@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OCFS2_DIO_ORPHAN_PREFIX = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_dir_lookup_result*, i32)* @__ocfs2_prepare_orphan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_prepare_orphan_dir(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i8* %3, %struct.ocfs2_dir_lookup_result* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_super*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.ocfs2_dir_lookup_result* %4, %struct.ocfs2_dir_lookup_result** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %15, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %25 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %26 = add nsw i32 %24, %25
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i8*, i8** @OCFS2_DIO_ORPHAN_PREFIX, align 8
  %38 = call i32 @snprintf(i8* %34, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %81

48:                                               ; preds = %33
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 @ocfs2_blkno_stringify(i32 %49, i8* %53)
  store i32 %54, i32* %14, align 4
  br label %59

55:                                               ; preds = %29
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @ocfs2_blkno_stringify(i32 %56, i8* %57)
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %7, align 4
  br label %81

66:                                               ; preds = %59
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %73 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %67, %struct.inode* %68, %struct.buffer_head* %69, i8* %70, i32 %71, %struct.ocfs2_dir_lookup_result* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %76, %62, %42
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_blkno_stringify(i32, i8*) #1

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i8*, i32, %struct.ocfs2_dir_lookup_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
