; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_mknod_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_mknod_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i32, %struct.buffer_head**, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*)* @ocfs2_mknod_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.inode* %2, i32 %3, %struct.buffer_head** %4, %struct.buffer_head* %5, i32* %6, %struct.ocfs2_alloc_context* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store %struct.inode* %2, %struct.inode** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %29 = call i32 @ocfs2_claim_new_inode(i32* %25, %struct.inode* %26, %struct.buffer_head* %27, %struct.ocfs2_alloc_context* %28, i32* %19, i32* %21, i32* %20)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %8
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %9, align 4
  br label %72

36:                                               ; preds = %8
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = load %struct.inode*, %struct.inode** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %21, align 4
  %47 = call i32 @__ocfs2_mknod_locked(%struct.inode* %37, %struct.inode* %38, i32 %39, %struct.buffer_head** %40, %struct.buffer_head* %41, i32* %42, %struct.ocfs2_alloc_context* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %36
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %21, align 4
  %53 = call i32 @ocfs2_which_suballoc_group(i32 %51, i32 %52)
  store i32 %53, i32* %22, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %56 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %59 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = call i32 @ocfs2_free_suballoc_bits(i32* %54, i32 %57, i32 %60, i32 %61, i32 %62, i32 1)
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load i32, i32* %23, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %69

69:                                               ; preds = %66, %50
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %32
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @ocfs2_claim_new_inode(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @__ocfs2_mknod_locked(%struct.inode*, %struct.inode*, i32, %struct.buffer_head**, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
