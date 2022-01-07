; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commit_release_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commit_release_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nfs_page = type { i64, i32, i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs_server = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"NFS:       commit (%s/%llu %d@%lld)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c", error = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" mismatch\0A\00", align 1
@NFS_CONTEXT_RESEND_WRITES = common dso_local global i32 0, align 4
@NFS_CONGESTION_OFF_THRESH = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_data*)* @nfs_commit_release_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_commit_release_pages(%struct.nfs_commit_data* %0) #0 {
  %2 = alloca %struct.nfs_commit_data*, align 8
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_commit_info, align 4
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %2, align 8
  %7 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %100, %1
  %12 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %12, i32 0, i32 3
  %14 = call i32 @list_empty(%struct.TYPE_11__* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %104

17:                                               ; preds = %11
  %18 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nfs_page* @nfs_list_entry(i32 %21)
  store %struct.nfs_page* %22, %struct.nfs_page** %3, align 8
  %23 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %24 = call i32 @nfs_list_remove_request(%struct.nfs_page* %23)
  %25 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nfs_clear_page_commit(i64 %32)
  br label %34

34:                                               ; preds = %29, %17
  %35 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %36 = call %struct.TYPE_10__* @nfs_req_openctx(%struct.nfs_page* %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %44 = call %struct.TYPE_10__* @nfs_req_openctx(%struct.nfs_page* %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = call i32 @d_inode(%struct.TYPE_12__* %46)
  %48 = call i64 @NFS_FILEID(i32 %47)
  %49 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %50 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %53 = call i64 @req_offset(%struct.nfs_page* %52)
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %48, i32 %51, i64 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %34
  %58 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %64 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @nfs_mapping_set_error(i64 %65, i32 %66)
  %68 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %69 = call i32 @nfs_inode_remove_request(%struct.nfs_page* %68)
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %100

73:                                               ; preds = %34
  %74 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %75 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %74, i32 0, i32 1
  %76 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %77 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i32 @nfs_write_verifier_cmp(i32* %75, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %73
  %82 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %83 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %88 = call i32 @nfs_inode_remove_request(%struct.nfs_page* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %100

91:                                               ; preds = %73
  %92 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %94 = call i32 @nfs_mark_request_dirty(%struct.nfs_page* %93)
  %95 = load i32, i32* @NFS_CONTEXT_RESEND_WRITES, align 4
  %96 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %97 = call %struct.TYPE_10__* @nfs_req_openctx(%struct.nfs_page* %96)
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 @set_bit(i32 %95, i32* %98)
  br label %100

100:                                              ; preds = %91, %89, %70
  %101 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %102 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %101)
  %103 = call i32 (...) @cond_resched()
  br label %11

104:                                              ; preds = %11
  %105 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %106 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.nfs_server* @NFS_SERVER(i32 %107)
  store %struct.nfs_server* %108, %struct.nfs_server** %6, align 8
  %109 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %110 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %109, i32 0, i32 0
  %111 = call i64 @atomic_long_read(i32* %110)
  %112 = load i64, i64* @NFS_CONGESTION_OFF_THRESH, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %116 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @inode_to_bdi(i32 %117)
  %119 = load i32, i32* @BLK_RW_ASYNC, align 4
  %120 = call i32 @clear_bdi_congested(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %104
  %122 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %123 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %126 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @nfs_init_cinfo(%struct.nfs_commit_info* %5, i32 %124, i32 %127)
  %129 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %5, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nfs_commit_end(i32 %130)
  ret void
}

declare dso_local i32 @list_empty(%struct.TYPE_11__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_clear_page_commit(i64) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i32, i64) #1

declare dso_local %struct.TYPE_10__* @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i64 @NFS_FILEID(i32) #1

declare dso_local i32 @d_inode(%struct.TYPE_12__*) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @nfs_mapping_set_error(i64, i32) #1

declare dso_local i32 @nfs_inode_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @dprintk_cont(i8*, ...) #1

declare dso_local i32 @nfs_write_verifier_cmp(i32*, i32*) #1

declare dso_local i32 @nfs_mark_request_dirty(%struct.nfs_page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @clear_bdi_congested(i32, i32) #1

declare dso_local i32 @inode_to_bdi(i32) #1

declare dso_local i32 @nfs_init_cinfo(%struct.nfs_commit_info*, i32, i32) #1

declare dso_local i32 @nfs_commit_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
