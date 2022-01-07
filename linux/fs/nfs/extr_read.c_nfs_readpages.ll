; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_pageio_descriptor = type { i32, %struct.nfs_pgio_mirror* }
%struct.nfs_pgio_mirror = type { i32 }
%struct.nfs_readdesc = type { i32*, %struct.nfs_pageio_descriptor* }
%struct.TYPE_4__ = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"NFS: nfs_readpages (%s/%Lu %d)\0A\00", align 1
@NFSIOS_VFSREADPAGES = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@nfs_async_read_completion_ops = common dso_local global i32 0, align 4
@readpage_async_filler = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NFSIOS_READPAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_pageio_descriptor, align 8
  %11 = alloca %struct.nfs_pgio_mirror*, align 8
  %12 = alloca %struct.nfs_readdesc, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 1
  store %struct.nfs_pageio_descriptor* %10, %struct.nfs_pageio_descriptor** %17, align 8
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %13, align 8
  %21 = load i32, i32* @ESTALE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %13, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode*, %struct.inode** %13, align 8
  %29 = call i64 @NFS_FILEID(%struct.inode* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = load i32, i32* @NFSIOS_VFSREADPAGES, align 4
  %34 = call i32 @nfs_inc_stats(%struct.inode* %32, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %13, align 8
  %36 = call i64 @NFS_STALE(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %110

39:                                               ; preds = %4
  %40 = load %struct.file*, %struct.file** %6, align 8
  %41 = icmp eq %struct.file* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %13, align 8
  %44 = load i32, i32* @FMODE_READ, align 4
  %45 = call i32* @nfs_find_open_context(%struct.inode* %43, i32* null, i32 %44)
  %46 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EBADF, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %112

53:                                               ; preds = %42
  br label %59

54:                                               ; preds = %39
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = call i32 @nfs_file_open_context(%struct.file* %55)
  %57 = call i32* @get_nfs_open_context(i32 %56)
  %58 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 0
  store i32* %57, i32** %58, align 8
  br label %59

59:                                               ; preds = %54, %53
  %60 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.inode*, %struct.inode** %13, align 8
  %63 = load %struct.address_space*, %struct.address_space** %7, align 8
  %64 = load %struct.list_head*, %struct.list_head** %8, align 8
  %65 = call i32 @nfs_readpages_from_fscache(i32* %61, %struct.inode* %62, %struct.address_space* %63, %struct.list_head* %64, i32* %9)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %106

69:                                               ; preds = %59
  %70 = load %struct.inode*, %struct.inode** %13, align 8
  %71 = call i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor* %10, %struct.inode* %70, i32 0, i32* @nfs_async_read_completion_ops)
  %72 = load %struct.address_space*, %struct.address_space** %7, align 8
  %73 = load %struct.list_head*, %struct.list_head** %8, align 8
  %74 = load i32, i32* @readpage_async_filler, align 4
  %75 = call i32 @read_cache_pages(%struct.address_space* %72, %struct.list_head* %73, i32 %74, %struct.nfs_readdesc* %12)
  store i32 %75, i32* %15, align 4
  %76 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %10)
  %77 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON_ONCE(i32 %80)
  %82 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 1
  %83 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %82, align 8
  %84 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %83, i64 0
  store %struct.nfs_pgio_mirror* %84, %struct.nfs_pgio_mirror** %11, align 8
  %85 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %11, align 8
  %86 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %13, align 8
  %89 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %11, align 8
  %94 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %14, align 8
  %102 = load %struct.inode*, %struct.inode** %13, align 8
  %103 = load i32, i32* @NFSIOS_READPAGES, align 4
  %104 = load i64, i64* %14, align 8
  %105 = call i32 @nfs_add_stats(%struct.inode* %102, i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %69, %68
  %107 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %12, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @put_nfs_open_context(i32* %108)
  br label %110

110:                                              ; preds = %106, %38
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %50
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @dprintk(i8*, i32, i64, i32) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local i32* @nfs_find_open_context(%struct.inode*, i32*, i32) #1

declare dso_local i32* @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @nfs_readpages_from_fscache(i32*, %struct.inode*, %struct.address_space*, %struct.list_head*, i32*) #1

declare dso_local i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*) #1

declare dso_local i32 @read_cache_pages(%struct.address_space*, %struct.list_head*, i32, %struct.nfs_readdesc*) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i32 @put_nfs_open_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
