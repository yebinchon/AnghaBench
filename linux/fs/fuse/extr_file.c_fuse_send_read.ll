; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FUSE_READ = common dso_local global i32 0, align 4
@FUSE_READ_LOCKOWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_io_args*, i32, i64, i32*)* @fuse_send_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_send_read(%struct.fuse_io_args* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_io_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.fuse_file*, align 8
  %12 = alloca %struct.fuse_conn*, align 8
  store %struct.fuse_io_args* %0, %struct.fuse_io_args** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %14 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %10, align 8
  %20 = load %struct.file*, %struct.file** %10, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.fuse_file*, %struct.fuse_file** %21, align 8
  store %struct.fuse_file* %22, %struct.fuse_file** %11, align 8
  %23 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %24 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %23, i32 0, i32 0
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %24, align 8
  store %struct.fuse_conn* %25, %struct.fuse_conn** %12, align 8
  %26 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %27 = load %struct.file*, %struct.file** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @FUSE_READ, align 4
  %31 = call i32 @fuse_read_args_fill(%struct.fuse_io_args* %26, %struct.file* %27, i32 %28, i64 %29, i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %4
  %35 = load i32, i32* @FUSE_READ_LOCKOWNER, align 4
  %36 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %37 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %42, i32* %43)
  %45 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %46 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  br label %49

49:                                               ; preds = %34, %4
  %50 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %51 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %58 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @fuse_async_req_send(%struct.fuse_conn* %57, %struct.fuse_io_args* %58, i64 %59)
  store i32 %60, i32* %5, align 4
  br label %67

61:                                               ; preds = %49
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %63 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %64 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @fuse_simple_request(%struct.fuse_conn* %62, i32* %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @fuse_read_args_fill(%struct.fuse_io_args*, %struct.file*, i32, i64, i32) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32*) #1

declare dso_local i32 @fuse_async_req_send(%struct.fuse_conn*, %struct.fuse_io_args*, i64) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
