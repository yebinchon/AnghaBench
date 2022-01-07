; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_adjust_compat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_adjust_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_args = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FUSE_STATFS = common dso_local global i32 0, align 4
@FUSE_COMPAT_STATFS_SIZE = common dso_local global i32 0, align 4
@FUSE_COMPAT_ENTRY_OUT_SIZE = common dso_local global i32 0, align 4
@FUSE_COMPAT_ATTR_OUT_SIZE = common dso_local global i32 0, align 4
@FUSE_COMPAT_MKNOD_IN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_args*)* @fuse_adjust_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_adjust_compat(%struct.fuse_conn* %0, %struct.fuse_args* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_args*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %4, align 8
  %5 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FUSE_STATFS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @FUSE_COMPAT_STATFS_SIZE, align 4
  %17 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %9, %2
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %24 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 9
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %29 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %45 [
    i32 132, label %31
    i32 135, label %31
    i32 130, label %31
    i32 131, label %31
    i32 128, label %31
    i32 133, label %31
    i32 134, label %38
    i32 129, label %38
  ]

31:                                               ; preds = %27, %27, %27, %27, %27, %27
  %32 = load i32, i32* @FUSE_COMPAT_ENTRY_OUT_SIZE, align 4
  %33 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  br label %45

38:                                               ; preds = %27, %27
  %39 = load i32, i32* @FUSE_COMPAT_ATTR_OUT_SIZE, align 4
  %40 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %41 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %27, %38, %31
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %48 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 12
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %53 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %68 [
    i32 135, label %55
    i32 130, label %61
  ]

55:                                               ; preds = %51
  %56 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %57 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 4
  br label %68

61:                                               ; preds = %51
  %62 = load i32, i32* @FUSE_COMPAT_MKNOD_IN_SIZE, align 4
  %63 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %64 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %51, %61, %55
  br label %69

69:                                               ; preds = %68, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
