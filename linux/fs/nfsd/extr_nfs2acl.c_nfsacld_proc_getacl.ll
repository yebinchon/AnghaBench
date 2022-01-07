; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_getacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_getaclres*, %struct.nfsd3_getaclargs* }
%struct.nfsd3_getaclres = type { i32, %struct.posix_acl*, %struct.posix_acl*, i32, i32 }
%struct.posix_acl = type { i32 }
%struct.nfsd3_getaclargs = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"nfsd: GETACL(2acl)   %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFS_ACL_MASK = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@NFS_ACL = common dso_local global i32 0, align 4
@NFS_ACLCNT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS_DFACL = common dso_local global i32 0, align 4
@NFS_DFACLCNT = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsacld_proc_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsacld_proc_getacl(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_getaclargs*, align 8
  %5 = alloca %struct.nfsd3_getaclres*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %11, align 8
  store %struct.nfsd3_getaclargs* %12, %struct.nfsd3_getaclargs** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %14, align 8
  store %struct.nfsd3_getaclres* %15, %struct.nfsd3_getaclres** %5, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %16, i32 0, i32 1
  %18 = call i32 @SVCFH_fmt(i32* %17)
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %20, i32 0, i32 4
  %22 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %23 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %22, i32 0, i32 1
  %24 = call %struct.TYPE_4__* @fh_copy(i32* %21, i32* %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %8, align 8
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %26 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %26, i32 0, i32 4
  %28 = load i32, i32* @NFSD_MAY_NOP, align 4
  %29 = call i64 @fh_verify(%struct.svc_rqst* %25, i32* %27, i32 0, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @RETURN_STATUS(i64 %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.inode* @d_inode(i32 %38)
  store %struct.inode* %39, %struct.inode** %7, align 8
  %40 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFS_ACL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i64, i64* @nfserr_inval, align 8
  %49 = call i32 @RETURN_STATUS(i64 %48)
  br label %50

50:                                               ; preds = %47, %35
  %51 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %52 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %58 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %57, i32 0, i32 3
  %59 = call i64 @fh_getattr(%struct.TYPE_4__* %56, i32* %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @RETURN_STATUS(i64 %63)
  br label %65

65:                                               ; preds = %62, %50
  %66 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %67 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NFS_ACL, align 4
  %70 = load i32, i32* @NFS_ACLCNT, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %65
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %77 = call %struct.posix_acl* @get_acl(%struct.inode* %75, i32 %76)
  store %struct.posix_acl* %77, %struct.posix_acl** %6, align 8
  %78 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %79 = icmp eq %struct.posix_acl* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.posix_acl* @posix_acl_from_mode(i32 %83, i32 %84)
  store %struct.posix_acl* %85, %struct.posix_acl** %6, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %88 = call i64 @IS_ERR(%struct.posix_acl* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %92 = call i32 @PTR_ERR(%struct.posix_acl* %91)
  %93 = call i64 @nfserrno(i32 %92)
  store i64 %93, i64* %9, align 8
  br label %124

94:                                               ; preds = %86
  %95 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %96 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %97 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %96, i32 0, i32 2
  store %struct.posix_acl* %95, %struct.posix_acl** %97, align 8
  br label %98

98:                                               ; preds = %94, %65
  %99 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %100 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NFS_DFACL, align 4
  %103 = load i32, i32* @NFS_DFACLCNT, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %110 = call %struct.posix_acl* @get_acl(%struct.inode* %108, i32 %109)
  store %struct.posix_acl* %110, %struct.posix_acl** %6, align 8
  %111 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %112 = call i64 @IS_ERR(%struct.posix_acl* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %116 = call i32 @PTR_ERR(%struct.posix_acl* %115)
  %117 = call i64 @nfserrno(i32 %116)
  store i64 %117, i64* %9, align 8
  br label %124

118:                                              ; preds = %107
  %119 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %120 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %121 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %120, i32 0, i32 1
  store %struct.posix_acl* %119, %struct.posix_acl** %121, align 8
  br label %122

122:                                              ; preds = %118, %98
  %123 = call i32 @RETURN_STATUS(i64 0)
  br label %124

124:                                              ; preds = %122, %114, %90
  %125 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %126 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %125, i32 0, i32 2
  %127 = load %struct.posix_acl*, %struct.posix_acl** %126, align 8
  %128 = call i32 @posix_acl_release(%struct.posix_acl* %127)
  %129 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %130 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %129, i32 0, i32 1
  %131 = load %struct.posix_acl*, %struct.posix_acl** %130, align 8
  %132 = call i32 @posix_acl_release(%struct.posix_acl* %131)
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @RETURN_STATUS(i64 %133)
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local %struct.TYPE_4__* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @fh_getattr(%struct.TYPE_4__*, i32*) #1

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_mode(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
