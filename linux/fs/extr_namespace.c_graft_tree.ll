; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_graft_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_graft_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mountpoint = type { i32 }

@SB_NOUSER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.mount*, %struct.mountpoint*)* @graft_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graft_tree(%struct.mount* %0, %struct.mount* %1, %struct.mountpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mountpoint*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.mount* %1, %struct.mount** %6, align 8
  store %struct.mountpoint* %2, %struct.mountpoint** %7, align 8
  %8 = load %struct.mount*, %struct.mount** %5, align 8
  %9 = getelementptr inbounds %struct.mount, %struct.mount* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SB_NOUSER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.mountpoint*, %struct.mountpoint** %7, align 8
  %22 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @d_is_dir(i32 %23)
  %25 = load %struct.mount*, %struct.mount** %5, align 8
  %26 = getelementptr inbounds %struct.mount, %struct.mount* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @d_is_dir(i32 %28)
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOTDIR, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %20
  %35 = load %struct.mount*, %struct.mount** %5, align 8
  %36 = load %struct.mount*, %struct.mount** %6, align 8
  %37 = load %struct.mountpoint*, %struct.mountpoint** %7, align 8
  %38 = call i32 @attach_recursive_mnt(%struct.mount* %35, %struct.mount* %36, %struct.mountpoint* %37, i32 0)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %31, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @d_is_dir(i32) #1

declare dso_local i32 @attach_recursive_mnt(%struct.mount*, %struct.mount*, %struct.mountpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
