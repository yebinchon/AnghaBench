; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_group_desc = type { i32 }
%struct.ocfs2_super = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_group_desc*, i64, i32, i32)* @ocfs2_trim_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_trim_extent(%struct.super_block* %0, %struct.ocfs2_group_desc* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_group_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ocfs2_group_desc* %1, %struct.ocfs2_group_desc** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %13, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ocfs2_clusters_to_blocks(%struct.super_block* %16, i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @ocfs2_clusters_to_blocks(%struct.super_block* %19, i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %29 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le64_to_cpu(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %27, %5
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @trace_ocfs2_trim_extent(%struct.super_block* %35, i64 %36, i64 %37)
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = call i32 @sb_issue_discard(%struct.super_block* %39, i64 %40, i64 %41, i32 %42, i32 0)
  ret i32 %43
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_trim_extent(%struct.super_block*, i64, i64) #1

declare dso_local i32 @sb_issue_discard(%struct.super_block*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
