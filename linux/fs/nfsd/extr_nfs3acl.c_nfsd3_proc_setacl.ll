; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_setacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_attrstat*, %struct.nfsd3_setaclargs* }
%struct.nfsd3_attrstat = type { i32 }
%struct.nfsd3_setaclargs = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_7__ = type { i32 }

@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsd3_proc_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_setacl(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_setaclargs*, align 8
  %5 = alloca %struct.nfsd3_attrstat*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %11, align 8
  store %struct.nfsd3_setaclargs* %12, %struct.nfsd3_setaclargs** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %14, align 8
  store %struct.nfsd3_attrstat* %15, %struct.nfsd3_attrstat** %5, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %16, i32 0, i32 0
  %18 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %18, i32 0, i32 2
  %20 = call %struct.TYPE_7__* @fh_copy(i32* %17, i32* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %22 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %22, i32 0, i32 0
  %24 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %25 = call i64 @fh_verify(%struct.svc_rqst* %21, i32* %23, i32 0, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %66

29:                                               ; preds = %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.inode* @d_inode(i32 %32)
  store %struct.inode* %33, %struct.inode** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = call i32 @fh_want_write(%struct.TYPE_7__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %63

39:                                               ; preds = %29
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = call i32 @fh_lock(%struct.TYPE_7__* %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %44 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_posix_acl(%struct.inode* %42, i32 %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %58

51:                                               ; preds = %39
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %54 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %4, align 8
  %55 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_posix_acl(%struct.inode* %52, i32 %53, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = call i32 @fh_unlock(%struct.TYPE_7__* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = call i32 @fh_drop_write(%struct.TYPE_7__* %61)
  br label %63

63:                                               ; preds = %58, %38
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @nfserrno(i32 %64)
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %63, %28
  %67 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %4, align 8
  %68 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @posix_acl_release(i32 %69)
  %71 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %4, align 8
  %72 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @posix_acl_release(i32 %73)
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @RETURN_STATUS(i64 %75)
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_7__* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @fh_want_write(%struct.TYPE_7__*) #1

declare dso_local i32 @fh_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @set_posix_acl(%struct.inode*, i32, i32) #1

declare dso_local i32 @fh_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @fh_drop_write(%struct.TYPE_7__*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @posix_acl_release(i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
