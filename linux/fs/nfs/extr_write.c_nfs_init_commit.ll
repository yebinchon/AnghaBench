; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_init_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_init_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.inode*, i32, i32, i32*, i32, i32, %struct.pnfs_layout_segment*, i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32, i32 }
%struct.nfs_page = type { i32 }
%struct.nfs_open_context = type { i32, i32 }

@nfs_commit_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_init_commit(%struct.nfs_commit_data* %0, %struct.list_head* %1, %struct.pnfs_layout_segment* %2, %struct.nfs_commit_info* %3) #0 {
  %5 = alloca %struct.nfs_commit_data*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.pnfs_layout_segment*, align 8
  %8 = alloca %struct.nfs_commit_info*, align 8
  %9 = alloca %struct.nfs_page*, align 8
  %10 = alloca %struct.nfs_open_context*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.pnfs_layout_segment* %2, %struct.pnfs_layout_segment** %7, align 8
  store %struct.nfs_commit_info* %3, %struct.nfs_commit_info** %8, align 8
  %12 = load %struct.list_head*, %struct.list_head** %6, align 8
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nfs_page* @nfs_list_entry(i32 %14)
  store %struct.nfs_page* %15, %struct.nfs_page** %9, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %17 = call %struct.nfs_open_context* @nfs_req_openctx(%struct.nfs_page* %16)
  store %struct.nfs_open_context* %17, %struct.nfs_open_context** %10, align 8
  %18 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %19 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.inode* @d_inode(i32 %20)
  store %struct.inode* %21, %struct.inode** %11, align 8
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %23, i32 0, i32 9
  %25 = call i32 @list_splice_init(%struct.list_head* %22, i32* %24)
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %27, i32 0, i32 5
  store %struct.inode* %26, %struct.inode** %28, align 8
  %29 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %30 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %7, align 8
  %35 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %35, i32 0, i32 11
  store %struct.pnfs_layout_segment* %34, %struct.pnfs_layout_segment** %36, align 8
  %37 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %7, align 8
  %38 = icmp ne %struct.pnfs_layout_segment* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %4
  %40 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %40, i32 0, i32 9
  %42 = call i32 @nfs_get_lwb(i32* %41)
  %43 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %4
  %46 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %47 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %46, i32 0, i32 8
  store i32* @nfs_commit_ops, i32** %47, align 8
  %48 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %8, align 8
  %49 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %52 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %8, align 8
  %54 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %59 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %58, i32 0, i32 5
  %60 = load %struct.inode*, %struct.inode** %59, align 8
  %61 = call i32 @NFS_FH(%struct.inode* %60)
  %62 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %66 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %69 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %72 = call i32 @get_nfs_open_context(%struct.nfs_open_context* %71)
  %73 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %76 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %75, i32 0, i32 0
  %77 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %78 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32* %76, i32** %79, align 8
  %80 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %81 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %80, i32 0, i32 1
  %82 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %83 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %86 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %85, i32 0, i32 0
  %87 = call i32 @nfs_fattr_init(i32* %86)
  ret void
}

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local %struct.nfs_open_context* @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @list_splice_init(%struct.list_head*, i32*) #1

declare dso_local i32 @nfs_get_lwb(i32*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @get_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
