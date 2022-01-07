; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_retry_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_retry_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs_page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_retry_commit(%struct.list_head* %0, %struct.pnfs_layout_segment* %1, %struct.nfs_commit_info* %2, i32 %3) #0 {
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_page*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %36, %4
  %11 = load %struct.list_head*, %struct.list_head** %5, align 8
  %12 = call i32 @list_empty(%struct.list_head* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nfs_page* @nfs_list_entry(i32 %18)
  store %struct.nfs_page* %19, %struct.nfs_page** %9, align 8
  %20 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %21 = call i32 @nfs_list_remove_request(%struct.nfs_page* %20)
  %22 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %23 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %24 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nfs_mark_request_commit(%struct.nfs_page* %22, %struct.pnfs_layout_segment* %23, %struct.nfs_commit_info* %24, i32 %25)
  %27 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %15
  %32 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %33 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfs_clear_page_commit(i32 %34)
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %38 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %37)
  br label %10

39:                                               ; preds = %10
  ret void
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_mark_request_commit(%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @nfs_clear_page_commit(i32) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
