; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_add_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_add_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.path = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mountpoint = type { i32 }

@MNT_INTERNAL_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MNT_SHRINKABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.path*, i32)* @do_add_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_add_mount(%struct.mount* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mountpoint*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MNT_INTERNAL_FLAGS, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load %struct.path*, %struct.path** %6, align 8
  %16 = call %struct.mountpoint* @lock_mount(%struct.path* %15)
  store %struct.mountpoint* %16, %struct.mountpoint** %8, align 8
  %17 = load %struct.mountpoint*, %struct.mountpoint** %8, align 8
  %18 = call i64 @IS_ERR(%struct.mountpoint* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.mountpoint*, %struct.mountpoint** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.mountpoint* %21)
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %3
  %24 = load %struct.path*, %struct.path** %6, align 8
  %25 = getelementptr inbounds %struct.path, %struct.path* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.mount* @real_mount(%struct.TYPE_4__* %26)
  store %struct.mount* %27, %struct.mount** %9, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mount*, %struct.mount** %9, align 8
  %31 = call i32 @check_mnt(%struct.mount* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MNT_SHRINKABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %93

43:                                               ; preds = %37
  %44 = load %struct.mount*, %struct.mount** %9, align 8
  %45 = getelementptr inbounds %struct.mount, %struct.mount* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %93

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.path*, %struct.path** %6, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mount*, %struct.mount** %5, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %50
  %64 = load %struct.path*, %struct.path** %6, align 8
  %65 = getelementptr inbounds %struct.path, %struct.path* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.path*, %struct.path** %6, align 8
  %70 = getelementptr inbounds %struct.path, %struct.path* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %93

74:                                               ; preds = %63, %50
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.mount*, %struct.mount** %5, align 8
  %78 = getelementptr inbounds %struct.mount, %struct.mount* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @d_is_symlink(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %93

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.mount*, %struct.mount** %5, align 8
  %87 = getelementptr inbounds %struct.mount, %struct.mount* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %struct.mount*, %struct.mount** %5, align 8
  %90 = load %struct.mount*, %struct.mount** %9, align 8
  %91 = load %struct.mountpoint*, %struct.mountpoint** %8, align 8
  %92 = call i32 @graft_tree(%struct.mount* %89, %struct.mount* %90, %struct.mountpoint* %91)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %84, %83, %73, %48, %42
  %94 = load %struct.mountpoint*, %struct.mountpoint** %8, align 8
  %95 = call i32 @unlock_mount(%struct.mountpoint* %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.mountpoint* @lock_mount(%struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.mountpoint*) #1

declare dso_local i32 @PTR_ERR(%struct.mountpoint*) #1

declare dso_local %struct.mount* @real_mount(%struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_mnt(%struct.mount*) #1

declare dso_local i64 @d_is_symlink(i32) #1

declare dso_local i32 @graft_tree(%struct.mount*, %struct.mount*, %struct.mountpoint*) #1

declare dso_local i32 @unlock_mount(%struct.mountpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
