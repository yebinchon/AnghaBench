; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs_init_server_aclclient.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs_init_server_aclclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32 }

@NFS_MOUNT_NOACL = common dso_local global i32 0, align 4
@NFS_CAP_ACLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*)* @nfs_init_server_aclclient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_init_server_aclclient(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %3 = load i32, i32* @NFS_MOUNT_NOACL, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @NFS_CAP_ACLS, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
