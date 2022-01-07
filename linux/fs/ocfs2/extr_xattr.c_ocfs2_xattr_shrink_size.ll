; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_shrink_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_shrink_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_shrink_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_shrink_size(%struct.inode* %0, i64 %1, i64 %2, %struct.ocfs2_xattr_value_buf* %3, %struct.ocfs2_xattr_set_ctxt* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %11 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ocfs2_xattr_value_buf* %3, %struct.ocfs2_xattr_value_buf** %10, align 8
  store %struct.ocfs2_xattr_set_ctxt* %4, %struct.ocfs2_xattr_set_ctxt** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %14, align 8
  br label %28

28:                                               ; preds = %64, %23
  %29 = load i64, i64* %14, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %28
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %10, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @ocfs2_xattr_get_clusters(%struct.inode* %32, i64 %33, i64* %16, i64* %17, i32* %37, i32* %13)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %82

44:                                               ; preds = %31
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %17, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %10, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %11, align 8
  %58 = call i32 @__ocfs2_remove_xattr_range(%struct.inode* %51, %struct.ocfs2_xattr_value_buf* %52, i64 %53, i64 %54, i64 %55, i32 %56, %struct.ocfs2_xattr_set_ctxt* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %82

64:                                               ; preds = %50
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @ocfs2_clusters_to_blocks(i32 %67, i64 %68)
  store i32 %69, i32* %18, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = call i32 @INODE_CACHE(%struct.inode* %70)
  %72 = load i32, i32* %18, align 4
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @ocfs2_remove_xattr_clusters_from_cache(i32 %71, i32 %72, i64 %73)
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %15, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %14, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %14, align 8
  br label %28

81:                                               ; preds = %28
  br label %82

82:                                               ; preds = %81, %61, %41
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode*, i64, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @__ocfs2_remove_xattr_range(%struct.inode*, %struct.ocfs2_xattr_value_buf*, i64, i64, i64, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i32 @ocfs2_remove_xattr_clusters_from_cache(i32, i32, i64) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
