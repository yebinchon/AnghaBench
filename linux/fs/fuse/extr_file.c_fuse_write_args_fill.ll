; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_write_args_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_write_args_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.fuse_args }
%struct.fuse_args = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.fuse_file = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@FUSE_WRITE = common dso_local global i32 0, align 4
@FUSE_COMPAT_WRITE_IN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_io_args*, %struct.fuse_file*, i32, i64)* @fuse_write_args_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_write_args_fill(%struct.fuse_io_args* %0, %struct.fuse_file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.fuse_io_args*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.fuse_args*, align 8
  store %struct.fuse_io_args* %0, %struct.fuse_io_args** %5, align 8
  store %struct.fuse_file* %1, %struct.fuse_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %11 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.fuse_args* %12, %struct.fuse_args** %9, align 8
  %13 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %14 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %27 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load i32, i32* @FUSE_WRITE, align 4
  %31 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %32 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %34 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %37 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %39 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %38, i32 0, i32 0
  store i32 2, i32* %39, align 8
  %40 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %41 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 9
  br i1 %45, label %46, label %53

46:                                               ; preds = %4
  %47 = load i32, i32* @FUSE_COMPAT_WRITE_IN_SIZE, align 4
  %48 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %49 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  br label %59

53:                                               ; preds = %4
  %54 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %55 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %54, i32 0, i32 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 16, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %61 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %64 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %71 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %70, i32 0, i32 3
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %76 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %78 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load %struct.fuse_io_args*, %struct.fuse_io_args** %5, align 8
  %83 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.fuse_args*, %struct.fuse_args** %9, align 8
  %86 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32* %84, i32** %89, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
