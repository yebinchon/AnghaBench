; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_do_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_do_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_setattrargs = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_setattrres = type { i32, i32 }
%struct.cred = type { i32 }
%struct.nfs_open_context = type { i64 }
%struct.nfs_server = type { i32 }
%struct.rpc_message = type { %struct.cred*, %struct.nfs_setattrres*, %struct.nfs_setattrargs*, i32* }
%struct.nfs_lock_context = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETATTR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ATTR_SIZE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@zero_stateid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_setattrargs*, %struct.nfs_setattrres*, %struct.cred*, %struct.nfs_open_context*)* @_nfs4_do_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_do_setattr(%struct.inode* %0, %struct.nfs_setattrargs* %1, %struct.nfs_setattrres* %2, %struct.cred* %3, %struct.nfs_open_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_setattrargs*, align 8
  %9 = alloca %struct.nfs_setattrres*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca %struct.nfs_open_context*, align 8
  %12 = alloca %struct.nfs_server*, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.cred*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfs_lock_context*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.nfs_setattrargs* %1, %struct.nfs_setattrargs** %8, align 8
  store %struct.nfs_setattrres* %2, %struct.nfs_setattrres** %9, align 8
  store %struct.cred* %3, %struct.cred** %10, align 8
  store %struct.nfs_open_context* %4, %struct.nfs_open_context** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %12, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  %22 = load %struct.cred*, %struct.cred** %10, align 8
  store %struct.cred* %22, %struct.cred** %21, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  %24 = load %struct.nfs_setattrres*, %struct.nfs_setattrres** %9, align 8
  store %struct.nfs_setattrres* %24, %struct.nfs_setattrres** %23, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %26 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  store %struct.nfs_setattrargs* %26, %struct.nfs_setattrargs** %25, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 3
  %28 = load i32*, i32** @nfs4_procedures, align 8
  %29 = load i64, i64* @NFSPROC4_CLNT_SETATTR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %27, align 8
  store %struct.cred* null, %struct.cred** %14, align 8
  %31 = load i64, i64* @jiffies, align 8
  store i64 %31, i64* %15, align 8
  %32 = load %struct.nfs_setattrres*, %struct.nfs_setattrres** %9, align 8
  %33 = getelementptr inbounds %struct.nfs_setattrres, %struct.nfs_setattrres* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfs_fattr_init(i32 %34)
  %36 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  %37 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATTR_SIZE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %5
  br label %103

49:                                               ; preds = %5
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load i32, i32* @FMODE_WRITE, align 4
  %52 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  %53 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %52, i32 0, i32 0
  %54 = call i64 @nfs4_copy_delegation_stateid(%struct.inode* %50, i32 %51, i32* %53, %struct.cred** %14)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %108

57:                                               ; preds = %49
  %58 = load %struct.nfs_open_context*, %struct.nfs_open_context** %11, align 8
  %59 = icmp ne %struct.nfs_open_context* %58, null
  br i1 %59, label %60, label %102

60:                                               ; preds = %57
  %61 = load %struct.nfs_open_context*, %struct.nfs_open_context** %11, align 8
  %62 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %60
  %66 = load %struct.nfs_open_context*, %struct.nfs_open_context** %11, align 8
  %67 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @nfs4_valid_open_stateid(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @EBADF, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %142

74:                                               ; preds = %65
  %75 = load %struct.nfs_open_context*, %struct.nfs_open_context** %11, align 8
  %76 = call %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context* %75)
  store %struct.nfs_lock_context* %76, %struct.nfs_lock_context** %18, align 8
  %77 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %18, align 8
  %78 = call i64 @IS_ERR(%struct.nfs_lock_context* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %18, align 8
  %82 = call i32 @PTR_ERR(%struct.nfs_lock_context* %81)
  store i32 %82, i32* %6, align 4
  br label %142

83:                                               ; preds = %74
  %84 = load %struct.nfs_open_context*, %struct.nfs_open_context** %11, align 8
  %85 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @FMODE_WRITE, align 4
  %88 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %18, align 8
  %89 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  %90 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %89, i32 0, i32 0
  %91 = call i32 @nfs4_select_rw_stateid(i64 %86, i32 %87, %struct.nfs_lock_context* %88, i32* %90, %struct.cred** %14)
  store i32 %91, i32* %17, align 4
  %92 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %18, align 8
  %93 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %92)
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32, i32* @EBADF, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %142

101:                                              ; preds = %83
  br label %107

102:                                              ; preds = %60, %57
  br label %103

103:                                              ; preds = %102, %48
  %104 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  %105 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %104, i32 0, i32 0
  %106 = call i32 @nfs4_stateid_copy(i32* %105, i32* @zero_stateid)
  br label %107

107:                                              ; preds = %103, %101
  br label %108

108:                                              ; preds = %107, %56
  %109 = load %struct.cred*, %struct.cred** %14, align 8
  %110 = icmp ne %struct.cred* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.cred*, %struct.cred** %14, align 8
  %113 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.cred* %112, %struct.cred** %113, align 8
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %116 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %119 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  %120 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %119, i32 0, i32 1
  %121 = load %struct.nfs_setattrres*, %struct.nfs_setattrres** %9, align 8
  %122 = getelementptr inbounds %struct.nfs_setattrres, %struct.nfs_setattrres* %121, i32 0, i32 0
  %123 = call i32 @nfs4_call_sync(i32 %117, %struct.nfs_server* %118, %struct.rpc_message* %13, i32* %120, i32* %122, i32 1)
  store i32 %123, i32* %17, align 4
  %124 = load %struct.cred*, %struct.cred** %14, align 8
  %125 = call i32 @put_cred(%struct.cred* %124)
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %114
  %129 = load %struct.nfs_open_context*, %struct.nfs_open_context** %11, align 8
  %130 = icmp ne %struct.nfs_open_context* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @renew_lease(%struct.nfs_server* %132, i64 %133)
  br label %135

135:                                              ; preds = %131, %128, %114
  %136 = load %struct.inode*, %struct.inode** %7, align 8
  %137 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %8, align 8
  %138 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %137, i32 0, i32 0
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @trace_nfs4_setattr(%struct.inode* %136, i32* %138, i32 %139)
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %135, %98, %80, %71
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i64 @nfs4_copy_delegation_stateid(%struct.inode*, i32, i32*, %struct.cred**) #1

declare dso_local i32 @nfs4_valid_open_stateid(i64) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs4_select_rw_stateid(i64, i32, %struct.nfs_lock_context*, i32*, %struct.cred**) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @renew_lease(%struct.nfs_server*, i64) #1

declare dso_local i32 @trace_nfs4_setattr(%struct.inode*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
