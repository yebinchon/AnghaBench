; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_cleanup_layoutcommit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_cleanup_layoutcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layoutcommit_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_server = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nfs4_layoutcommit_data*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_cleanup_layoutcommit(%struct.nfs4_layoutcommit_data* %0) #0 {
  %2 = alloca %struct.nfs4_layoutcommit_data*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  store %struct.nfs4_layoutcommit_data* %0, %struct.nfs4_layoutcommit_data** %2, align 8
  %4 = load %struct.nfs4_layoutcommit_data*, %struct.nfs4_layoutcommit_data** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_layoutcommit_data, %struct.nfs4_layoutcommit_data* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nfs_server* @NFS_SERVER(i32 %7)
  store %struct.nfs_server* %8, %struct.nfs_server** %3, align 8
  %9 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nfs4_layoutcommit_data*)*, i32 (%struct.nfs4_layoutcommit_data*)** %12, align 8
  %14 = icmp ne i32 (%struct.nfs4_layoutcommit_data*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nfs4_layoutcommit_data*)*, i32 (%struct.nfs4_layoutcommit_data*)** %19, align 8
  %21 = load %struct.nfs4_layoutcommit_data*, %struct.nfs4_layoutcommit_data** %2, align 8
  %22 = call i32 %20(%struct.nfs4_layoutcommit_data* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.nfs4_layoutcommit_data*, %struct.nfs4_layoutcommit_data** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_layoutcommit_data, %struct.nfs4_layoutcommit_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs4_layoutcommit_data*, %struct.nfs4_layoutcommit_data** %2, align 8
  %29 = getelementptr inbounds %struct.nfs4_layoutcommit_data, %struct.nfs4_layoutcommit_data* %28, i32 0, i32 0
  %30 = call i32 @pnfs_list_write_lseg_done(i32 %27, i32* %29)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @pnfs_list_write_lseg_done(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
