; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_get_aghdr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_get_aghdr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_ops*, %struct.TYPE_2__*, i8*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_buf* (%struct.xfs_mount*, i8*, i64, %struct.xfs_buf_ops*)* @xfs_get_aghdr_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_buf* @xfs_get_aghdr_buf(%struct.xfs_mount* %0, i8* %1, i64 %2, %struct.xfs_buf_ops* %3) #0 {
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_buf_ops*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.xfs_buf_ops* %3, %struct.xfs_buf_ops** %9, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.xfs_buf* @xfs_buf_get_uncached(i32 %13, i64 %14, i32 0)
  store %struct.xfs_buf* %15, %struct.xfs_buf** %10, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %17 = icmp ne %struct.xfs_buf* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.xfs_buf* null, %struct.xfs_buf** %5, align 8
  br label %39

19:                                               ; preds = %4
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %22 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BBTOB(i32 %23)
  %25 = call i32 @xfs_buf_zero(%struct.xfs_buf* %20, i32 0, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %31 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  %35 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %9, align 8
  %36 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %37 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %36, i32 0, i32 0
  store %struct.xfs_buf_ops* %35, %struct.xfs_buf_ops** %37, align 8
  %38 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  store %struct.xfs_buf* %38, %struct.xfs_buf** %5, align 8
  br label %39

39:                                               ; preds = %19, %18
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  ret %struct.xfs_buf* %40
}

declare dso_local %struct.xfs_buf* @xfs_buf_get_uncached(i32, i64, i32) #1

declare dso_local i32 @xfs_buf_zero(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @BBTOB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
