; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_lookup_root_sec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_lookup_root_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.rpc_auth_create_args = type { i32 }
%struct.rpc_auth = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*, i32)* @nfs4_lookup_root_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_lookup_root_sec(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fsinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_auth_create_args, align 4
  %11 = alloca %struct.rpc_auth*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %10, i32 0, i32 0
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rpc_auth* @rpcauth_create(%struct.rpc_auth_create_args* %10, i32 %16)
  store %struct.rpc_auth* %17, %struct.rpc_auth** %11, align 8
  %18 = load %struct.rpc_auth*, %struct.rpc_auth** %11, align 8
  %19 = call i64 @IS_ERR(%struct.rpc_auth* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %26 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %27 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %8, align 8
  %28 = call i32 @nfs4_lookup_root(%struct.nfs_server* %25, %struct.nfs_fh* %26, %struct.nfs_fsinfo* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.rpc_auth* @rpcauth_create(%struct.rpc_auth_create_args*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rpc_auth*) #1

declare dso_local i32 @nfs4_lookup_root(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
