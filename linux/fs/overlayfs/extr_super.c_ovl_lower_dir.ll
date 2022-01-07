; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_lower_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_lower_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ovl_fs = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [96 x i8] c"overlayfs: fs on '%s' does not support file handles, falling back to index=off,nfs_export=off.\0A\00", align 1
@FILEID_INO32_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, %struct.ovl_fs*, i32*, i32*)* @ovl_lower_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_lower_dir(i8* %0, %struct.path* %1, %struct.ovl_fs* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca %struct.ovl_fs*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store %struct.ovl_fs* %2, %struct.ovl_fs** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.path*, %struct.path** %8, align 8
  %16 = call i32 @ovl_mount_dir_noesc(i8* %14, %struct.path* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %94

20:                                               ; preds = %5
  %21 = load %struct.path*, %struct.path** %8, align 8
  %22 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @ovl_check_namelen(%struct.path* %21, %struct.ovl_fs* %22, i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %91

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.path*, %struct.path** %8, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @max(i32 %30, i32 %37)
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.path*, %struct.path** %8, align 8
  %41 = getelementptr inbounds %struct.path, %struct.path* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i64 @ovl_dentry_remote(%struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32*, i32** %11, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %28
  %48 = load %struct.path*, %struct.path** %8, align 8
  %49 = getelementptr inbounds %struct.path, %struct.path* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ovl_can_decode_fh(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %55 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %47
  %60 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %61 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %67 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %65, %47
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %76 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %79 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @pr_warn(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %74, %71, %65, %59
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @FILEID_INO32_GEN, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.ovl_fs*, %struct.ovl_fs** %9, align 8
  %89 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %83
  store i32 0, i32* %6, align 4
  br label %96

91:                                               ; preds = %27
  %92 = load %struct.path*, %struct.path** %8, align 8
  %93 = call i32 @path_put_init(%struct.path* %92)
  br label %94

94:                                               ; preds = %91, %19
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @ovl_mount_dir_noesc(i8*, %struct.path*) #1

declare dso_local i32 @ovl_check_namelen(%struct.path*, %struct.ovl_fs*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @ovl_dentry_remote(%struct.TYPE_8__*) #1

declare dso_local i32 @ovl_can_decode_fh(i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @path_put_init(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
