; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@nfserr_isdir = common dso_local global i64 0, align 8
@nfserr_perm = common dso_local global i64 0, align 8
@nfserr_exist = common dso_local global i64 0, align 8
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i32 0, align 4
@nfserr_acces = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_link(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_fh* %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.svc_fh* %4, %struct.svc_fh** %10, align 8
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %18 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %21 = call i64 @fh_verify(%struct.svc_rqst* %17, %struct.svc_fh* %18, i32 %19, i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %132

25:                                               ; preds = %5
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %27 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %28 = load i32, i32* @NFSD_MAY_NOP, align 4
  %29 = call i64 @fh_verify(%struct.svc_rqst* %26, %struct.svc_fh* %27, i32 0, i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %132

33:                                               ; preds = %25
  %34 = load i64, i64* @nfserr_isdir, align 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %36 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %35, i32 0, i32 0
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  %38 = call i64 @d_is_dir(%struct.dentry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %132

41:                                               ; preds = %33
  %42 = load i64, i64* @nfserr_perm, align 8
  store i64 %42, i64* %15, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %132

46:                                               ; preds = %41
  %47 = load i64, i64* @nfserr_exist, align 8
  store i64 %47, i64* %15, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @isdotent(i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %132

53:                                               ; preds = %46
  %54 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %55 = call i32 @fh_want_write(%struct.svc_fh* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @nfserrno(i32 %59)
  store i64 %60, i64* %15, align 8
  br label %132

61:                                               ; preds = %53
  %62 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %63 = load i32, i32* @I_MUTEX_PARENT, align 4
  %64 = call i32 @fh_lock_nested(%struct.svc_fh* %62, i32 %63)
  %65 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %66 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %65, i32 0, i32 0
  %67 = load %struct.dentry*, %struct.dentry** %66, align 8
  store %struct.dentry* %67, %struct.dentry** %11, align 8
  %68 = load %struct.dentry*, %struct.dentry** %11, align 8
  %69 = call %struct.inode* @d_inode(%struct.dentry* %68)
  store %struct.inode* %69, %struct.inode** %14, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.dentry*, %struct.dentry** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call %struct.dentry* @lookup_one_len(i8* %70, %struct.dentry* %71, i32 %72)
  store %struct.dentry* %73, %struct.dentry** %12, align 8
  %74 = load %struct.dentry*, %struct.dentry** %12, align 8
  %75 = call i32 @PTR_ERR(%struct.dentry* %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.dentry*, %struct.dentry** %12, align 8
  %77 = call i64 @IS_ERR(%struct.dentry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %134

80:                                               ; preds = %61
  %81 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %82 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %81, i32 0, i32 0
  %83 = load %struct.dentry*, %struct.dentry** %82, align 8
  store %struct.dentry* %83, %struct.dentry** %13, align 8
  %84 = load i64, i64* @nfserr_noent, align 8
  store i64 %84, i64* %15, align 8
  %85 = load %struct.dentry*, %struct.dentry** %13, align 8
  %86 = call i64 @d_really_is_negative(%struct.dentry* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %124

89:                                               ; preds = %80
  %90 = load %struct.dentry*, %struct.dentry** %13, align 8
  %91 = load %struct.inode*, %struct.inode** %14, align 8
  %92 = load %struct.dentry*, %struct.dentry** %12, align 8
  %93 = call i32 @vfs_link(%struct.dentry* %90, %struct.inode* %91, %struct.dentry* %92, i32* null)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %89
  %97 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %98 = call i32 @commit_metadata(%struct.svc_fh* %97)
  %99 = call i64 @nfserrno(i32 %98)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %104 = call i32 @commit_metadata(%struct.svc_fh* %103)
  %105 = call i64 @nfserrno(i32 %104)
  store i64 %105, i64* %15, align 8
  br label %106

106:                                              ; preds = %102, %96
  br label %123

107:                                              ; preds = %89
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* @EXDEV, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %114 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i64, i64* @nfserr_acces, align 8
  store i64 %118, i64* %15, align 8
  br label %122

119:                                              ; preds = %112, %107
  %120 = load i32, i32* %16, align 4
  %121 = call i64 @nfserrno(i32 %120)
  store i64 %121, i64* %15, align 8
  br label %122

122:                                              ; preds = %119, %117
  br label %123

123:                                              ; preds = %122, %106
  br label %124

124:                                              ; preds = %123, %88
  %125 = load %struct.dentry*, %struct.dentry** %12, align 8
  %126 = call i32 @dput(%struct.dentry* %125)
  br label %127

127:                                              ; preds = %134, %124
  %128 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %129 = call i32 @fh_unlock(%struct.svc_fh* %128)
  %130 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %131 = call i32 @fh_drop_write(%struct.svc_fh* %130)
  br label %132

132:                                              ; preds = %127, %58, %52, %45, %40, %32, %24
  %133 = load i64, i64* %15, align 8
  ret i64 %133

134:                                              ; preds = %79
  %135 = load i32, i32* %16, align 4
  %136 = call i64 @nfserrno(i32 %135)
  store i64 %136, i64* %15, align 8
  br label %127
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @fh_lock_nested(%struct.svc_fh*, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @vfs_link(%struct.dentry*, %struct.inode*, %struct.dentry*, i32*) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
