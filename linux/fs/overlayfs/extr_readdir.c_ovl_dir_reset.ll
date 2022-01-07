; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_reset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__, %struct.ovl_dir_file* }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ovl_dir_file = type { i32, i32*, %struct.ovl_dir_cache* }
%struct.ovl_dir_cache = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @ovl_dir_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_dir_reset(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.ovl_dir_file*, align 8
  %4 = alloca %struct.ovl_dir_cache*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  store %struct.ovl_dir_file* %9, %struct.ovl_dir_file** %3, align 8
  %10 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %3, align 8
  %11 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %10, i32 0, i32 2
  %12 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %11, align 8
  store %struct.ovl_dir_cache* %12, %struct.ovl_dir_cache** %4, align 8
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %5, align 8
  %17 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %4, align 8
  %18 = icmp ne %struct.ovl_dir_cache* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i64 @ovl_dentry_version_get(%struct.dentry* %20)
  %22 = load %struct.ovl_dir_cache*, %struct.ovl_dir_cache** %4, align 8
  %23 = getelementptr inbounds %struct.ovl_dir_cache, %struct.ovl_dir_cache* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %3, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @ovl_cache_put(%struct.ovl_dir_file* %27, %struct.dentry* %28)
  %30 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %3, align 8
  %31 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %30, i32 0, i32 2
  store %struct.ovl_dir_cache* null, %struct.ovl_dir_cache** %31, align 8
  %32 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %3, align 8
  %33 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %19, %1
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i32 @ovl_dir_is_real(%struct.dentry* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %3, align 8
  %38 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %50

47:                                               ; preds = %42
  %48 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %3, align 8
  %49 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %47, %34
  ret void
}

declare dso_local i64 @ovl_dentry_version_get(%struct.dentry*) #1

declare dso_local i32 @ovl_cache_put(%struct.ovl_dir_file*, %struct.dentry*) #1

declare dso_local i32 @ovl_dir_is_real(%struct.dentry*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
