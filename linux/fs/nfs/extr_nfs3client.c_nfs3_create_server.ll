; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs3_create_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs3_create_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_mount_info = type { i32 }
%struct.nfs_subversion = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs3_create_server(%struct.nfs_mount_info* %0, %struct.nfs_subversion* %1) #0 {
  %3 = alloca %struct.nfs_mount_info*, align 8
  %4 = alloca %struct.nfs_subversion*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_mount_info* %0, %struct.nfs_mount_info** %3, align 8
  store %struct.nfs_subversion* %1, %struct.nfs_subversion** %4, align 8
  %6 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %3, align 8
  %7 = load %struct.nfs_subversion*, %struct.nfs_subversion** %4, align 8
  %8 = call %struct.nfs_server* @nfs_create_server(%struct.nfs_mount_info* %6, %struct.nfs_subversion* %7)
  store %struct.nfs_server* %8, %struct.nfs_server** %5, align 8
  %9 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %10 = call i32 @IS_ERR(%struct.nfs_server* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %14 = call i32 @nfs_init_server_aclclient(%struct.nfs_server* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  ret %struct.nfs_server* %16
}

declare dso_local %struct.nfs_server* @nfs_create_server(%struct.nfs_mount_info*, %struct.nfs_subversion*) #1

declare dso_local i32 @IS_ERR(%struct.nfs_server*) #1

declare dso_local i32 @nfs_init_server_aclclient(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
