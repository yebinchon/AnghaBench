; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"NFS: read done (%s/%llu %d@%lld)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PG_UNLOCKPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*, i32)* @nfs_readpage_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_readpage_release(%struct.nfs_page* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.address_space*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %9 = call %struct.TYPE_4__* @nfs_req_openctx(%struct.nfs_page* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.inode* @d_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %13, i32 0, i32 1
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i64 @NFS_FILEID(%struct.inode* %21)
  %23 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %27 = call i64 @req_offset(%struct.nfs_page* %26)
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %22, i32 %25, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @nfs_error_is_fatal_on_server(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @SetPageError(%struct.page* %38)
  br label %40

40:                                               ; preds = %37, %32, %2
  %41 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %42 = load i32, i32* @PG_UNLOCKPAGE, align 4
  %43 = call i64 @nfs_page_group_sync_on_bit(%struct.nfs_page* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call %struct.address_space* @page_file_mapping(%struct.page* %46)
  store %struct.address_space* %47, %struct.address_space** %7, align 8
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call i64 @PageUptodate(%struct.page* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @nfs_readpage_to_fscache(%struct.inode* %52, %struct.page* %53, i32 0)
  br label %68

55:                                               ; preds = %45
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = call i32 @PageError(%struct.page* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i32 @PagePrivate(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.address_space*, %struct.address_space** %7, align 8
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = call i32 @generic_error_remove_page(%struct.address_space* %64, %struct.page* %65)
  br label %67

67:                                               ; preds = %63, %59, %55
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = call i32 @unlock_page(%struct.page* %69)
  br label %71

71:                                               ; preds = %68, %40
  %72 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %73 = call i32 @nfs_release_request(%struct.nfs_page* %72)
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.TYPE_4__* @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i64 @nfs_error_is_fatal_on_server(i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i64 @nfs_page_group_sync_on_bit(%struct.nfs_page*, i32) #1

declare dso_local %struct.address_space* @page_file_mapping(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @nfs_readpage_to_fscache(%struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @generic_error_remove_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
