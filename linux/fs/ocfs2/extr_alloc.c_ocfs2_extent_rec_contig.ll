; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_extent_rec_contig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_extent_rec_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_extent_rec = type { i64, i32 }

@CONTIG_NONE = common dso_local global i32 0, align 4
@CONTIG_RIGHT = common dso_local global i32 0, align 4
@CONTIG_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*)* @ocfs2_extent_rec_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extent_rec_contig(%struct.super_block* %0, %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ocfs2_extent_rec*, align 8
  %7 = alloca %struct.ocfs2_extent_rec*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %6, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %7, align 8
  %9 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %10 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le64_to_cpu(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CONTIG_NONE, align 4
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %24 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %25 = call i64 @ocfs2_extents_adjacent(%struct.ocfs2_extent_rec* %23, %struct.ocfs2_extent_rec* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @ocfs2_block_extent_contig(%struct.super_block* %28, %struct.ocfs2_extent_rec* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @CONTIG_RIGHT, align 4
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %27, %22
  %36 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le64_to_cpu(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %41 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %42 = call i64 @ocfs2_extents_adjacent(%struct.ocfs2_extent_rec* %40, %struct.ocfs2_extent_rec* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ocfs2_block_extent_contig(%struct.super_block* %45, %struct.ocfs2_extent_rec* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @CONTIG_LEFT, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %44, %35
  %53 = load i32, i32* @CONTIG_NONE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %50, %33, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_extents_adjacent(%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*) #1

declare dso_local i64 @ocfs2_block_extent_contig(%struct.super_block*, %struct.ocfs2_extent_rec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
