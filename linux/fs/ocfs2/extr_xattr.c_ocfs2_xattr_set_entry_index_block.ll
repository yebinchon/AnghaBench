; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_index_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_index_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i32 }
%struct.ocfs2_xattr_search = type { i32, i32, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_set_entry_index_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_set_entry_index_block(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %10 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @trace_ocfs2_xattr_set_entry_index_block(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %16 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %17 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %18 = call i32 @ocfs2_xattr_set_entry_bucket(%struct.inode* %14, %struct.ocfs2_xattr_info* %15, %struct.ocfs2_xattr_search* %16, %struct.ocfs2_xattr_set_ctxt* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %104

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %104

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ocfs2_check_xattr_bucket_collision(%struct.inode* %31, i32 %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %104

44:                                               ; preds = %30
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %53 = call i32 @ocfs2_add_new_xattr_bucket(%struct.inode* %45, i32 %48, i32 %51, %struct.ocfs2_xattr_set_ctxt* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %104

59:                                               ; preds = %44
  %60 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ocfs2_xattr_bucket_relse(i32 %62)
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %69 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %72 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %75 = call i32 @ocfs2_xattr_index_block_find(%struct.inode* %64, i32 %67, i32 %70, i32 %73, %struct.ocfs2_xattr_search* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %59
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ENODATA, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %104

84:                                               ; preds = %78, %59
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %87 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %90 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %91 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %92 = call i32 @ocfs2_xattr_set_entry_bucket(%struct.inode* %88, %struct.ocfs2_xattr_info* %89, %struct.ocfs2_xattr_search* %90, %struct.ocfs2_xattr_set_ctxt* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %103

103:                                              ; preds = %100, %95, %84
  br label %104

104:                                              ; preds = %103, %83, %56, %41, %27, %21
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @trace_ocfs2_xattr_set_entry_index_block(i32) #1

declare dso_local i32 @ocfs2_xattr_set_entry_bucket(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_check_xattr_bucket_collision(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_add_new_xattr_bucket(%struct.inode*, i32, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(i32) #1

declare dso_local i32 @ocfs2_xattr_index_block_find(%struct.inode*, i32, i32, i32, %struct.ocfs2_xattr_search*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
