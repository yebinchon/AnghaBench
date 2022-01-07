; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_workdir_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_workdir_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ovl_fs = type { %struct.TYPE_3__, %struct.TYPE_4__*, %struct.vfsmount* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.vfsmount = type { i32 }
%struct.iattr = type { i32, i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"overlayfs: failed to create directory %s/%s (errno: %i); mounting read-only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.ovl_fs*, i8*, i32)* @ovl_workdir_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_workdir_create(%struct.ovl_fs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ovl_fs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iattr, align 4
  store %struct.ovl_fs* %0, %struct.ovl_fs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %15 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %20 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %19, i32 0, i32 2
  %21 = load %struct.vfsmount*, %struct.vfsmount** %20, align 8
  store %struct.vfsmount* %21, %struct.vfsmount** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load i32, i32* @I_MUTEX_PARENT, align 4
  %24 = call i32 @inode_lock_nested(%struct.inode* %22, i32 %23)
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %55, %3
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %28 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call %struct.dentry* @lookup_one_len(i8* %26, %struct.TYPE_4__* %29, i32 %31)
  store %struct.dentry* %32, %struct.dentry** %9, align 8
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = call i64 @IS_ERR(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %124, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %38 = load i32, i32* @S_IFDIR, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 1
  %40 = load i32, i32* @ATTR_MODE, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  %44 = icmp ne %struct.inode* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %36
  %46 = load i32, i32* @EEXIST, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %136

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %128

55:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %58 = load %struct.dentry*, %struct.dentry** %9, align 8
  %59 = call i32 @ovl_workdir_cleanup(%struct.inode* %56, %struct.vfsmount* %57, %struct.dentry* %58, i32 0)
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = call i32 @dput(%struct.dentry* %60)
  br label %25

62:                                               ; preds = %36
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = load %struct.dentry*, %struct.dentry** %9, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @OVL_CATTR(i32 %66)
  %68 = call %struct.dentry* @ovl_create_real(%struct.inode* %63, %struct.dentry* %64, i32 %67)
  store %struct.dentry* %68, %struct.dentry** %9, align 8
  %69 = load %struct.dentry*, %struct.dentry** %9, align 8
  %70 = call i32 @PTR_ERR(%struct.dentry* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.dentry*, %struct.dentry** %9, align 8
  %72 = call i64 @IS_ERR(%struct.dentry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %139

75:                                               ; preds = %62
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = load i32, i32* @XATTR_NAME_POSIX_ACL_DEFAULT, align 4
  %78 = call i32 @vfs_removexattr(%struct.dentry* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @ENODATA, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %136

92:                                               ; preds = %86, %81, %75
  %93 = load %struct.dentry*, %struct.dentry** %9, align 8
  %94 = load i32, i32* @XATTR_NAME_POSIX_ACL_ACCESS, align 4
  %95 = call i32 @vfs_removexattr(%struct.dentry* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @ENODATA, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %136

109:                                              ; preds = %103, %98, %92
  %110 = load %struct.dentry*, %struct.dentry** %9, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = load %struct.inode*, %struct.inode** %111, align 8
  %113 = call i32 @inode_lock(%struct.inode* %112)
  %114 = load %struct.dentry*, %struct.dentry** %9, align 8
  %115 = call i32 @notify_change(%struct.dentry* %114, %struct.iattr* %13, i32* null)
  store i32 %115, i32* %10, align 4
  %116 = load %struct.dentry*, %struct.dentry** %9, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 0
  %118 = load %struct.inode*, %struct.inode** %117, align 8
  %119 = call i32 @inode_unlock(%struct.inode* %118)
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %136

123:                                              ; preds = %109
  br label %127

124:                                              ; preds = %25
  %125 = load %struct.dentry*, %struct.dentry** %9, align 8
  %126 = call i32 @PTR_ERR(%struct.dentry* %125)
  store i32 %126, i32* %10, align 4
  br label %139

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %139, %127, %54
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = call i32 @inode_unlock(%struct.inode* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %135

136:                                              ; preds = %122, %108, %91, %50
  %137 = load %struct.dentry*, %struct.dentry** %9, align 8
  %138 = call i32 @dput(%struct.dentry* %137)
  br label %139

139:                                              ; preds = %136, %124, %74
  %140 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %141 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 0, %145
  %147 = call i32 @pr_warn(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %143, i8* %144, i32 %146)
  store %struct.dentry* null, %struct.dentry** %9, align 8
  br label %128
}

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_workdir_cleanup(%struct.inode*, %struct.vfsmount*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_create_real(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @OVL_CATTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_removexattr(%struct.dentry*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @pr_warn(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
