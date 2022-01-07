; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_nfs4blocklayout_register_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_nfs4blocklayout_register_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.net = type { i32 }
%struct.rpc_pipe = type { i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.net*, %struct.rpc_pipe*)* @nfs4blocklayout_register_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfs4blocklayout_register_net(%struct.net* %0, %struct.rpc_pipe* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.rpc_pipe*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.rpc_pipe* %1, %struct.rpc_pipe** %5, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = call %struct.super_block* @rpc_get_sb_net(%struct.net* %8)
  store %struct.super_block* %9, %struct.super_block** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %6, align 8
  %11 = icmp ne %struct.super_block* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = load %struct.rpc_pipe*, %struct.rpc_pipe** %5, align 8
  %16 = call %struct.dentry* @nfs4blocklayout_register_sb(%struct.super_block* %14, %struct.rpc_pipe* %15)
  store %struct.dentry* %16, %struct.dentry** %7, align 8
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = call i32 @rpc_put_sb_net(%struct.net* %17)
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %19, %struct.dentry** %3, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %21
}

declare dso_local %struct.super_block* @rpc_get_sb_net(%struct.net*) #1

declare dso_local %struct.dentry* @nfs4blocklayout_register_sb(%struct.super_block*, %struct.rpc_pipe*) #1

declare dso_local i32 @rpc_put_sb_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
