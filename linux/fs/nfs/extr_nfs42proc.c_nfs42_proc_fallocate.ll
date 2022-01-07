; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32 }
%struct.file = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64, i32, i32 }
%struct.nfs_lock_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_message*, %struct.file*, i32, i32)* @nfs42_proc_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs42_proc_fallocate(%struct.rpc_message* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_message*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.nfs4_exception, align 8
  %12 = alloca %struct.nfs_lock_context*, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_message* %0, %struct.rpc_message** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call i32 @file_inode(%struct.file* %14)
  %16 = call %struct.nfs_server* @NFS_SERVER(i32 %15)
  store %struct.nfs_server* %16, %struct.nfs_server** %10, align 8
  %17 = bitcast %struct.nfs4_exception* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = call i32 @nfs_file_open_context(%struct.file* %18)
  %20 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %19)
  store %struct.nfs_lock_context* %20, %struct.nfs_lock_context** %12, align 8
  %21 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %22 = call i64 @IS_ERR(%struct.nfs_lock_context* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.nfs_lock_context* %25)
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = call i32 @file_inode(%struct.file* %28)
  %30 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %32 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %55, %27
  %38 = load %struct.rpc_message*, %struct.rpc_message** %6, align 8
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @_nfs42_proc_fallocate(%struct.rpc_message* %38, %struct.file* %39, %struct.nfs_lock_context* %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @ENOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %59

51:                                               ; preds = %37
  %52 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @nfs4_handle_exception(%struct.nfs_server* %52, i32 %53, %struct.nfs4_exception* %11)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %37, label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %61 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %24
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @_nfs42_proc_fallocate(%struct.rpc_message*, %struct.file*, %struct.nfs_lock_context*, i32, i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
