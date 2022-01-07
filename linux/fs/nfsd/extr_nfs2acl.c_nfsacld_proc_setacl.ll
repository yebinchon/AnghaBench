; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_setacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_attrstat*, %struct.nfsd3_setaclargs* }
%struct.nfsd_attrstat = type { i32, i32 }
%struct.nfsd3_setaclargs = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"nfsd: SETACL(2acl)   %s\0A\00", align 1
@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsacld_proc_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsacld_proc_setacl(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd3_setaclargs*, align 8
  %4 = alloca %struct.nfsd_attrstat*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 1
  %11 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %10, align 8
  store %struct.nfsd3_setaclargs* %11, %struct.nfsd3_setaclargs** %3, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 0
  %14 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %13, align 8
  store %struct.nfsd_attrstat* %14, %struct.nfsd_attrstat** %4, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %3, align 8
  %16 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %15, i32 0, i32 2
  %17 = call i32 @SVCFH_fmt(i32* %16)
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %19, i32 0, i32 1
  %21 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %3, align 8
  %22 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %21, i32 0, i32 2
  %23 = call %struct.TYPE_8__* @fh_copy(i32* %20, i32* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %6, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %25 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %25, i32 0, i32 1
  %27 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %28 = call i64 @fh_verify(%struct.svc_rqst* %24, i32* %26, i32 0, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %73

32:                                               ; preds = %1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.inode* @d_inode(i32 %35)
  store %struct.inode* %36, %struct.inode** %5, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = call i32 @fh_want_write(%struct.TYPE_8__* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %88

42:                                               ; preds = %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = call i32 @fh_lock(%struct.TYPE_8__* %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %47 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %3, align 8
  %48 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_posix_acl(%struct.inode* %45, i32 %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %83

54:                                               ; preds = %42
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %57 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %3, align 8
  %58 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_posix_acl(%struct.inode* %55, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %83

64:                                               ; preds = %54
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i32 @fh_unlock(%struct.TYPE_8__* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = call i32 @fh_drop_write(%struct.TYPE_8__* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %4, align 8
  %71 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %70, i32 0, i32 0
  %72 = call i64 @fh_getattr(%struct.TYPE_8__* %69, i32* %71)
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %88, %64, %31
  %74 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %3, align 8
  %75 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @posix_acl_release(i32 %76)
  %78 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %3, align 8
  %79 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @posix_acl_release(i32 %80)
  %82 = load i64, i64* %7, align 8
  ret i64 %82

83:                                               ; preds = %63, %53
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = call i32 @fh_unlock(%struct.TYPE_8__* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = call i32 @fh_drop_write(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %83, %41
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @nfserrno(i32 %89)
  store i64 %90, i64* %7, align 8
  br label %73
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local %struct.TYPE_8__* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @fh_want_write(%struct.TYPE_8__*) #1

declare dso_local i32 @fh_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @set_posix_acl(%struct.inode*, i32, i32) #1

declare dso_local i32 @fh_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @fh_drop_write(%struct.TYPE_8__*) #1

declare dso_local i64 @fh_getattr(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @posix_acl_release(i32) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
