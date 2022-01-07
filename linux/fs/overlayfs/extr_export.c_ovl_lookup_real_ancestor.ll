; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real_ancestor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ovl_layer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* }

@EIO = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, %struct.ovl_layer*)* @ovl_lookup_real_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_lookup_real_ancestor(%struct.super_block* %0, %struct.dentry* %1, %struct.ovl_layer* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ovl_layer*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.ovl_layer* %2, %struct.ovl_layer** %7, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dentry* @ERR_PTR(i32 %12)
  store %struct.dentry* %13, %struct.dentry** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %16 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  %20 = icmp eq %struct.dentry* %14, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call %struct.dentry* @dget(%struct.dentry* %24)
  store %struct.dentry* %25, %struct.dentry** %4, align 8
  br label %70

26:                                               ; preds = %3
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = call %struct.dentry* @dget(%struct.dentry* %27)
  store %struct.dentry* %28, %struct.dentry** %8, align 8
  br label %29

29:                                               ; preds = %60, %26
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = call %struct.dentry* @dget_parent(%struct.dentry* %30)
  store %struct.dentry* %31, %struct.dentry** %9, align 8
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %35 = call %struct.dentry* @ovl_lookup_real_inode(%struct.super_block* %32, %struct.dentry* %33, %struct.ovl_layer* %34)
  store %struct.dentry* %35, %struct.dentry** %10, align 8
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %64

39:                                               ; preds = %29
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %42 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.dentry*, %struct.dentry** %44, align 8
  %46 = icmp eq %struct.dentry* %40, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 0
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  %51 = call %struct.dentry* @dget(%struct.dentry* %50)
  store %struct.dentry* %51, %struct.dentry** %10, align 8
  br label %64

52:                                               ; preds = %39
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = icmp eq %struct.dentry* %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @EXDEV, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.dentry* @ERR_PTR(i32 %58)
  store %struct.dentry* %59, %struct.dentry** %10, align 8
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = call i32 @dput(%struct.dentry* %61)
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %63, %struct.dentry** %8, align 8
  br label %29

64:                                               ; preds = %56, %47, %38
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call i32 @dput(%struct.dentry* %65)
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = call i32 @dput(%struct.dentry* %67)
  %69 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %69, %struct.dentry** %4, align 8
  br label %70

70:                                               ; preds = %64, %21
  %71 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %71
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_lookup_real_inode(%struct.super_block*, %struct.dentry*, %struct.ovl_layer*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
