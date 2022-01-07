; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c___nfs4_proc_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c___nfs4_proc_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_setaclargs = type { i64, i32, %struct.page**, i32 }
%struct.page = type { i32 }
%struct.nfs_setaclres = type { i32 }
%struct.rpc_message = type { %struct.nfs_setaclres*, %struct.nfs_setaclargs*, i32* }
%struct.TYPE_2__ = type { i32 }

@NFS4ACL_MAXPAGES = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETACL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @__nfs4_proc_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfs4_proc_set_acl(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfs_setaclargs, align 8
  %12 = alloca %struct.nfs_setaclres, align 4
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %8, align 8
  %20 = load i32, i32* @NFS4ACL_MAXPAGES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca %struct.page*, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 2
  store %struct.page** %23, %struct.page*** %27, align 8
  %28 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @NFS_FH(%struct.inode* %29)
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.nfs_setaclres* %12, %struct.nfs_setaclres** %31, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.nfs_setaclargs* %11, %struct.nfs_setaclargs** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %34 = load i32*, i32** @nfs4_procedures, align 8
  %35 = load i64, i64* @NFSPROC4_CLNT_SETACL, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %33, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @DIV_ROUND_UP(i64 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %41 = call i32 @nfs4_server_supports_acls(%struct.nfs_server* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %108

46:                                               ; preds = %3
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @ARRAY_SIZE(%struct.page** %23)
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @ERANGE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %108

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 2
  %57 = load %struct.page**, %struct.page*** %56, align 8
  %58 = call i32 @buf_to_pages_noslab(i8* %54, i64 %55, %struct.page** %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %108

63:                                               ; preds = %53
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call i32 @nfs4_inode_make_writeable(%struct.inode* %64)
  %66 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %67 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %70 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 1
  %71 = getelementptr inbounds %struct.nfs_setaclres, %struct.nfs_setaclres* %12, i32 0, i32 0
  %72 = call i32 @nfs4_call_sync(i32 %68, %struct.nfs_server* %69, %struct.rpc_message* %13, i32* %70, i32* %71, i32 1)
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %83, %63
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %79
  %81 = load %struct.page*, %struct.page** %80, align 8
  %82 = call i32 @put_page(%struct.page* %81)
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %16, align 4
  br label %73

86:                                               ; preds = %73
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = call i32 @spin_lock(i32* %88)
  %90 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %91 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NFS_INO_REVAL_FORCED, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = call i32 @nfs_access_zap_cache(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = call i32 @nfs_zap_acl_cache(%struct.inode* %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %108

108:                                              ; preds = %86, %61, %50, %43
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @nfs4_server_supports_acls(%struct.nfs_server*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #1

declare dso_local i32 @buf_to_pages_noslab(i8*, i64, %struct.page**) #1

declare dso_local i32 @nfs4_inode_make_writeable(%struct.inode*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_access_zap_cache(%struct.inode*) #1

declare dso_local i32 @nfs_zap_acl_cache(%struct.inode*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
