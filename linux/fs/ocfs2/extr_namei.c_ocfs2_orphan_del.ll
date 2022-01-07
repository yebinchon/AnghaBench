; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_orphan_del.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_orphan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_2__ = type { i64 }

@OCFS2_DIO_ORPHAN_PREFIX_LEN = common dso_local global i32 0, align 4
@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OCFS2_DIO_ORPHAN_PREFIX = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_orphan_del(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %19 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %21 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %22 = add nsw i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %27 = bitcast %struct.ocfs2_dir_lookup_result* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %6
  %31 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i8*, i8** @OCFS2_DIO_ORPHAN_PREFIX, align 8
  %34 = call i32 @snprintf(i8* %26, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %131

44:                                               ; preds = %30
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %26, i64 %50
  %52 = call i32 @ocfs2_blkno_stringify(i64 %48, i8* %51)
  store i32 %52, i32* %17, align 4
  br label %59

53:                                               ; preds = %6
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ocfs2_blkno_stringify(i64 %57, i8* %26)
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i32, i32* %17, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %122

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @strlen(i8* %26)
  %71 = call i32 @trace_ocfs2_orphan_del(i64 %69, i8* %26, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @INODE_CACHE(%struct.inode* %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %76 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %77 = call i32 @ocfs2_journal_access_di(i32* %72, i32 %74, %struct.buffer_head* %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %122

83:                                               ; preds = %65
  %84 = call i32 @strlen(i8* %26)
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @ocfs2_find_entry(i8* %26, i32 %84, %struct.inode* %85, %struct.ocfs2_dir_lookup_result* %18)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %122

92:                                               ; preds = %83
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = call i32 @ocfs2_delete_entry(i32* %93, %struct.inode* %94, %struct.ocfs2_dir_lookup_result* %18)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %122

101:                                              ; preds = %92
  %102 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %105, %struct.ocfs2_dinode** %16, align 8
  %106 = load %struct.inode*, %struct.inode** %11, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @S_ISDIR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %113 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %112, i32 -1)
  br label %114

114:                                              ; preds = %111, %101
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %117 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %116)
  %118 = call i32 @set_nlink(%struct.inode* %115, i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %121 = call i32 @ocfs2_journal_dirty(i32* %119, %struct.buffer_head* %120)
  br label %122

122:                                              ; preds = %114, %98, %89, %80, %62
  %123 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %18)
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @mlog_errno(i32 %127)
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %131

131:                                              ; preds = %129, %38
  %132 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i32 @mlog_errno(i32) #3

declare dso_local i32 @ocfs2_blkno_stringify(i64, i8*) #3

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #3

declare dso_local i32 @trace_ocfs2_orphan_del(i64, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #3

declare dso_local i32 @INODE_CACHE(%struct.inode*) #3

declare dso_local i32 @ocfs2_find_entry(i8*, i32, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #3

declare dso_local i32 @ocfs2_delete_entry(i32*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #3

declare dso_local i64 @S_ISDIR(i32) #3

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #3

declare dso_local i32 @set_nlink(%struct.inode*, i32) #3

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #3

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #3

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
