; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs_fh = type { i32, i32, i32 }
%struct.nfs_fattr = type { i32, i32*, %struct.nfs_fattr*, %struct.nfs_fh* }
%struct.nfs4_label = type { i32 }
%struct.nfs3_diropargs = type { i32, i32, i32 }
%struct.nfs3_diropres = type { i32, i32*, %struct.nfs3_diropres*, %struct.nfs_fh* }
%struct.rpc_message = type { %struct.nfs_fattr*, %struct.nfs_fh*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_LOOKUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"NFS call  lookup %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@NFS3PROC_GETATTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply lookup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* @nfs3_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_lookup(%struct.inode* %0, %struct.qstr* %1, %struct.nfs_fh* %2, %struct.nfs_fattr* %3, %struct.nfs4_label* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs_fh*, align 8
  %10 = alloca %struct.nfs_fattr*, align 8
  %11 = alloca %struct.nfs4_label*, align 8
  %12 = alloca %struct.nfs3_diropargs, align 4
  %13 = alloca %struct.nfs3_diropres, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.qstr* %1, %struct.qstr** %8, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fattr* %3, %struct.nfs_fattr** %10, align 8
  store %struct.nfs4_label* %4, %struct.nfs4_label** %11, align 8
  %16 = getelementptr inbounds %struct.nfs3_diropargs, %struct.nfs3_diropargs* %12, i32 0, i32 0
  %17 = load %struct.qstr*, %struct.qstr** %8, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.nfs3_diropargs, %struct.nfs3_diropargs* %12, i32 0, i32 1
  %21 = load %struct.qstr*, %struct.qstr** %8, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.nfs3_diropargs, %struct.nfs3_diropargs* %12, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @NFS_FH(%struct.inode* %25)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 2
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %31 = bitcast %struct.nfs_fattr* %30 to %struct.nfs3_diropres*
  store %struct.nfs3_diropres* %31, %struct.nfs3_diropres** %29, align 8
  %32 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 3
  %33 = load %struct.nfs_fh*, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fh* %33, %struct.nfs_fh** %32, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  %35 = bitcast %struct.nfs3_diropres* %13 to %struct.nfs_fattr*
  store %struct.nfs_fattr* %35, %struct.nfs_fattr** %34, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  %37 = bitcast %struct.nfs3_diropargs* %12 to %struct.nfs_fh*
  store %struct.nfs_fh* %37, %struct.nfs_fh** %36, align 8
  %38 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  %39 = load i32*, i32** @nfs3_procedures, align 8
  %40 = load i64, i64* @NFS3PROC_LOOKUP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %38, align 8
  %42 = load %struct.qstr*, %struct.qstr** %8, align 8
  %43 = getelementptr inbounds %struct.qstr, %struct.qstr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32* (...) @nfs_alloc_fattr()
  %47 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 1
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %5
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %92

54:                                               ; preds = %5
  %55 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %56 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %55)
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call i32 @NFS_CLIENT(%struct.inode* %57)
  %59 = call i32 @rpc_call_sync(i32 %58, %struct.rpc_message* %14, i32 0)
  store i32 %59, i32* %15, align 4
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @nfs_refresh_inode(%struct.inode* %60, i32* %62)
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %54
  %67 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %68 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %66
  %74 = load i32*, i32** @nfs3_procedures, align 8
  %75 = load i64, i64* @NFS3PROC_GETATTR, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  store i32* %76, i32** %77, align 8
  %78 = load %struct.nfs_fh*, %struct.nfs_fh** %9, align 8
  %79 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  store %struct.nfs_fh* %78, %struct.nfs_fh** %79, align 8
  %80 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %81 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.nfs_fattr* %80, %struct.nfs_fattr** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = call i32 @NFS_CLIENT(%struct.inode* %82)
  %84 = call i32 @rpc_call_sync(i32 %83, %struct.rpc_message* %14, i32 0)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %73, %66, %54
  %86 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %13, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @nfs_free_fattr(i32* %87)
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %85, %51
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
