; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@nfserr_acces = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_REMOVE = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_unlink(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* @nfserr_acces, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @isdotent(i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %5
  br label %107

25:                                               ; preds = %19
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %27 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = load i32, i32* @NFSD_MAY_REMOVE, align 4
  %30 = call i64 @fh_verify(%struct.svc_rqst* %26, %struct.svc_fh* %27, i32 %28, i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %107

34:                                               ; preds = %25
  %35 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %36 = call i32 @fh_want_write(%struct.svc_fh* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %104

40:                                               ; preds = %34
  %41 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %42 = load i32, i32* @I_MUTEX_PARENT, align 4
  %43 = call i32 @fh_lock_nested(%struct.svc_fh* %41, i32 %42)
  %44 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %45 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %44, i32 0, i32 0
  %46 = load %struct.dentry*, %struct.dentry** %45, align 8
  store %struct.dentry* %46, %struct.dentry** %11, align 8
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = call %struct.inode* @d_inode(%struct.dentry* %47)
  store %struct.inode* %48, %struct.inode** %13, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.dentry*, %struct.dentry** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.dentry* @lookup_one_len(i8* %49, %struct.dentry* %50, i32 %51)
  store %struct.dentry* %52, %struct.dentry** %12, align 8
  %53 = load %struct.dentry*, %struct.dentry** %12, align 8
  %54 = call i32 @PTR_ERR(%struct.dentry* %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.dentry*, %struct.dentry** %12, align 8
  %56 = call i64 @IS_ERR(%struct.dentry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %101

59:                                               ; preds = %40
  %60 = load %struct.dentry*, %struct.dentry** %12, align 8
  %61 = call i64 @d_really_is_negative(%struct.dentry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.dentry*, %struct.dentry** %12, align 8
  %65 = call i32 @dput(%struct.dentry* %64)
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %101

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load %struct.dentry*, %struct.dentry** %12, align 8
  %73 = call %struct.inode* @d_inode(%struct.dentry* %72)
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @S_IFMT, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @S_IFDIR, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.dentry*, %struct.dentry** %12, align 8
  %84 = call i32 @nfsd_close_cached_files(%struct.dentry* %83)
  %85 = load %struct.inode*, %struct.inode** %13, align 8
  %86 = load %struct.dentry*, %struct.dentry** %12, align 8
  %87 = call i32 @vfs_unlink(%struct.inode* %85, %struct.dentry* %86, i32* null)
  store i32 %87, i32* %15, align 4
  br label %92

88:                                               ; preds = %78
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = load %struct.dentry*, %struct.dentry** %12, align 8
  %91 = call i32 @vfs_rmdir(%struct.inode* %89, %struct.dentry* %90)
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %97 = call i32 @commit_metadata(%struct.svc_fh* %96)
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.dentry*, %struct.dentry** %12, align 8
  %100 = call i32 @dput(%struct.dentry* %99)
  br label %101

101:                                              ; preds = %98, %63, %58
  %102 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %103 = call i32 @fh_drop_write(%struct.svc_fh* %102)
  br label %104

104:                                              ; preds = %101, %39
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @nfserrno(i32 %105)
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %104, %33, %24
  %108 = load i64, i64* %14, align 8
  ret i64 %108
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i32 @fh_lock_nested(%struct.svc_fh*, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfsd_close_cached_files(%struct.dentry*) #1

declare dso_local i32 @vfs_unlink(%struct.inode*, %struct.dentry*, i32*) #1

declare dso_local i32 @vfs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
