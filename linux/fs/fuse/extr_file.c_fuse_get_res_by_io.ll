; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_get_res_by_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_get_res_by_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_priv = type { i64, i64, i64, i64 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fuse_io_priv*)* @fuse_get_res_by_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_get_res_by_io(%struct.fuse_io_priv* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fuse_io_priv*, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %3, align 8
  %4 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %5 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %2, align 8
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %14 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %19 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @EIO, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %2, align 8
  br label %40

25:                                               ; preds = %17, %12
  %26 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %32 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %3, align 8
  %36 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i64 [ %33, %30 ], [ %37, %34 ]
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %22, %8
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
