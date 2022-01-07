; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.inode = type { i32 }
%struct.rpc_message = type { %struct.nfs_fattr*, %struct.nfs_fh*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_GETATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NFS call  getattr\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply getattr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*)* @nfs_proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_getattr(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3, %struct.inode* %4) #0 {
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca %struct.nfs4_label*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %9, align 8
  store %struct.inode* %4, %struct.inode** %10, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  store %struct.nfs_fattr* %14, %struct.nfs_fattr** %13, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  %16 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fh* %16, %struct.nfs_fh** %15, align 8
  %17 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %18 = load i32*, i32** @nfs_procedures, align 8
  %19 = load i64, i64* @NFSPROC_GETATTR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %17, align 8
  %21 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %23 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %22)
  %24 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rpc_call_sync(i32 %26, %struct.rpc_message* %11, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %12, align 4
  ret i32 %30
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
