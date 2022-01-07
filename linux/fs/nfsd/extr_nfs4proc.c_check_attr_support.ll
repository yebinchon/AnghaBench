; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_check_attr_support.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_check_attr_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.svc_export*, %struct.dentry* }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@nfserr_attrnotsupp = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@FATTR4_WORD2_SECURITY_LABEL = common dso_local global i32 0, align 4
@NFSEXP_SECURITY_LABEL = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@FATTR4_WORD2_MODE_UMASK = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*)* @check_attr_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_attr_support(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.svc_export*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %10, align 8
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.svc_export*, %struct.svc_export** %18, align 8
  store %struct.svc_export* %19, %struct.svc_export** %11, align 8
  %20 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @nfsd_attrs_supported(i32 %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @nfserr_attrnotsupp, align 4
  store i32 %27, i32* %5, align 4
  br label %89

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  %37 = call i32 @d_inode(%struct.dentry* %36)
  %38 = call i32 @IS_POSIXACL(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @nfserr_attrnotsupp, align 4
  store i32 %41, i32* %5, align 4
  br label %89

42:                                               ; preds = %35, %28
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FATTR4_WORD2_SECURITY_LABEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.svc_export*, %struct.svc_export** %11, align 8
  %51 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFSEXP_SECURITY_LABEL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @nfserr_attrnotsupp, align 4
  store i32 %57, i32* %5, align 4
  br label %89

58:                                               ; preds = %49, %42
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @bmval_is_subset(i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @nfserr_inval, align 4
  store i32 %67, i32* %5, align 4
  br label %89

68:                                               ; preds = %61, %58
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FATTR4_WORD2_MODE_UMASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @nfserr_inval, align 4
  store i32 %86, i32* %5, align 4
  br label %89

87:                                               ; preds = %78, %71, %68
  %88 = load i32, i32* @nfs_ok, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %85, %66, %56, %40, %26
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @nfsd_attrs_supported(i32, i32*) #1

declare dso_local i32 @IS_POSIXACL(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @bmval_is_subset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
