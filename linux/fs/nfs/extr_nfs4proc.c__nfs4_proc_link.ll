; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_link_arg = type { i32, i32*, %struct.qstr*, i32, i32 }
%struct.nfs4_link_res = type { %struct.TYPE_5__*, i32*, i32, i32, %struct.nfs_server* }
%struct.TYPE_5__ = type { i32 }
%struct.rpc_message = type { %struct.nfs4_link_res*, %struct.nfs4_link_arg*, i32* }

@NFS4_BITMASK_SZ = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LINK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.qstr*)* @_nfs4_proc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_link(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfs4_link_arg, align 8
  %11 = alloca %struct.nfs4_link_res, align 8
  %12 = alloca %struct.rpc_message, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %7, align 8
  %16 = load i32, i32* @NFS4_BITMASK_SZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %10, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %10, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %10, i32 0, i32 2
  %23 = load %struct.qstr*, %struct.qstr** %6, align 8
  store %struct.qstr* %23, %struct.qstr** %22, align 8
  %24 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %10, i32 0, i32 3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @NFS_FH(%struct.inode* %25)
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %10, i32 0, i32 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @NFS_FH(%struct.inode* %28)
  store i32 %29, i32* %27, align 4
  %30 = bitcast %struct.nfs4_link_res* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 32, i1 false)
  %31 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 4
  %32 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  store %struct.nfs_server* %32, %struct.nfs_server** %31, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  store %struct.nfs4_link_res* %11, %struct.nfs4_link_res** %33, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 1
  store %struct.nfs4_link_arg* %10, %struct.nfs4_link_arg** %34, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 2
  %36 = load i32*, i32** @nfs4_procedures, align 8
  %37 = load i64, i64* @NFSPROC4_CLNT_LINK, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %35, align 8
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  %41 = call %struct.TYPE_5__* (...) @nfs_alloc_fattr()
  %42 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 0
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %42, align 8
  %43 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %104

47:                                               ; preds = %3
  %48 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32* @nfs4_label_alloc(%struct.nfs_server* %48, i32 %49)
  %51 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %13, align 4
  br label %104

60:                                               ; preds = %47
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @nfs4_inode_make_writeable(%struct.inode* %61)
  %63 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %64 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @nfs4_bitmask(%struct.nfs_server* %63, i32* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @nfs4_bitmap_copy_adjust_setattr(i32* %19, i32 %66, %struct.inode* %67)
  %69 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %70 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %73 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %10, i32 0, i32 0
  %74 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 3
  %75 = call i32 @nfs4_call_sync(i32 %71, %struct.nfs_server* %72, %struct.rpc_message* %12, i32* %73, i32* %74, i32 1)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %60
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 2
  %81 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @update_changeattr(%struct.inode* %79, i32* %80, i32 %84, i32 0)
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @nfs_post_op_update_inode(%struct.inode* %86, %struct.TYPE_5__* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %78
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @nfs_setsecurity(%struct.inode* %93, %struct.TYPE_5__* %95, i32* %97)
  br label %99

99:                                               ; preds = %92, %78
  br label %100

100:                                              ; preds = %99, %60
  %101 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @nfs4_label_free(i32* %102)
  br label %104

104:                                              ; preds = %100, %56, %46
  %105 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %11, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = call i32 @nfs_free_fattr(%struct.TYPE_5__* %106)
  %108 = load i32, i32* %13, align 4
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  ret i32 %108
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NFS_FH(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_5__* @nfs_alloc_fattr(...) #1

declare dso_local i32* @nfs4_label_alloc(%struct.nfs_server*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfs4_inode_make_writeable(%struct.inode*) #1

declare dso_local i32 @nfs4_bitmap_copy_adjust_setattr(i32*, i32, %struct.inode*) #1

declare dso_local i32 @nfs4_bitmask(%struct.nfs_server*, i32*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, %struct.TYPE_5__*) #1

declare dso_local i32 @nfs_setsecurity(%struct.inode*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @nfs4_label_free(i32*) #1

declare dso_local i32 @nfs_free_fattr(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
