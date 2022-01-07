; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_discontig_fix_result.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_discontig_fix_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ocfs2_group_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_suballoc_result = type { i64, i64, i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_alloc_context*, %struct.ocfs2_group_desc*, %struct.ocfs2_suballoc_result*)* @ocfs2_bg_discontig_fix_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_bg_discontig_fix_result(%struct.ocfs2_alloc_context* %0, %struct.ocfs2_group_desc* %1, %struct.ocfs2_suballoc_result* %2) #0 {
  %4 = alloca %struct.ocfs2_alloc_context*, align 8
  %5 = alloca %struct.ocfs2_group_desc*, align 8
  %6 = alloca %struct.ocfs2_suballoc_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_chain_list*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %4, align 8
  store %struct.ocfs2_group_desc* %1, %struct.ocfs2_group_desc** %5, align 8
  store %struct.ocfs2_suballoc_result* %2, %struct.ocfs2_suballoc_result** %6, align 8
  %12 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %13 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %20, %struct.ocfs2_dinode** %10, align 8
  %21 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.ocfs2_chain_list* %23, %struct.ocfs2_chain_list** %11, align 8
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i64 @ocfs2_is_cluster_bitmap(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %31 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %89

32:                                               ; preds = %3
  %33 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %45 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OCFS2_SB(i32 %48)
  %50 = call i32 @ocfs2_supports_discontig_bg(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %32
  %53 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52, %32
  br label %89

59:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %5, align 8
  %63 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %60
  %69 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %5, align 8
  %70 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %72, i64 %74
  store %struct.ocfs2_extent_rec* %75, %struct.ocfs2_extent_rec** %9, align 8
  %76 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %77 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %78 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %11, align 8
  %79 = call i64 @ocfs2_bg_discontig_fix_by_rec(%struct.ocfs2_suballoc_result* %76, %struct.ocfs2_extent_rec* %77, %struct.ocfs2_chain_list* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %6, align 8
  %84 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %89

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %60

89:                                               ; preds = %29, %58, %81, %60
  ret void
}

declare dso_local i64 @ocfs2_is_cluster_bitmap(%struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_supports_discontig_bg(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_bg_discontig_fix_by_rec(%struct.ocfs2_suballoc_result*, %struct.ocfs2_extent_rec*, %struct.ocfs2_chain_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
