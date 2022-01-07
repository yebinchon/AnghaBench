; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_stat.c_vfs_getattr_nosec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_stat.c_vfs_getattr_nosec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.path*, %struct.kstat*, i32, i32)* }

@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@STATX_ALL = common dso_local global i32 0, align 4
@KSTAT_QUERY_FLAGS = common dso_local global i32 0, align 4
@STATX_ATIME = common dso_local global i32 0, align 4
@STATX_ATTR_AUTOMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_getattr_nosec(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.path*, %struct.path** %6, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_backing_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load %struct.kstat*, %struct.kstat** %7, align 8
  %16 = call i32 @memset(%struct.kstat* %15, i32 0, i32 8)
  %17 = load i32, i32* @STATX_BASIC_STATS, align 4
  %18 = load %struct.kstat*, %struct.kstat** %7, align 8
  %19 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @STATX_ALL, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @KSTAT_QUERY_FLAGS, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call i64 @IS_NOATIME(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32, i32* @STATX_ATIME, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.kstat*, %struct.kstat** %7, align 8
  %35 = getelementptr inbounds %struct.kstat, %struct.kstat* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = call i64 @IS_AUTOMOUNT(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @STATX_ATTR_AUTOMOUNT, align 4
  %44 = load %struct.kstat*, %struct.kstat** %7, align 8
  %45 = getelementptr inbounds %struct.kstat, %struct.kstat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.path*, %struct.kstat*, i32, i32)*, i32 (%struct.path*, %struct.kstat*, i32, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.path*, %struct.kstat*, i32, i32)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.path*, %struct.kstat*, i32, i32)*, i32 (%struct.path*, %struct.kstat*, i32, i32)** %59, align 8
  %61 = load %struct.path*, %struct.path** %6, align 8
  %62 = load %struct.kstat*, %struct.kstat** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 %60(%struct.path* %61, %struct.kstat* %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %48
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = load %struct.kstat*, %struct.kstat** %7, align 8
  %69 = call i32 @generic_fillattr(%struct.inode* %67, %struct.kstat* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %55
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local i32 @memset(%struct.kstat*, i32, i32) #1

declare dso_local i64 @IS_NOATIME(%struct.inode*) #1

declare dso_local i64 @IS_AUTOMOUNT(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
