; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_layout_mark_request_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_layout_mark_request_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { i32*, %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfs_commit_info*, %struct.nfs_page*)* }
%struct.TYPE_6__ = type { i32 }

@PG_COMMIT_TO_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_layout_mark_request_commit(%struct.nfs_page* %0, %struct.pnfs_layout_segment* %1, %struct.nfs_commit_info* %2, i64 %3) #0 {
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.pnfs_commit_bucket*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %5, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %12 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_6__* @NFS_I(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %18 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %20, align 8
  store %struct.pnfs_commit_bucket* %21, %struct.pnfs_commit_bucket** %10, align 8
  %22 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %22, i64 %23
  %25 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %24, i32 0, i32 1
  store %struct.list_head* %25, %struct.list_head** %9, align 8
  %26 = load %struct.list_head*, %struct.list_head** %9, align 8
  %27 = call i64 @list_empty(%struct.list_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %4
  %30 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %31 = call i32 @pnfs_is_valid_lseg(%struct.pnfs_layout_segment* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %35 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_6__* @NFS_I(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.nfs_commit_info*, %struct.nfs_page*)*, i32 (%struct.nfs_commit_info*, %struct.nfs_page*)** %43, align 8
  %45 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %46 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %47 = call i32 %44(%struct.nfs_commit_info* %45, %struct.nfs_page* %46)
  br label %89

48:                                               ; preds = %29
  %49 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %49, i64 %50
  %52 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON_ONCE(i32 %55)
  %57 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %58 = call i32* @pnfs_get_lseg(%struct.pnfs_layout_segment* %57)
  %59 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %59, i64 %60
  %62 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %61, i32 0, i32 0
  store i32* %58, i32** %62, align 8
  br label %63

63:                                               ; preds = %48, %4
  %64 = load i32, i32* @PG_COMMIT_TO_DS, align 4
  %65 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %66 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %69 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %75 = load %struct.list_head*, %struct.list_head** %9, align 8
  %76 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %77 = call i32 @nfs_request_add_commit_list_locked(%struct.nfs_page* %74, %struct.list_head* %75, %struct.nfs_commit_info* %76)
  %78 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %79 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_6__* @NFS_I(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %85 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %88 = call i32 @nfs_mark_page_unstable(i32 %86, %struct.nfs_commit_info* %87)
  br label %89

89:                                               ; preds = %63, %33
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @NFS_I(i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @pnfs_is_valid_lseg(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32* @pnfs_get_lseg(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs_request_add_commit_list_locked(%struct.nfs_page*, %struct.list_head*, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_mark_page_unstable(i32, %struct.nfs_commit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
