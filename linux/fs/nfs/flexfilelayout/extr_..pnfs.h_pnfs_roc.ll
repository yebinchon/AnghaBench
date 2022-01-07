; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..pnfs.h_pnfs_roc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..pnfs.h_pnfs_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs4_layoutreturn_args = type { i32 }
%struct.nfs4_layoutreturn_res = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_res*, %struct.cred*)* @pnfs_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_roc(%struct.inode* %0, %struct.nfs4_layoutreturn_args* %1, %struct.nfs4_layoutreturn_res* %2, %struct.cred* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs4_layoutreturn_args*, align 8
  %7 = alloca %struct.nfs4_layoutreturn_res*, align 8
  %8 = alloca %struct.cred*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs4_layoutreturn_args* %1, %struct.nfs4_layoutreturn_args** %6, align 8
  store %struct.nfs4_layoutreturn_res* %2, %struct.nfs4_layoutreturn_res** %7, align 8
  store %struct.cred* %3, %struct.cred** %8, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
