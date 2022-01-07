; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_unlink(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = call %struct.dentry* @dget_parent(%struct.dentry* %6)
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load i32, i32* @I_MUTEX_PARENT, align 4
  %12 = call i32 @inode_lock_nested(%struct.inode* %10, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = call i32 @__rpc_rmpipe(%struct.inode* %13, %struct.dentry* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @inode_unlock(%struct.inode* %16)
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @dput(%struct.dentry* %18)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local i32 @__rpc_rmpipe(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
