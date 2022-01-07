; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_free_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_free_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32, i32 }
%struct.nfs_server = type { %struct.nfs_client*, %struct.pnfs_layoutdriver_type* }
%struct.nfs_client = type { i32 }
%struct.pnfs_layoutdriver_type = type { void (%struct.pnfs_layout_hdr.0*)* }
%struct.pnfs_layout_hdr.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*)* @pnfs_free_layout_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_free_layout_hdr(%struct.pnfs_layout_hdr* %0) #0 {
  %2 = alloca %struct.pnfs_layout_hdr*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.pnfs_layoutdriver_type*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %2, align 8
  %6 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %7 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nfs_server* @NFS_SERVER(i32 %8)
  store %struct.nfs_server* %9, %struct.nfs_server** %3, align 8
  %10 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 1
  %12 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %11, align 8
  store %struct.pnfs_layoutdriver_type* %12, %struct.pnfs_layoutdriver_type** %4, align 8
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %14 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = load %struct.nfs_client*, %struct.nfs_client** %19, align 8
  store %struct.nfs_client* %20, %struct.nfs_client** %5, align 8
  %21 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %25 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %24, i32 0, i32 1
  %26 = call i32 @list_del_init(i32* %25)
  %27 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %32 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @put_cred(i32 %33)
  %35 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %4, align 8
  %36 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %35, i32 0, i32 0
  %37 = load void (%struct.pnfs_layout_hdr.0*)*, void (%struct.pnfs_layout_hdr.0*)** %36, align 8
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %39 = bitcast %struct.pnfs_layout_hdr* %38 to %struct.pnfs_layout_hdr.0*
  call void %37(%struct.pnfs_layout_hdr.0* %39)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_cred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
