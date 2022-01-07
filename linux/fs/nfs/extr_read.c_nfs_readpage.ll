; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

@.str = private unnamed_addr constant [32 x i8] c"NFS: nfs_readpage (%p %ld@%lu)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@NFSIOS_VFSREADPAGE = common dso_local global i32 0, align 4
@NFSIOS_READPAGES = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = call %struct.TYPE_2__* @page_file_mapping(%struct.page* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @page_index(%struct.page* %15)
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.page* %13, i32 %14, i32 %16)
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load i32, i32* @NFSIOS_VFSREADPAGE, align 4
  %20 = call i32 @nfs_inc_stats(%struct.inode* %18, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load i32, i32* @NFSIOS_READPAGES, align 4
  %23 = call i32 @nfs_add_stats(%struct.inode* %21, i32 %22, i32 1)
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @nfs_wb_page(%struct.inode* %24, %struct.page* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %101

30:                                               ; preds = %2
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i64 @PageUptodate(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %101

35:                                               ; preds = %30
  %36 = load i32, i32* @ESTALE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call i64 @NFS_STALE(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %101

42:                                               ; preds = %35
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = icmp eq %struct.file* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* @EBADF, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = load i32, i32* @FMODE_READ, align 4
  %50 = call %struct.nfs_open_context* @nfs_find_open_context(%struct.inode* %48, i32* null, i32 %49)
  store %struct.nfs_open_context* %50, %struct.nfs_open_context** %6, align 8
  %51 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %52 = icmp eq %struct.nfs_open_context* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %101

54:                                               ; preds = %45
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.file*, %struct.file** %4, align 8
  %57 = call i32 @nfs_file_open_context(%struct.file* %56)
  %58 = call %struct.nfs_open_context* @get_nfs_open_context(i32 %57)
  store %struct.nfs_open_context* %58, %struct.nfs_open_context** %6, align 8
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @IS_SYNC(%struct.inode* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @nfs_readpage_from_fscache(%struct.nfs_open_context* %64, %struct.inode* %65, %struct.page* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %97

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %74 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %73, i32 0, i32 0
  %75 = call i32 @xchg(i32* %74, i32 0)
  %76 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load %struct.page*, %struct.page** %5, align 8
  %79 = call i32 @nfs_readpage_async(%struct.nfs_open_context* %76, %struct.inode* %77, %struct.page* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %72
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = call i32 @wait_on_page_locked_killable(%struct.page* %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i64 @PageUptodate(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %93 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %92, i32 0, i32 0
  %94 = call i32 @xchg(i32* %93, i32 0)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %88, %82
  br label %96

96:                                               ; preds = %95, %72
  br label %97

97:                                               ; preds = %96, %70
  %98 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %99 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %105

101:                                              ; preds = %53, %41, %34, %29
  %102 = load %struct.page*, %struct.page** %5, align 8
  %103 = call i32 @unlock_page(%struct.page* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_2__* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @dprintk(i8*, %struct.page*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i32) #1

declare dso_local i32 @nfs_wb_page(%struct.inode*, %struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local %struct.nfs_open_context* @nfs_find_open_context(%struct.inode*, i32*, i32) #1

declare dso_local %struct.nfs_open_context* @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @nfs_readpage_from_fscache(%struct.nfs_open_context*, %struct.inode*, %struct.page*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @nfs_readpage_async(%struct.nfs_open_context*, %struct.inode*, %struct.page*) #1

declare dso_local i32 @wait_on_page_locked_killable(%struct.page*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
