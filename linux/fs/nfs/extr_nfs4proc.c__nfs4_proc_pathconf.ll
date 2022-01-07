; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_pathconf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32*, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_pathconf = type { i32 }
%struct.nfs4_pathconf_arg = type { i32*, i32, %struct.nfs_fh* }
%struct.nfs4_pathconf_res = type { i32, %struct.nfs_pathconf* }
%struct.rpc_message = type { %struct.nfs4_pathconf_res*, %struct.nfs4_pathconf_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_PATHCONF = common dso_local global i64 0, align 8
@nfs4_pathconf_bitmap = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)* @_nfs4_proc_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_pathconf(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_pathconf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_pathconf*, align 8
  %8 = alloca %struct.nfs4_pathconf_arg, align 8
  %9 = alloca %struct.nfs4_pathconf_res, align 8
  %10 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_pathconf* %2, %struct.nfs_pathconf** %7, align 8
  %11 = getelementptr inbounds %struct.nfs4_pathconf_arg, %struct.nfs4_pathconf_arg* %8, i32 0, i32 0
  %12 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = getelementptr inbounds %struct.nfs4_pathconf_arg, %struct.nfs4_pathconf_arg* %8, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.nfs4_pathconf_arg, %struct.nfs4_pathconf_arg* %8, i32 0, i32 2
  %17 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fh* %17, %struct.nfs_fh** %16, align 8
  %18 = getelementptr inbounds %struct.nfs4_pathconf_res, %struct.nfs4_pathconf_res* %9, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.nfs4_pathconf_res, %struct.nfs4_pathconf_res* %9, i32 0, i32 1
  %20 = load %struct.nfs_pathconf*, %struct.nfs_pathconf** %7, align 8
  store %struct.nfs_pathconf* %20, %struct.nfs_pathconf** %19, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.nfs4_pathconf_res* %9, %struct.nfs4_pathconf_res** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.nfs4_pathconf_arg* %8, %struct.nfs4_pathconf_arg** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %24 = load i32*, i32** @nfs4_procedures, align 8
  %25 = load i64, i64* @NFSPROC4_CLNT_PATHCONF, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.nfs4_pathconf_arg, %struct.nfs4_pathconf_arg* %8, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @nfs4_pathconf_bitmap, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.nfs_pathconf*, %struct.nfs_pathconf** %7, align 8
  %38 = call i32 @memset(%struct.nfs_pathconf* %37, i32 0, i32 4)
  store i32 0, i32* %4, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load %struct.nfs_pathconf*, %struct.nfs_pathconf** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_pathconf, %struct.nfs_pathconf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nfs_fattr_init(i32 %42)
  %44 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %48 = getelementptr inbounds %struct.nfs4_pathconf_arg, %struct.nfs4_pathconf_arg* %8, i32 0, i32 1
  %49 = getelementptr inbounds %struct.nfs4_pathconf_res, %struct.nfs4_pathconf_res* %9, i32 0, i32 0
  %50 = call i32 @nfs4_call_sync(i32 %46, %struct.nfs_server* %47, %struct.rpc_message* %10, i32* %48, i32* %49, i32 0)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %39, %36
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.nfs_pathconf*, i32, i32) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
