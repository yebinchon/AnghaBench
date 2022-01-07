; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_iterate_real.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_iterate_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.path, %struct.ovl_dir_file* }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_3__*, %struct.dentry* }
%struct.TYPE_3__ = type { i64 }
%struct.ovl_dir_file = type { i32 }
%struct.dir_context = type { i32 }
%struct.ovl_layer = type { i32 }
%struct.ovl_readdir_translate = type { %struct.TYPE_4__, i32, i32, i32, i64, %struct.dir_context* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kstat = type { i64, i32 }

@ovl_fill_real = common dso_local global i32 0, align 4
@STATX_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @ovl_iterate_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_iterate_real(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ovl_dir_file*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.ovl_layer*, align 8
  %10 = alloca %struct.ovl_readdir_translate, align 8
  %11 = alloca %struct.kstat, align 8
  %12 = alloca %struct.path, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %14, align 8
  store %struct.ovl_dir_file* %15, %struct.ovl_dir_file** %7, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %19, %struct.dentry** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = call %struct.ovl_layer* @ovl_layer_lower(%struct.dentry* %20)
  store %struct.ovl_layer* %21, %struct.ovl_layer** %9, align 8
  %22 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %25 = load i32, i32* @ovl_fill_real, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 4
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i64 @ovl_xino_bits(%struct.TYPE_3__* %32)
  store i64 %33, i64* %29, align 8
  %34 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 5
  %35 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  store %struct.dir_context* %35, %struct.dir_context** %34, align 8
  %36 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load %struct.ovl_layer*, %struct.ovl_layer** %9, align 8
  %41 = icmp ne %struct.ovl_layer* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.ovl_layer*, %struct.ovl_layer** %9, align 8
  %44 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %39, %2
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  %51 = call i32 @ovl_path_type(%struct.dentry* %50)
  %52 = call i64 @OVL_TYPE_MERGE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %47
  %55 = load %struct.file*, %struct.file** %4, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = bitcast %struct.path* %12 to i8*
  %58 = bitcast %struct.path* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 1
  %61 = load %struct.dentry*, %struct.dentry** %60, align 8
  %62 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  store %struct.dentry* %61, %struct.dentry** %62, align 8
  %63 = load i32, i32* @STATX_INO, align 4
  %64 = call i32 @vfs_getattr(%struct.path* %12, %struct.kstat* %11, i32 %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %113

69:                                               ; preds = %54
  %70 = load %struct.dentry*, %struct.dentry** %8, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.kstat, %struct.kstat* %11, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %74, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @WARN_ON_ONCE(i32 %78)
  %80 = getelementptr inbounds %struct.kstat, %struct.kstat* %11, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %69, %47
  %84 = load %struct.file*, %struct.file** %4, align 8
  %85 = call i64 @ovl_is_impure_dir(%struct.file* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.file*, %struct.file** %4, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = call i32 @ovl_cache_get_impure(%struct.path* %89)
  %91 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %3, align 4
  br label %113

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %83
  %102 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %7, align 8
  %103 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 0
  %106 = call i32 @iterate_dir(i32 %104, %struct.TYPE_4__* %105)
  store i32 %106, i32* %6, align 4
  %107 = getelementptr inbounds %struct.ovl_readdir_translate, %struct.ovl_readdir_translate* %10, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %111 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %101, %96, %67
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.ovl_layer* @ovl_layer_lower(%struct.dentry*) #1

declare dso_local i64 @ovl_xino_bits(%struct.TYPE_3__*) #1

declare dso_local i64 @OVL_TYPE_MERGE(i32) #1

declare dso_local i32 @ovl_path_type(%struct.dentry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ovl_is_impure_dir(%struct.file*) #1

declare dso_local i32 @ovl_cache_get_impure(%struct.path*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @iterate_dir(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
