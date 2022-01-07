; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_dir_cache = type { i64, i32, i32, i32 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ovl_dir_cache* (%struct.dentry*)* @ovl_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ovl_dir_cache* @ovl_cache_get(%struct.dentry* %0) #0 {
  %2 = alloca %struct.ovl_dir_cache*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ovl_dir_cache*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call i32 @d_inode(%struct.dentry* %6)
  %8 = call %struct.ovl_dir_cache* @ovl_dir_cache(i32 %7)
  store %struct.ovl_dir_cache* %8, %struct.ovl_dir_cache** %5, align 8
  %9 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %10 = icmp ne %struct.ovl_dir_cache* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i64 @ovl_dentry_version_get(%struct.dentry* %12)
  %14 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %15 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %20 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %27 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  store %struct.ovl_dir_cache* %30, %struct.ovl_dir_cache** %2, align 8
  br label %78

31:                                               ; preds = %11, %1
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = call i32 @d_inode(%struct.dentry* %32)
  %34 = call i32 @ovl_set_dir_cache(i32 %33, %struct.ovl_dir_cache* null)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ovl_dir_cache* @kzalloc(i32 24, i32 %35)
  store %struct.ovl_dir_cache* %36, %struct.ovl_dir_cache** %5, align 8
  %37 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %38 = icmp ne %struct.ovl_dir_cache* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.ovl_dir_cache* @ERR_PTR(i32 %41)
  store %struct.ovl_dir_cache* %42, %struct.ovl_dir_cache** %2, align 8
  br label %78

43:                                               ; preds = %31
  %44 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %45 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %47 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load i32, i32* @RB_ROOT, align 4
  %50 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %51 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %54 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %53, i32 0, i32 2
  %55 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %56 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %55, i32 0, i32 3
  %57 = call i32 @ovl_dir_read_merged(%struct.dentry* %52, i32* %54, i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %43
  %61 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %62 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %61, i32 0, i32 2
  %63 = call i32 @ovl_cache_free(i32* %62)
  %64 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %65 = call i32 @kfree(%struct.ovl_dir_cache* %64)
  %66 = load i32, i32* %4, align 4
  %67 = call %struct.ovl_dir_cache* @ERR_PTR(i32 %66)
  store %struct.ovl_dir_cache* %67, %struct.ovl_dir_cache** %2, align 8
  br label %78

68:                                               ; preds = %43
  %69 = load %struct.dentry*, %struct.dentry** %3, align 8
  %70 = call i64 @ovl_dentry_version_get(%struct.dentry* %69)
  %71 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %72 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.dentry*, %struct.dentry** %3, align 8
  %74 = call i32 @d_inode(%struct.dentry* %73)
  %75 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  %76 = call i32 @ovl_set_dir_cache(i32 %74, %struct.ovl_dir_cache* %75)
  %77 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %5, align 8
  store %struct.ovl_dir_cache* %77, %struct.ovl_dir_cache** %2, align 8
  br label %78

78:                                               ; preds = %68, %60, %39, %18
  %79 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %2, align 8
  ret %struct.ovl_dir_cache* %79
}

declare dso_local %struct.ovl_dir_cache* @ovl_dir_cache(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_version_get(%struct.dentry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ovl_set_dir_cache(i32, %struct.ovl_dir_cache*) #1

declare dso_local %struct.ovl_dir_cache* @kzalloc(i32, i32) #1

declare dso_local %struct.ovl_dir_cache* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ovl_dir_read_merged(%struct.dentry*, i32*, i32*) #1

declare dso_local i32 @ovl_cache_free(i32*) #1

declare dso_local i32 @kfree(%struct.ovl_dir_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
