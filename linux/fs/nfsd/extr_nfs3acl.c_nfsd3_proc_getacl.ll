; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_getacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_getaclres*, %struct.nfsd3_getaclargs* }
%struct.nfsd3_getaclres = type { i32, %struct.posix_acl*, %struct.posix_acl*, i32 }
%struct.posix_acl = type { i32 }
%struct.nfsd3_getaclargs = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsd3_proc_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_getacl(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_getaclargs*, align 8
  %5 = alloca %struct.nfsd3_getaclres*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
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
  %16 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %16, i32 0, i32 3
  %18 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %18, i32 0, i32 1
  %20 = call %struct.TYPE_3__* @fh_copy(i32* %17, i32* %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %8, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %22 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %22, i32 0, i32 3
  %24 = load i32, i32* @NFSD_MAY_NOP, align 4
  %25 = call i64 @fh_verify(%struct.svc_rqst* %21, i32* %23, i32 0, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @RETURN_STATUS(i64 %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.inode* @d_inode(i32 %34)
  store %struct.inode* %35, %struct.inode** %7, align 8
  %36 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %37 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NFS_ACL_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i64, i64* @nfserr_inval, align 8
  %45 = call i32 @RETURN_STATUS(i64 %44)
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %4, align 8
  %48 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %51 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %53 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFS_ACL, align 4
  %56 = load i32, i32* @NFS_ACLCNT, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %46
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %63 = call %struct.posix_acl* @get_acl(%struct.inode* %61, i32 %62)
  store %struct.posix_acl* %63, %struct.posix_acl** %6, align 8
  %64 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %65 = icmp eq %struct.posix_acl* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.posix_acl* @posix_acl_from_mode(i32 %69, i32 %70)
  store %struct.posix_acl* %71, %struct.posix_acl** %6, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %74 = call i64 @IS_ERR(%struct.posix_acl* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %78 = call i32 @PTR_ERR(%struct.posix_acl* %77)
  %79 = call i64 @nfserrno(i32 %78)
  store i64 %79, i64* %9, align 8
  br label %110

80:                                               ; preds = %72
  %81 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %82 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %83 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %82, i32 0, i32 2
  store %struct.posix_acl* %81, %struct.posix_acl** %83, align 8
  br label %84

84:                                               ; preds = %80, %46
  %85 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %86 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NFS_DFACL, align 4
  %89 = load i32, i32* @NFS_DFACLCNT, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %84
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %96 = call %struct.posix_acl* @get_acl(%struct.inode* %94, i32 %95)
  store %struct.posix_acl* %96, %struct.posix_acl** %6, align 8
  %97 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %98 = call i64 @IS_ERR(%struct.posix_acl* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %102 = call i32 @PTR_ERR(%struct.posix_acl* %101)
  %103 = call i64 @nfserrno(i32 %102)
  store i64 %103, i64* %9, align 8
  br label %110

104:                                              ; preds = %93
  %105 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %106 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %107 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %106, i32 0, i32 1
  store %struct.posix_acl* %105, %struct.posix_acl** %107, align 8
  br label %108

108:                                              ; preds = %104, %84
  %109 = call i32 @RETURN_STATUS(i64 0)
  br label %110

110:                                              ; preds = %108, %100, %76
  %111 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %112 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %111, i32 0, i32 2
  %113 = load %struct.posix_acl*, %struct.posix_acl** %112, align 8
  %114 = call i32 @posix_acl_release(%struct.posix_acl* %113)
  %115 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %5, align 8
  %116 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %115, i32 0, i32 1
  %117 = load %struct.posix_acl*, %struct.posix_acl** %116, align 8
  %118 = call i32 @posix_acl_release(%struct.posix_acl* %117)
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @RETURN_STATUS(i64 %119)
  %121 = load i64, i64* %2, align 8
  ret i64 %121
}

declare dso_local %struct.TYPE_3__* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

declare dso_local %struct.inode* @d_inode(i32) #1

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
