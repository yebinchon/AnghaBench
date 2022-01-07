; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_wait_on_layoutreturn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_wait_on_layoutreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.rpc_task*)* @nfs4_wait_on_layoutreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_wait_on_layoutreturn(%struct.inode* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = icmp eq %struct.inode* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @nfs_have_layout(%struct.inode* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %17

13:                                               ; preds = %8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %16 = call i32 @pnfs_wait_on_layoutreturn(%struct.inode* %14, %struct.rpc_task* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @nfs_have_layout(%struct.inode*) #1

declare dso_local i32 @pnfs_wait_on_layoutreturn(%struct.inode*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
