; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_mark_request_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_mark_request_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs4_filelayout_segment = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32)* @filelayout_mark_request_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filelayout_mark_request_commit(%struct.nfs_page* %0, %struct.pnfs_layout_segment* %1, %struct.nfs_commit_info* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_filelayout_segment*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfs_page* %0, %struct.nfs_page** %5, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %13 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %12)
  store %struct.nfs4_filelayout_segment* %13, %struct.nfs4_filelayout_segment** %9, align 8
  %14 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %9, align 8
  %15 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %20 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %21 = call i32 @nfs_request_add_commit_list(%struct.nfs_page* %19, %struct.nfs_commit_info* %20)
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %24 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %25 = call i32 @req_offset(%struct.nfs_page* %24)
  %26 = call i32 @nfs4_fl_calc_j_index(%struct.pnfs_layout_segment* %23, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @select_bucket_index(%struct.nfs4_filelayout_segment* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %31 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %32 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @pnfs_layout_mark_request_commit(%struct.nfs_page* %30, %struct.pnfs_layout_segment* %31, %struct.nfs_commit_info* %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %18
  ret void
}

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @nfs_request_add_commit_list(%struct.nfs_page*, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs4_fl_calc_j_index(%struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @select_bucket_index(%struct.nfs4_filelayout_segment*, i32) #1

declare dso_local i32 @pnfs_layout_mark_request_commit(%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
