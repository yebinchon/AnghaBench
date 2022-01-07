; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_init_deviceid_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_init_deviceid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32, %struct.nfs4_deviceid, i64, i32, i32, i32, i32 }
%struct.nfs4_deviceid = type { i32 }
%struct.nfs_server = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_init_deviceid_node(%struct.nfs4_deviceid_node* %0, %struct.nfs_server* %1, %struct.nfs4_deviceid* %2) #0 {
  %4 = alloca %struct.nfs4_deviceid_node*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs4_deviceid*, align 8
  store %struct.nfs4_deviceid_node* %0, %struct.nfs4_deviceid_node** %4, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %5, align 8
  store %struct.nfs4_deviceid* %2, %struct.nfs4_deviceid** %6, align 8
  %7 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %7, i32 0, i32 6
  %9 = call i32 @INIT_HLIST_NODE(i32* %8)
  %10 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %11 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %10, i32 0, i32 5
  %12 = call i32 @INIT_HLIST_NODE(i32* %11)
  %13 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %22 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %25, i32 0, i32 1
  %27 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %6, align 8
  %28 = bitcast %struct.nfs4_deviceid* %26 to i8*
  %29 = bitcast %struct.nfs4_deviceid* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %30, i32 0, i32 0
  %32 = call i32 @atomic_set(i32* %31, i32 1)
  ret void
}

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
