; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_query_inode_wipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_query_inode_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32, i64 }
%struct.ocfs2_dinode = type { i32, i32, i32, i64, i32 }

@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_SKIP_ORPHAN_DIR = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Inode %llu (on-disk %llu) not orphaned! Disk flags  0x%x, inode flags 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32*)* @ocfs2_query_inode_wipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_query_inode_wipe(%struct.inode* %0, %struct.buffer_head* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_inode_info*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %11)
  store %struct.ocfs2_inode_info* %12, %struct.ocfs2_inode_info** %9, align 8
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %15 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_ocfs2_query_inode_wipe_begin(i64 %16, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @ocfs2_inode_is_valid_to_delete(%struct.inode* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %109

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %109

31:                                               ; preds = %25
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %35, %struct.ocfs2_dinode** %10, align 8
  %36 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %31
  %44 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %45 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %43
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 2, i32* %8, align 4
  br label %109

59:                                               ; preds = %50
  %60 = load i32, i32* @EEXIST, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @ML_ERROR, align 4
  %63 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %64 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @le64_to_cpu(i32 %68)
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %75 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @mlog(i32 %62, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %69, i32 %73, i32 %76)
  br label %109

78:                                               ; preds = %43, %31
  %79 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %80 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %109

88:                                               ; preds = %78
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call i32 @ocfs2_try_open_lock(%struct.inode* %89, i32 1)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %109

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %109

102:                                              ; preds = %96
  %103 = load i32*, i32** %6, align 8
  store i32 1, i32* %103, align 4
  %104 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %105 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = call i32 @trace_ocfs2_query_inode_wipe_succ(i32 %107)
  br label %109

109:                                              ; preds = %102, %99, %95, %83, %59, %58, %30, %24
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @trace_ocfs2_query_inode_wipe_end(i32 %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_query_inode_wipe_begin(i64, i32) #1

declare dso_local i32 @ocfs2_inode_is_valid_to_delete(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_try_open_lock(%struct.inode*, i32) #1

declare dso_local i32 @trace_ocfs2_query_inode_wipe_succ(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_query_inode_wipe_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
