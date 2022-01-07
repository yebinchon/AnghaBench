; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_async_req_send.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_async_req_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_io_args = type { %struct.TYPE_3__, %struct.fuse_io_priv* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fuse_io_priv = type { i64, i32, i32, i32 }

@fuse_aio_complete_req = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fuse_conn*, %struct.fuse_io_args*, i64)* @fuse_async_req_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_async_req_send(%struct.fuse_conn* %0, %struct.fuse_io_args* %1, i64 %2) #0 {
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca %struct.fuse_io_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fuse_io_priv*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store %struct.fuse_io_args* %1, %struct.fuse_io_args** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %10 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %9, i32 0, i32 1
  %11 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %10, align 8
  store %struct.fuse_io_priv* %11, %struct.fuse_io_priv** %8, align 8
  %12 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %13 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %16 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %15, i32 0, i32 3
  %17 = call i32 @kref_get(i32* %16)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %20 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %24 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %28 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @fuse_aio_complete_req, align 4
  %31 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %32 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %36 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %37 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @fuse_simple_background(%struct.fuse_conn* %35, %struct.TYPE_4__* %38, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %46

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i64 [ %41, %43 ], [ %45, %44 ]
  ret i64 %47
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @fuse_simple_background(%struct.fuse_conn*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
