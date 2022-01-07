; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_fs_locations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs4_fs_locations = type { i32 }
%struct.page = type { i32 }

@__const.nfs4_proc_fs_locations.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_fs_locations(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2, %struct.nfs4_fs_locations* %3, %struct.page* %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs4_fs_locations*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.nfs4_exception, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.nfs4_fs_locations* %3, %struct.nfs4_fs_locations** %9, align 8
  store %struct.page* %4, %struct.page** %10, align 8
  %13 = bitcast %struct.nfs4_exception* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_fs_locations.exception to i8*), i64 16, i1 false)
  br label %14

14:                                               ; preds = %29, %5
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load %struct.qstr*, %struct.qstr** %8, align 8
  %18 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %9, align 8
  %19 = load %struct.page*, %struct.page** %10, align 8
  %20 = call i32 @_nfs4_proc_fs_locations(%struct.rpc_clnt* %15, %struct.inode* %16, %struct.qstr* %17, %struct.nfs4_fs_locations* %18, %struct.page* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load %struct.qstr*, %struct.qstr** %8, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @trace_nfs4_get_fs_locations(%struct.inode* %21, %struct.qstr* %22, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @NFS_SERVER(%struct.inode* %25)
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @nfs4_handle_exception(i32 %26, i32 %27, %struct.nfs4_exception* %11)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %14, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_nfs4_proc_fs_locations(%struct.rpc_clnt*, %struct.inode*, %struct.qstr*, %struct.nfs4_fs_locations*, %struct.page*) #2

declare dso_local i32 @trace_nfs4_get_fs_locations(%struct.inode*, %struct.qstr*, i32) #2

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
