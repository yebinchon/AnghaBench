; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_get_impure.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_get_impure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_dir_cache = type { i64, i32, i32 }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVL_XATTR_IMPURE = common dso_local global i32 0, align 4
@OVL_IMPURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ovl_dir_cache* (%struct.path*)* @ovl_cache_get_impure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ovl_dir_cache* @ovl_cache_get_impure(%struct.path* %0) #0 {
  %2 = alloca %struct.ovl_dir_cache*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ovl_dir_cache*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @d_inode(%struct.dentry* %10)
  %12 = call %struct.ovl_dir_cache* @ovl_dir_cache(i32 %11)
  store %struct.ovl_dir_cache* %12, %struct.ovl_dir_cache** %6, align 8
  %13 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %14 = icmp ne %struct.ovl_dir_cache* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i64 @ovl_dentry_version_get(%struct.dentry* %16)
  %18 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %19 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  store %struct.ovl_dir_cache* %23, %struct.ovl_dir_cache** %2, align 8
  br label %89

24:                                               ; preds = %15, %1
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @d_inode(%struct.dentry* %25)
  %27 = call i32 @ovl_dir_cache_free(i32 %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @d_inode(%struct.dentry* %28)
  %30 = call i32 @ovl_set_dir_cache(i32 %29, %struct.ovl_dir_cache* null)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ovl_dir_cache* @kzalloc(i32 16, i32 %31)
  store %struct.ovl_dir_cache* %32, %struct.ovl_dir_cache** %6, align 8
  %33 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %34 = icmp ne %struct.ovl_dir_cache* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ovl_dir_cache* @ERR_PTR(i32 %37)
  store %struct.ovl_dir_cache* %38, %struct.ovl_dir_cache** %2, align 8
  br label %89

39:                                               ; preds = %24
  %40 = load %struct.path*, %struct.path** %3, align 8
  %41 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %42 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %41, i32 0, i32 1
  %43 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %44 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %43, i32 0, i32 2
  %45 = call i32 @ovl_dir_read_impure(%struct.path* %40, i32* %42, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %50 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %49, i32 0, i32 1
  %51 = call i32 @ovl_cache_free(i32* %50)
  %52 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %53 = call i32 @kfree(%struct.ovl_dir_cache* %52)
  %54 = load i32, i32* %4, align 4
  %55 = call %struct.ovl_dir_cache* @ERR_PTR(i32 %54)
  store %struct.ovl_dir_cache* %55, %struct.ovl_dir_cache** %2, align 8
  br label %89

56:                                               ; preds = %39
  %57 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %58 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %57, i32 0, i32 1
  %59 = call i64 @list_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = call i32 @ovl_want_write(%struct.dentry* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = call i32 @ovl_dentry_upper(%struct.dentry* %66)
  %68 = load i32, i32* @OVL_XATTR_IMPURE, align 4
  %69 = call i32 @ovl_do_removexattr(i32 %67, i32 %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i32 @ovl_drop_write(%struct.dentry* %70)
  br label %72

72:                                               ; preds = %65, %61
  %73 = load i32, i32* @OVL_IMPURE, align 4
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = call i32 @d_inode(%struct.dentry* %74)
  %76 = call i32 @ovl_clear_flag(i32 %73, i32 %75)
  %77 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %78 = call i32 @kfree(%struct.ovl_dir_cache* %77)
  store %struct.ovl_dir_cache* null, %struct.ovl_dir_cache** %2, align 8
  br label %89

79:                                               ; preds = %56
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = call i64 @ovl_dentry_version_get(%struct.dentry* %80)
  %82 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %83 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.dentry*, %struct.dentry** %5, align 8
  %85 = call i32 @d_inode(%struct.dentry* %84)
  %86 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  %87 = call i32 @ovl_set_dir_cache(i32 %85, %struct.ovl_dir_cache* %86)
  %88 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %6, align 8
  store %struct.ovl_dir_cache* %88, %struct.ovl_dir_cache** %2, align 8
  br label %89

89:                                               ; preds = %79, %72, %48, %35, %22
  %90 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %2, align 8
  ret %struct.ovl_dir_cache* %90
}

declare dso_local %struct.ovl_dir_cache* @ovl_dir_cache(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_version_get(%struct.dentry*) #1

declare dso_local i32 @ovl_dir_cache_free(i32) #1

declare dso_local i32 @ovl_set_dir_cache(i32, %struct.ovl_dir_cache*) #1

declare dso_local %struct.ovl_dir_cache* @kzalloc(i32, i32) #1

declare dso_local %struct.ovl_dir_cache* @ERR_PTR(i32) #1

declare dso_local i32 @ovl_dir_read_impure(%struct.path*, i32*, i32*) #1

declare dso_local i32 @ovl_cache_free(i32*) #1

declare dso_local i32 @kfree(%struct.ovl_dir_cache*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local i32 @ovl_do_removexattr(i32, i32) #1

declare dso_local i32 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

declare dso_local i32 @ovl_clear_flag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
