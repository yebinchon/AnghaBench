; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_make_workdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_make_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i32, i32, %struct.TYPE_7__, i64, %struct.TYPE_8__*, i32, %struct.vfsmount* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vfsmount = type { i32 }
%struct.path = type { i32 }
%struct.dentry = type { i32 }

@OVL_WORKDIR_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"workdir\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"overlayfs: upper fs needs to support d_type.\0A\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"overlayfs: upper fs does not support tmpfile.\0A\00", align 1
@OVL_XATTR_OPAQUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"overlayfs: upper fs does not support xattr, falling back to index=off and metacopy=off.\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"overlayfs: upper fs does not support file handles, falling back to index=off.\0A\00", align 1
@FILEID_INO32_GEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [76 x i8] c"overlayfs: NFS export requires \22index=on\22, falling back to nfs_export=off.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*, %struct.path*)* @ovl_make_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_make_workdir(%struct.super_block* %0, %struct.ovl_fs* %1, %struct.path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ovl_fs*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  %12 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %13 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %12, i32 0, i32 6
  %14 = load %struct.vfsmount*, %struct.vfsmount** %13, align 8
  store %struct.vfsmount* %14, %struct.vfsmount** %8, align 8
  %15 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %16 = call i32 @mnt_want_write(%struct.vfsmount* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %149

21:                                               ; preds = %3
  %22 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %23 = load i32, i32* @OVL_WORKDIR_NAME, align 4
  %24 = call %struct.TYPE_8__* @ovl_workdir_create(%struct.ovl_fs* %22, i32 %23, i32 0)
  %25 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %26 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %25, i32 0, i32 4
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %28 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %145

32:                                               ; preds = %21
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %35 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %38 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %37, i32 0, i32 5
  %39 = call i32 @ovl_setup_trap(%struct.super_block* %33, %struct.TYPE_8__* %36, i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %145

43:                                               ; preds = %32
  %44 = load %struct.path*, %struct.path** %7, align 8
  %45 = call i32 @ovl_check_d_type_supported(%struct.path* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %145

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %56 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %55, i32 0, i32 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* @S_IFREG, align 4
  %59 = call %struct.dentry* @ovl_do_tmpfile(%struct.TYPE_8__* %57, i32 %58)
  store %struct.dentry* %59, %struct.dentry** %9, align 8
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = call i32 @IS_ERR(%struct.dentry* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %66 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %68 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = call i32 @dput(%struct.dentry* %72)
  br label %76

74:                                               ; preds = %54
  %75 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  %77 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %78 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* @OVL_XATTR_OPAQUE, align 4
  %81 = call i32 @ovl_do_setxattr(%struct.TYPE_8__* %79, i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %76
  %85 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %86 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %88 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %91 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %100

94:                                               ; preds = %76
  %95 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %96 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %95, i32 0, i32 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* @OVL_XATTR_OPAQUE, align 4
  %99 = call i32 @vfs_removexattr(%struct.TYPE_8__* %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %84
  %101 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %102 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ovl_can_decode_fh(i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %108 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %117 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = call i32 @pr_warn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %112, %100
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @FILEID_INO32_GEN, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %126 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %120
  %128 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %129 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %135 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = call i32 @pr_warn(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %141 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %142 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %133, %127
  br label %145

145:                                              ; preds = %144, %48, %42, %31
  %146 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %147 = call i32 @mnt_drop_write(%struct.vfsmount* %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %19
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @mnt_want_write(%struct.vfsmount*) #1

declare dso_local %struct.TYPE_8__* @ovl_workdir_create(%struct.ovl_fs*, i32, i32) #1

declare dso_local i32 @ovl_setup_trap(%struct.super_block*, %struct.TYPE_8__*, i32*, i8*) #1

declare dso_local i32 @ovl_check_d_type_supported(%struct.path*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.dentry* @ovl_do_tmpfile(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @ovl_do_setxattr(%struct.TYPE_8__*, i32, i8*, i32, i32) #1

declare dso_local i32 @vfs_removexattr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ovl_can_decode_fh(i32) #1

declare dso_local i32 @mnt_drop_write(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
