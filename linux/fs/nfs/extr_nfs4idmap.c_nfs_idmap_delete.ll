; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.TYPE_2__*, i32, %struct.idmap* }
%struct.TYPE_2__ = type { i32 }
%struct.idmap = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_idmap_delete(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.idmap*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %4, i32 0, i32 2
  %6 = load %struct.idmap*, %struct.idmap** %5, align 8
  store %struct.idmap* %6, %struct.idmap** %3, align 8
  %7 = load %struct.idmap*, %struct.idmap** %3, align 8
  %8 = icmp ne %struct.idmap* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 2
  store %struct.idmap* null, %struct.idmap** %12, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.idmap*, %struct.idmap** %3, align 8
  %21 = getelementptr inbounds %struct.idmap, %struct.idmap* %20, i32 0, i32 2
  %22 = call i32 @rpc_remove_pipe_dir_object(i32 %15, i32* %19, i32* %21)
  %23 = load %struct.idmap*, %struct.idmap** %3, align 8
  %24 = getelementptr inbounds %struct.idmap, %struct.idmap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rpc_destroy_pipe_data(i32 %25)
  %27 = load %struct.idmap*, %struct.idmap** %3, align 8
  %28 = getelementptr inbounds %struct.idmap, %struct.idmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_cred(i32 %29)
  %31 = load %struct.idmap*, %struct.idmap** %3, align 8
  %32 = call i32 @kfree(%struct.idmap* %31)
  br label %33

33:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @rpc_remove_pipe_dir_object(i32, i32*, i32*) #1

declare dso_local i32 @rpc_destroy_pipe_data(i32) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @kfree(%struct.idmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
