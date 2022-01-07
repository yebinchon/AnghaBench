; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { i32*, i32, i64 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_xa_loc = type { i32* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_set_entry_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_set_entry_bucket(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_xa_loc, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %11 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_ocfs2_xattr_set_entry_bucket(i32 %13)
  %15 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %27

23:                                               ; preds = %4
  %24 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32* [ null, %22 ], [ %26, %23 ]
  %29 = call i32 @ocfs2_init_xattr_bucket_xa_loc(%struct.ocfs2_xa_loc* %10, i32 %17, i32* %28)
  %30 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %31 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %32 = call i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc* %10, %struct.ocfs2_xattr_info* %30, %struct.ocfs2_xattr_set_ctxt* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  br label %82

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %82

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ocfs2_defrag_xattr_bucket(%struct.inode* %49, i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %82

62:                                               ; preds = %48
  %63 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %64 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %65 = call i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc* %10, %struct.ocfs2_xattr_info* %63, %struct.ocfs2_xattr_set_ctxt* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %10, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  br label %82

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ENOSPC, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %68, %59, %45, %35
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @trace_ocfs2_xattr_set_entry_bucket(i32) #1

declare dso_local i32 @ocfs2_init_xattr_bucket_xa_loc(%struct.ocfs2_xa_loc*, i32, i32*) #1

declare dso_local i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_defrag_xattr_bucket(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
