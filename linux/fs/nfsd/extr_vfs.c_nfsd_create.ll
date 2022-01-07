; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.iattr = type { i32 }
%struct.svc_fh = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }

@nfserr_exist = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_create(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.iattr* %4, i32 %5, i32 %6, %struct.svc_fh* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.svc_rqst*, align 8
  %11 = alloca %struct.svc_fh*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.svc_fh*, align 8
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.dentry*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %10, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.iattr* %4, %struct.iattr** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.svc_fh* %7, %struct.svc_fh** %17, align 8
  store %struct.dentry* null, %struct.dentry** %19, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @isdotent(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i64, i64* @nfserr_exist, align 8
  store i64 %27, i64* %9, align 8
  br label %89

28:                                               ; preds = %8
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %30 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = load i32, i32* @NFSD_MAY_NOP, align 4
  %33 = call i64 @fh_verify(%struct.svc_rqst* %29, %struct.svc_fh* %30, i32 %31, i32 %32)
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %20, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %20, align 8
  store i64 %37, i64* %9, align 8
  br label %89

38:                                               ; preds = %28
  %39 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %40 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %39, i32 0, i32 1
  %41 = load %struct.dentry*, %struct.dentry** %40, align 8
  store %struct.dentry* %41, %struct.dentry** %18, align 8
  %42 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %43 = call i32 @fh_want_write(%struct.svc_fh* %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %21, align 4
  %48 = call i64 @nfserrno(i32 %47)
  store i64 %48, i64* %9, align 8
  br label %89

49:                                               ; preds = %38
  %50 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %51 = load i32, i32* @I_MUTEX_PARENT, align 4
  %52 = call i32 @fh_lock_nested(%struct.svc_fh* %50, i32 %51)
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.dentry*, %struct.dentry** %18, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.dentry* @lookup_one_len(i8* %53, %struct.dentry* %54, i32 %55)
  store %struct.dentry* %56, %struct.dentry** %19, align 8
  %57 = load %struct.dentry*, %struct.dentry** %19, align 8
  %58 = call i32 @PTR_ERR(%struct.dentry* %57)
  store i32 %58, i32* %21, align 4
  %59 = load %struct.dentry*, %struct.dentry** %19, align 8
  %60 = call i64 @IS_ERR(%struct.dentry* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* %21, align 4
  %64 = call i64 @nfserrno(i32 %63)
  store i64 %64, i64* %9, align 8
  br label %89

65:                                               ; preds = %49
  %66 = load %struct.svc_fh*, %struct.svc_fh** %17, align 8
  %67 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %68 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dentry*, %struct.dentry** %19, align 8
  %71 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %72 = call i64 @fh_compose(%struct.svc_fh* %66, i32 %69, %struct.dentry* %70, %struct.svc_fh* %71)
  store i64 %72, i64* %20, align 8
  %73 = load %struct.dentry*, %struct.dentry** %19, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load i64, i64* %20, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i64, i64* %20, align 8
  store i64 %78, i64* %9, align 8
  br label %89

79:                                               ; preds = %65
  %80 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %81 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.iattr*, %struct.iattr** %14, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.svc_fh*, %struct.svc_fh** %17, align 8
  %88 = call i64 @nfsd_create_locked(%struct.svc_rqst* %80, %struct.svc_fh* %81, i8* %82, i32 %83, %struct.iattr* %84, i32 %85, i32 %86, %struct.svc_fh* %87)
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %79, %77, %62, %46, %36, %26
  %90 = load i64, i64* %9, align 8
  ret i64 %90
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @fh_lock_nested(%struct.svc_fh*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, i32, %struct.dentry*, %struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @nfsd_create_locked(%struct.svc_rqst*, %struct.svc_fh*, i8*, i32, %struct.iattr*, i32, i32, %struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
