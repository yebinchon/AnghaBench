; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_replace_cow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_replace_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cow_context = type { i64, i64, i32 (%struct.ocfs2_cow_context*, i64, i64*, i64*, i32*)*, i32, %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"Inode %lu want to use refcount tree, but the feature bit is not set in the super block\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cow_context*)* @ocfs2_replace_cow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replace_cow(%struct.ocfs2_cow_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_cow_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_cow_context* %0, %struct.ocfs2_cow_context** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %12, i32 0, i32 4
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %11, align 8
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %26 = call i32 @ocfs2_refcount_tree(%struct.ocfs2_super* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ocfs2_error(i32 %31, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %2, align 4
  br label %104

36:                                               ; preds = %1
  %37 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %37, i32 0, i32 3
  %39 = call i32 @ocfs2_init_dealloc_ctxt(i32* %38)
  br label %40

40:                                               ; preds = %83, %36
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %40
  %44 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %44, i32 0, i32 2
  %46 = load i32 (%struct.ocfs2_cow_context*, i64, i64*, i64*, i32*)*, i32 (%struct.ocfs2_cow_context*, i64, i64*, i64*, i32*)** %45, align 8
  %47 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 %46(%struct.ocfs2_cow_context* %47, i64 %48, i64* %8, i64* %9, i32* %10)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %90

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %66, %55
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ocfs2_make_clusters_writable(i32 %71, %struct.ocfs2_cow_context* %72, i64 %73, i64 %74, i64 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %90

83:                                               ; preds = %68
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %7, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %40

90:                                               ; preds = %80, %52, %40
  %91 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %92 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %91, i32 0, i32 3
  %93 = call i64 @ocfs2_dealloc_has_cluster(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %97 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %96, i32 1)
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %99 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %3, align 8
  %100 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %99, i32 0, i32 3
  %101 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %98, i32* %100)
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %28
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_refcount_tree(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_make_clusters_writable(i32, %struct.ocfs2_cow_context*, i64, i64, i64, i32) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
