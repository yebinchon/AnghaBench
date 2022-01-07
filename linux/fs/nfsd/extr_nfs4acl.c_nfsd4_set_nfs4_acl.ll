; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_nfsd4_set_nfs4_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_nfsd4_set_nfs4_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.nfs4_acl = type { i32 }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@NFS4_ACL_DIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nfserr_attrnotsupp = common dso_local global i64 0, align 8
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfs4_acl* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.nfs4_acl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.posix_acl*, align 8
  %13 = alloca %struct.posix_acl*, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.nfs4_acl* %2, %struct.nfs4_acl** %7, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %12, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %17 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %18 = call i64 @fh_verify(%struct.svc_rqst* %15, %struct.svc_fh* %16, i32 0, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %4, align 8
  br label %89

23:                                               ; preds = %3
  %24 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %25 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  store %struct.dentry* %26, %struct.dentry** %10, align 8
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = call %struct.inode* @d_inode(%struct.dentry* %27)
  store %struct.inode* %28, %struct.inode** %11, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISDIR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @NFS4_ACL_DIR, align 4
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = load %struct.nfs4_acl*, %struct.nfs4_acl** %7, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @nfs4_acl_nfsv4_to_posix(%struct.nfs4_acl* %37, %struct.posix_acl** %12, %struct.posix_acl** %13, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @nfserr_attrnotsupp, align 8
  store i64 %45, i64* %4, align 8
  br label %89

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %79

50:                                               ; preds = %46
  %51 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %52 = call i32 @fh_lock(%struct.svc_fh* %51)
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %55 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %56 = call i32 @set_posix_acl(%struct.inode* %53, i32 %54, %struct.posix_acl* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %72

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %69 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %70 = call i32 @set_posix_acl(%struct.inode* %67, i32 %68, %struct.posix_acl* %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %74 = call i32 @fh_unlock(%struct.svc_fh* %73)
  %75 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %76 = call i32 @posix_acl_release(%struct.posix_acl* %75)
  %77 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %78 = call i32 @posix_acl_release(%struct.posix_acl* %77)
  br label %79

79:                                               ; preds = %72, %49
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* @nfserr_attrnotsupp, align 8
  store i64 %85, i64* %4, align 8
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @nfserrno(i32 %87)
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %86, %84, %44, %21
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @nfs4_acl_nfsv4_to_posix(%struct.nfs4_acl*, %struct.posix_acl**, %struct.posix_acl**, i32) #1

declare dso_local i32 @fh_lock(%struct.svc_fh*) #1

declare dso_local i32 @set_posix_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
