; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_get_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i32 }
%struct.ovl_path = type { %struct.dentry*, %struct.ovl_layer* }
%struct.ovl_layer = type { i32 }
%struct.dentry = type { i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, %struct.ovl_path*, %struct.dentry*)* @ovl_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_get_dentry(%struct.super_block* %0, %struct.dentry* %1, %struct.ovl_path* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ovl_path*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ovl_fs*, align 8
  %11 = alloca %struct.ovl_layer, align 4
  %12 = alloca %struct.ovl_layer*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.ovl_path* %2, %struct.ovl_path** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.ovl_fs*, %struct.ovl_fs** %15, align 8
  store %struct.ovl_fs* %16, %struct.ovl_fs** %10, align 8
  %17 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %11, i32 0, i32 0
  %18 = load %struct.ovl_fs*, %struct.ovl_fs** %10, align 8
  %19 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  %26 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %25, i32 0, i32 1
  %27 = load %struct.ovl_layer*, %struct.ovl_layer** %26, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi %struct.ovl_layer* [ %11, %23 ], [ %27, %24 ]
  store %struct.ovl_layer* %29, %struct.ovl_layer** %12, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %43

33:                                               ; preds = %28
  %34 = load %struct.dentry*, %struct.dentry** %9, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  %38 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  %39 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %38, i32 0, i32 0
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi %struct.dentry* [ %34, %36 ], [ %40, %37 ]
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi %struct.dentry* [ %30, %32 ], [ %42, %41 ]
  store %struct.dentry* %44, %struct.dentry** %13, align 8
  %45 = load %struct.dentry*, %struct.dentry** %13, align 8
  %46 = call i32 @d_is_dir(%struct.dentry* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.super_block*, %struct.super_block** %6, align 8
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = call %struct.dentry* @ovl_obtain_alias(%struct.super_block* %49, %struct.dentry* %50, %struct.ovl_path* %51, %struct.dentry* %52)
  store %struct.dentry* %53, %struct.dentry** %5, align 8
  br label %74

54:                                               ; preds = %43
  %55 = load %struct.dentry*, %struct.dentry** %13, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load %struct.dentry*, %struct.dentry** %13, align 8
  %63 = call i64 @d_unhashed(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %54
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.dentry* @ERR_PTR(i32 %67)
  store %struct.dentry* %68, %struct.dentry** %5, align 8
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = load %struct.dentry*, %struct.dentry** %13, align 8
  %72 = load %struct.ovl_layer*, %struct.ovl_layer** %12, align 8
  %73 = call %struct.dentry* @ovl_lookup_real(%struct.super_block* %70, %struct.dentry* %71, %struct.ovl_layer* %72)
  store %struct.dentry* %73, %struct.dentry** %5, align 8
  br label %74

74:                                               ; preds = %69, %65, %48
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %75
}

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_obtain_alias(%struct.super_block*, %struct.dentry*, %struct.ovl_path*, %struct.dentry*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @ovl_lookup_real(%struct.super_block*, %struct.dentry*, %struct.ovl_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
