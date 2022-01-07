; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c___ocfs2_dx_dir_new_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c___ocfs2_dx_dir_new_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32, i32*)* @__ocfs2_dx_dir_new_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_dx_dir_new_cluster(%struct.inode* %0, i32 %1, i32* %2, %struct.ocfs2_alloc_context* %3, %struct.buffer_head** %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %11, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %19, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %26 = call i32 @__ocfs2_claim_clusters(i32* %24, %struct.ocfs2_alloc_context* %25, i32 1, i32 1, i32* %16, i32* %17)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %53

32:                                               ; preds = %7
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @ocfs2_clusters_to_blocks(i32 %35, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @ocfs2_dx_dir_format_cluster(%struct.ocfs2_super* %38, i32* %39, %struct.inode* %40, %struct.buffer_head** %41, i32 %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %53

50:                                               ; preds = %32
  %51 = load i32, i32* %18, align 4
  %52 = load i32*, i32** %14, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47, %29
  %54 = load i32, i32* %15, align 4
  ret i32 %54
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @__ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_dx_dir_format_cluster(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
