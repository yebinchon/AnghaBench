; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayout.c_nfsd4_block_commit_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayout.c_nfsd4_block_commit_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)* }
%struct.iattr = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.nfsd4_layoutcommit = type { i64, %struct.TYPE_7__ }
%struct.iomap = type { i32 }

@UTIME_NOW = common dso_local global i64 0, align 8
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfsd4_layoutcommit*, %struct.iomap*, i32)* @nfsd4_block_commit_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_block_commit_blocks(%struct.inode* %0, %struct.nfsd4_layoutcommit* %1, %struct.iomap* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfsd4_layoutcommit*, align 8
  %7 = alloca %struct.iomap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.iattr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfsd4_layoutcommit* %1, %struct.nfsd4_layoutcommit** %6, align 8
  store %struct.iomap* %2, %struct.iomap** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nfsd4_layoutcommit*, %struct.nfsd4_layoutcommit** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_layoutcommit, %struct.nfsd4_layoutcommit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %9, align 8
  %17 = bitcast %struct.iattr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load %struct.nfsd4_layoutcommit*, %struct.nfsd4_layoutcommit** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd4_layoutcommit, %struct.nfsd4_layoutcommit* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UTIME_NOW, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load %struct.nfsd4_layoutcommit*, %struct.nfsd4_layoutcommit** %6, align 8
  %26 = getelementptr inbounds %struct.nfsd4_layoutcommit, %struct.nfsd4_layoutcommit* %25, i32 0, i32 1
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = call i64 @timespec64_compare(%struct.TYPE_7__* %26, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24, %4
  %32 = load %struct.nfsd4_layoutcommit*, %struct.nfsd4_layoutcommit** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd4_layoutcommit, %struct.nfsd4_layoutcommit* %32, i32 0, i32 1
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i64 @current_time(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = bitcast %struct.TYPE_7__* %33 to i8*
  %38 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load i32, i32* @ATTR_ATIME, align 4
  %41 = load i32, i32* @ATTR_CTIME, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATTR_MTIME, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 4
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 3
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 2
  %51 = load %struct.nfsd4_layoutcommit*, %struct.nfsd4_layoutcommit** %6, align 8
  %52 = getelementptr inbounds %struct.nfsd4_layoutcommit, %struct.nfsd4_layoutcommit* %51, i32 0, i32 1
  %53 = bitcast %struct.TYPE_7__* %50 to i8*
  %54 = bitcast %struct.TYPE_7__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = bitcast %struct.TYPE_7__* %49 to i8*
  %56 = bitcast %struct.TYPE_7__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = bitcast %struct.TYPE_7__* %48 to i8*
  %58 = bitcast %struct.TYPE_7__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call i64 @i_size_read(%struct.inode* %60)
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %39
  %64 = load i32, i32* @ATTR_SIZE, align 4
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %39
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)** %76, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = load %struct.iomap*, %struct.iomap** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 %77(%struct.inode* %78, %struct.iomap* %79, i32 %80, %struct.iattr* %10)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.iomap*, %struct.iomap** %7, align 8
  %83 = call i32 @kfree(%struct.iomap* %82)
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @nfserrno(i32 %84)
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @timespec64_compare(%struct.TYPE_7__*, i32*) #2

declare dso_local i64 @current_time(%struct.inode*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @i_size_read(%struct.inode*) #2

declare dso_local i32 @kfree(%struct.iomap*) #2

declare dso_local i32 @nfserrno(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
