; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs42_seek_args = type { i32, i32, i32, i32, i32 }
%struct.nfs42_seek_res = type { i32, i32 }
%struct.rpc_message = type { %struct.nfs42_seek_res*, %struct.nfs42_seek_args*, i32* }
%struct.nfs_server = type { i32, i32 }

@SEEK_HOLE = common dso_local global i32 0, align 4
@NFS4_CONTENT_HOLE = common dso_local global i32 0, align 4
@NFS4_CONTENT_DATA = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SEEK = common dso_local global i64 0, align 8
@NFS_CAP_SEEK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.nfs_lock_context*, i32, i32)* @_nfs42_proc_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs42_proc_llseek(%struct.file* %0, %struct.nfs_lock_context* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.nfs_lock_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs42_seek_args, align 4
  %12 = alloca %struct.nfs42_seek_res, align 4
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.nfs_server*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.nfs_lock_context* %1, %struct.nfs_lock_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SEEK_HOLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @NFS4_CONTENT_HOLE, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @NFS4_CONTENT_DATA, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %22, align 4
  %32 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call i32 @NFS_FH(%struct.inode* %33)
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.nfs42_seek_res* %12, %struct.nfs42_seek_res** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.nfs42_seek_args* %11, %struct.nfs42_seek_args** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %38 = load i32*, i32** @nfs4_procedures, align 8
  %39 = load i64, i64* @NFSPROC4_CLNT_SEEK, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %37, align 8
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %41)
  store %struct.nfs_server* %42, %struct.nfs_server** %14, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = load i32, i32* @NFS_CAP_SEEK, align 4
  %45 = call i32 @nfs_server_capable(%struct.inode* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %107

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 2
  %52 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %53 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %56 = load i32, i32* @FMODE_READ, align 4
  %57 = call i32 @nfs4_set_rw_stateid(i32* %51, i32 %54, %struct.nfs_lock_context* %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %5, align 4
  br label %107

62:                                               ; preds = %50
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @LLONG_MAX, align 4
  %68 = call i32 @nfs_filemap_write_and_wait_range(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %5, align 4
  br label %107

73:                                               ; preds = %62
  %74 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %75 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %78 = getelementptr inbounds %struct.nfs42_seek_args, %struct.nfs42_seek_args* %11, i32 0, i32 1
  %79 = getelementptr inbounds %struct.nfs42_seek_res, %struct.nfs42_seek_res* %12, i32 0, i32 1
  %80 = call i32 @nfs4_call_sync(i32 %76, %struct.nfs_server* %77, %struct.rpc_message* %13, i32* %78, i32* %79, i32 0)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load i32, i32* @NFS_CAP_SEEK, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %89 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %73
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %5, align 4
  br label %107

97:                                               ; preds = %92
  %98 = load %struct.file*, %struct.file** %6, align 8
  %99 = getelementptr inbounds %struct.nfs42_seek_res, %struct.nfs42_seek_res* %12, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vfs_setpos(%struct.file* %98, i32 %100, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %97, %95, %71, %60, %47
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local i32 @nfs4_set_rw_stateid(i32*, i32, %struct.nfs_lock_context*, i32) #1

declare dso_local i32 @nfs_filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @vfs_setpos(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
