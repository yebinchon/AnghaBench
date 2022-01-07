; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_read_args_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_read_args_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.fuse_args }
%struct.fuse_args = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.file = type { i32, %struct.fuse_file* }
%struct.fuse_file = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_read_args_fill(%struct.fuse_io_args* %0, %struct.file* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.fuse_io_args*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_file*, align 8
  %12 = alloca %struct.fuse_args*, align 8
  store %struct.fuse_io_args* %0, %struct.fuse_io_args** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.file*, %struct.file** %7, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.fuse_file*, %struct.fuse_file** %14, align 8
  store %struct.fuse_file* %15, %struct.fuse_file** %11, align 8
  %16 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %17 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.fuse_args* %18, %struct.fuse_args** %12, align 8
  %19 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %20 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %23 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %28 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %33 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %40 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %45 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %47 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %50 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %52 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %54 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %53, i32 0, i32 5
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 24, i32* %57, align 8
  %58 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %59 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %62 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %61, i32 0, i32 5
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %67 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %69 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.fuse_args*, %struct.fuse_args** %12, align 8
  %72 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i64 %70, i64* %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
