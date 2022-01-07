; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_reserve_for_window.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_reserve_for_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { %struct.buffer_head*, %struct.inode*, i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_LA_EVENT_ENOSPC = common dso_local global i32 0, align 4
@OCFS2_LA_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_alloc_context**, %struct.inode**, %struct.buffer_head**)* @ocfs2_local_alloc_reserve_for_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_reserve_for_window(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context** %1, %struct.inode** %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_alloc_context**, align 8
  %7 = alloca %struct.inode**, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_alloc_context** %1, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.inode** %2, %struct.inode*** %7, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ocfs2_alloc_context* @kzalloc(i32 24, i32 %10)
  %12 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.ocfs2_alloc_context* %11, %struct.ocfs2_alloc_context** %12, align 8
  %13 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %14 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %15 = icmp ne %struct.ocfs2_alloc_context* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %74

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %27 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %30 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %30, align 8
  %32 = call i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super* %29, %struct.ocfs2_alloc_context* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %22
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %39 = load i32, i32* @OCFS2_LA_EVENT_ENOSPC, align 4
  %40 = call i64 @ocfs2_recalc_la_window(%struct.ocfs2_super* %38, i32 %39)
  %41 = load i64, i64* @OCFS2_LA_DISABLED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %74

44:                                               ; preds = %37
  %45 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %46 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %45, align 8
  %47 = call i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context* %46)
  %48 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %49 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %48, align 8
  %50 = call i32 @memset(%struct.ocfs2_alloc_context* %49, i32 0, i32 24)
  br label %22

51:                                               ; preds = %22
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %74

57:                                               ; preds = %51
  %58 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %59 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %58, align 8
  %60 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %59, i32 0, i32 1
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = load %struct.inode**, %struct.inode*** %7, align 8
  store %struct.inode* %61, %struct.inode** %62, align 8
  %63 = load %struct.inode**, %struct.inode*** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %63, align 8
  %65 = call i32 @igrab(%struct.inode* %64)
  %66 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %67 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %66, align 8
  %68 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %67, i32 0, i32 0
  %69 = load %struct.buffer_head*, %struct.buffer_head** %68, align 8
  %70 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %69, %struct.buffer_head** %70, align 8
  %71 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %71, align 8
  %73 = call i32 @get_bh(%struct.buffer_head* %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %57, %54, %43, %16
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %79 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %78, align 8
  %80 = icmp ne %struct.ocfs2_alloc_context* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %83 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %82, align 8
  %84 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %83)
  %85 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %85, align 8
  br label %86

86:                                               ; preds = %81, %77, %74
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local %struct.ocfs2_alloc_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*) #1

declare dso_local i64 @ocfs2_recalc_la_window(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @memset(%struct.ocfs2_alloc_context*, i32, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
