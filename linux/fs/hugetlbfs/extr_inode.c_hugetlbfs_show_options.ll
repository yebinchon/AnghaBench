; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.hugetlbfs_sb_info = type { i32, i32, i32, i32, i32, %struct.hugepage_subpool* }
%struct.hugepage_subpool = type { i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c",nr_inodes=%lu\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c",pagesize=%lu%c\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c",size=%llu\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c",min_size=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @hugetlbfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.hugetlbfs_sb_info*, align 8
  %6 = alloca %struct.hugepage_subpool*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hugetlbfs_sb_info* @HUGETLBFS_SB(i32 %12)
  store %struct.hugetlbfs_sb_info* %13, %struct.hugetlbfs_sb_info** %5, align 8
  %14 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %14, i32 0, i32 5
  %16 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %15, align 8
  store %struct.hugepage_subpool* %16, %struct.hugepage_subpool** %6, align 8
  %17 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @huge_page_size(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @huge_page_shift(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %29 = call i32 @uid_eq(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %35)
  %37 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %43 = call i32 @gid_eq(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %48 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %49)
  %51 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %54 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 493
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %66 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %72 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load i64, i64* %7, align 8
  %78 = udiv i64 %77, 1024
  store i64 %78, i64* %7, align 8
  store i8 75, i8* %9, align 1
  %79 = load i64, i64* %7, align 8
  %80 = icmp uge i64 %79, 1024
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i64, i64* %7, align 8
  %83 = udiv i64 %82, 1024
  store i64 %83, i64* %7, align 8
  store i8 77, i8* %9, align 1
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i8, i8* %9, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %86, i32 %88)
  %90 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %6, align 8
  %91 = icmp ne %struct.hugepage_subpool* %90, null
  br i1 %91, label %92, label %123

92:                                               ; preds = %84
  %93 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %6, align 8
  %94 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %6, align 8
  %100 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = shl i64 %102, %104
  %106 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %97, %92
  %108 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %6, align 8
  %109 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %6, align 8
  %115 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = shl i64 %117, %119
  %121 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %120)
  br label %122

122:                                              ; preds = %112, %107
  br label %123

123:                                              ; preds = %122, %84
  ret i32 0
}

declare dso_local %struct.hugetlbfs_sb_info* @HUGETLBFS_SB(i32) #1

declare dso_local i64 @huge_page_size(i32) #1

declare dso_local i32 @huge_page_shift(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
