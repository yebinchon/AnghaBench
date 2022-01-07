; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32 }

@__const.nfs4_proc_access.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_access_entry*)* @nfs4_proc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_access(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_access_entry*, align 8
  %5 = alloca %struct.nfs4_exception, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %4, align 8
  %7 = bitcast %struct.nfs4_exception* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_access.exception to i8*), i64 16, i1 false)
  br label %8

8:                                                ; preds = %19, %2
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %11 = call i32 @_nfs4_proc_access(%struct.inode* %9, %struct.nfs_access_entry* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @trace_nfs4_access(%struct.inode* %12, i32 %13)
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @NFS_SERVER(%struct.inode* %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nfs4_handle_exception(i32 %16, i32 %17, %struct.nfs4_exception* %5)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %5, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %8, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_nfs4_proc_access(%struct.inode*, %struct.nfs_access_entry*) #2

declare dso_local i32 @trace_nfs4_access(%struct.inode*, i32) #2

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
