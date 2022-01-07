; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_mark_request_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_mark_request_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_mark_request_commit(%struct.nfs_page* %0, %struct.pnfs_layout_segment* %1, %struct.nfs_commit_info* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_page* %0, %struct.nfs_page** %5, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %10 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %11 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @pnfs_mark_request_commit(%struct.nfs_page* %9, %struct.pnfs_layout_segment* %10, %struct.nfs_commit_info* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %20

16:                                               ; preds = %4
  %17 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %18 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %19 = call i32 @nfs_request_add_commit_list(%struct.nfs_page* %17, %struct.nfs_commit_info* %18)
  br label %20

20:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @pnfs_mark_request_commit(%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @nfs_request_add_commit_list(%struct.nfs_page*, %struct.nfs_commit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
