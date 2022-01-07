; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.inode = type { i32 }
%struct.nfs4_getattr_arg = type { i32, i32*, %struct.nfs_fh* }
%struct.nfs4_getattr_res = type { i32, %struct.nfs_server*, %struct.nfs4_label*, %struct.nfs_fattr* }
%struct.rpc_message = type { %struct.nfs4_getattr_res*, %struct.nfs4_getattr_arg*, i32* }

@NFS4_BITMASK_SZ = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_GETATTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*)* @_nfs4_proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_getattr(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3, %struct.inode* %4) #0 {
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca %struct.nfs4_label*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nfs4_getattr_arg, align 8
  %14 = alloca %struct.nfs4_getattr_res, align 8
  %15 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %9, align 8
  store %struct.inode* %4, %struct.inode** %10, align 8
  %16 = load i32, i32* @NFS4_BITMASK_SZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = getelementptr inbounds %struct.nfs4_getattr_arg, %struct.nfs4_getattr_arg* %13, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.nfs4_getattr_arg, %struct.nfs4_getattr_arg* %13, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = getelementptr inbounds %struct.nfs4_getattr_arg, %struct.nfs4_getattr_arg* %13, i32 0, i32 2
  %23 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fh* %23, %struct.nfs_fh** %22, align 8
  %24 = getelementptr inbounds %struct.nfs4_getattr_res, %struct.nfs4_getattr_res* %14, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.nfs4_getattr_res, %struct.nfs4_getattr_res* %14, i32 0, i32 1
  %26 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %26, %struct.nfs_server** %25, align 8
  %27 = getelementptr inbounds %struct.nfs4_getattr_res, %struct.nfs4_getattr_res* %14, i32 0, i32 2
  %28 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  store %struct.nfs4_label* %28, %struct.nfs4_label** %27, align 8
  %29 = getelementptr inbounds %struct.nfs4_getattr_res, %struct.nfs4_getattr_res* %14, i32 0, i32 3
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  store %struct.nfs_fattr* %30, %struct.nfs_fattr** %29, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 0
  store %struct.nfs4_getattr_res* %14, %struct.nfs4_getattr_res** %31, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 1
  store %struct.nfs4_getattr_arg* %13, %struct.nfs4_getattr_arg** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 2
  %34 = load i32*, i32** @nfs4_procedures, align 8
  %35 = load i64, i64* @NFSPROC4_CLNT_GETATTR, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %33, align 8
  %37 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %38 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %39 = call i32 @nfs4_bitmask(%struct.nfs_server* %37, %struct.nfs4_label* %38)
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @nfs4_bitmap_copy_adjust(i32* %19, i32 %39, %struct.inode* %40)
  %42 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %43 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %42)
  %44 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %45 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %48 = getelementptr inbounds %struct.nfs4_getattr_arg, %struct.nfs4_getattr_arg* %13, i32 0, i32 0
  %49 = getelementptr inbounds %struct.nfs4_getattr_res, %struct.nfs4_getattr_res* %14, i32 0, i32 0
  %50 = call i32 @nfs4_call_sync(i32 %46, %struct.nfs_server* %47, %struct.rpc_message* %15, i32* %48, i32* %49, i32 0)
  %51 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nfs4_bitmap_copy_adjust(i32*, i32, %struct.inode*) #2

declare dso_local i32 @nfs4_bitmask(%struct.nfs_server*, %struct.nfs4_label*) #2

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #2

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
