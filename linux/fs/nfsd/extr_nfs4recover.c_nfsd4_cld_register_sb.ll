; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_cld_register_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_cld_register_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.rpc_pipe = type { i32 }

@NFSD_PIPE_DIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFSD_CLD_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.rpc_pipe*)* @nfsd4_cld_register_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfsd4_cld_register_sb(%struct.super_block* %0, %struct.rpc_pipe* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.rpc_pipe*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.rpc_pipe* %1, %struct.rpc_pipe** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i32, i32* @NFSD_PIPE_DIR, align 4
  %10 = call %struct.dentry* @rpc_d_lookup_sb(%struct.super_block* %8, i32 %9)
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = icmp eq %struct.dentry* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.dentry* @ERR_PTR(i32 %15)
  store %struct.dentry* %16, %struct.dentry** %3, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = load i32, i32* @NFSD_CLD_PIPE, align 4
  %20 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %21 = call %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry* %18, i32 %19, i32* null, %struct.rpc_pipe* %20)
  store %struct.dentry* %21, %struct.dentry** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = call i32 @dput(%struct.dentry* %22)
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %24, %struct.dentry** %3, align 8
  br label %25

25:                                               ; preds = %17, %13
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %26
}

declare dso_local %struct.dentry* @rpc_d_lookup_sb(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @rpc_mkpipe_dentry(%struct.dentry*, i32, i32*, %struct.rpc_pipe*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
