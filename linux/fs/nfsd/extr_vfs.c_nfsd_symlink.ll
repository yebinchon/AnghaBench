; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }

@nfserr_noent = common dso_local global i64 0, align 8
@nfserr_exist = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_symlink(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, i8* %4, %struct.svc_fh* %5) #0 {
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.svc_fh*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.svc_fh* %5, %struct.svc_fh** %12, align 8
  %18 = load i64, i64* @nfserr_noent, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %6
  br label %99

28:                                               ; preds = %21
  %29 = load i64, i64* @nfserr_exist, align 8
  store i64 %29, i64* %15, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @isdotent(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %99

35:                                               ; preds = %28
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %37 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %38 = load i32, i32* @S_IFDIR, align 4
  %39 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %40 = call i64 @fh_verify(%struct.svc_rqst* %36, %struct.svc_fh* %37, i32 %38, i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %99

44:                                               ; preds = %35
  %45 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %46 = call i32 @fh_want_write(%struct.svc_fh* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %101

50:                                               ; preds = %44
  %51 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %52 = call i32 @fh_lock(%struct.svc_fh* %51)
  %53 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %54 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %53, i32 0, i32 1
  %55 = load %struct.dentry*, %struct.dentry** %54, align 8
  store %struct.dentry* %55, %struct.dentry** %13, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.dentry*, %struct.dentry** %13, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.dentry* @lookup_one_len(i8* %56, %struct.dentry* %57, i32 %58)
  store %struct.dentry* %59, %struct.dentry** %14, align 8
  %60 = load %struct.dentry*, %struct.dentry** %14, align 8
  %61 = call i32 @PTR_ERR(%struct.dentry* %60)
  store i32 %61, i32* %17, align 4
  %62 = load %struct.dentry*, %struct.dentry** %14, align 8
  %63 = call i64 @IS_ERR(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %101

66:                                               ; preds = %50
  %67 = load %struct.dentry*, %struct.dentry** %13, align 8
  %68 = call i32 @d_inode(%struct.dentry* %67)
  %69 = load %struct.dentry*, %struct.dentry** %14, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @vfs_symlink(i32 %68, %struct.dentry* %69, i8* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i64 @nfserrno(i32 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %66
  %77 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %78 = call i32 @commit_metadata(%struct.svc_fh* %77)
  %79 = call i64 @nfserrno(i32 %78)
  store i64 %79, i64* %15, align 8
  br label %80

80:                                               ; preds = %76, %66
  %81 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %82 = call i32 @fh_unlock(%struct.svc_fh* %81)
  %83 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %84 = call i32 @fh_drop_write(%struct.svc_fh* %83)
  %85 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %86 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %87 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dentry*, %struct.dentry** %14, align 8
  %90 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %91 = call i64 @fh_compose(%struct.svc_fh* %85, i32 %88, %struct.dentry* %89, %struct.svc_fh* %90)
  store i64 %91, i64* %16, align 8
  %92 = load %struct.dentry*, %struct.dentry** %14, align 8
  %93 = call i32 @dput(%struct.dentry* %92)
  %94 = load i64, i64* %15, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  %97 = load i64, i64* %16, align 8
  store i64 %97, i64* %15, align 8
  br label %98

98:                                               ; preds = %96, %80
  br label %99

99:                                               ; preds = %101, %98, %43, %34, %27
  %100 = load i64, i64* %15, align 8
  ret i64 %100

101:                                              ; preds = %65, %49
  %102 = load i32, i32* %17, align 4
  %103 = call i64 @nfserrno(i32 %102)
  store i64 %103, i64* %15, align 8
  br label %99
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i32 @fh_lock(%struct.svc_fh*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_symlink(i32, %struct.dentry*, i8*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, i32, %struct.dentry*, %struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
