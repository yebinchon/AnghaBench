; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_lookup_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_lookup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.nfs4_lookup_root_arg = type { i32*, i32 }
%struct.nfs4_lookup_res = type { i32, %struct.nfs_fh*, i32, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs4_lookup_res*, %struct.nfs4_lookup_root_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOOKUP_ROOT = common dso_local global i64 0, align 8
@nfs4_fattr_bitmap = common dso_local global i32* null, align 8
@FATTR4_WORD2_SECURITY_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @_nfs4_lookup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_lookup_root(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.nfs4_lookup_root_arg, align 8
  %9 = alloca %struct.nfs4_lookup_res, align 8
  %10 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_lookup_root_arg, %struct.nfs4_lookup_root_arg* %8, i32 0, i32 0
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds %struct.nfs4_lookup_root_arg, %struct.nfs4_lookup_root_arg* %8, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %9, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %9, i32 0, i32 1
  %16 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %16, %struct.nfs_fh** %15, align 8
  %17 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %9, i32 0, i32 2
  %18 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %9, i32 0, i32 3
  %22 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  store %struct.nfs_server* %22, %struct.nfs_server** %21, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.nfs4_lookup_res* %9, %struct.nfs4_lookup_res** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.nfs4_lookup_root_arg* %8, %struct.nfs4_lookup_root_arg** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %26 = load i32*, i32** @nfs4_procedures, align 8
  %27 = load i64, i64* @NFSPROC4_CLNT_LOOKUP_ROOT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %25, align 8
  %29 = load i32*, i32** @nfs4_fattr_bitmap, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** @nfs4_fattr_bitmap, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** @nfs4_fattr_bitmap, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FATTR4_WORD2_SECURITY_LABEL, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %45 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nfs_fattr_init(i32 %46)
  %48 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %49 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %52 = getelementptr inbounds %struct.nfs4_lookup_root_arg, %struct.nfs4_lookup_root_arg* %8, i32 0, i32 1
  %53 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %9, i32 0, i32 0
  %54 = call i32 @nfs4_call_sync(i32 %50, %struct.nfs_server* %51, %struct.rpc_message* %10, i32* %52, i32* %53, i32 0)
  ret i32 %54
}

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
