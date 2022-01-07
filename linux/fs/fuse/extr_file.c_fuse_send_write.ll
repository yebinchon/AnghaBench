; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.fuse_write_in }
%struct.TYPE_7__ = type { i64 }
%struct.fuse_write_in = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.kiocb* }
%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }

@FUSE_WRITE_LOCKOWNER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_io_args*, i32, i64, i32*)* @fuse_send_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_send_write(%struct.fuse_io_args* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_io_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kiocb*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.fuse_file*, align 8
  %13 = alloca %struct.fuse_conn*, align 8
  %14 = alloca %struct.fuse_write_in*, align 8
  %15 = alloca i32, align 4
  store %struct.fuse_io_args* %0, %struct.fuse_io_args** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %17 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.kiocb*, %struct.kiocb** %19, align 8
  store %struct.kiocb* %20, %struct.kiocb** %10, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load %struct.file*, %struct.file** %22, align 8
  store %struct.file* %23, %struct.file** %11, align 8
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.fuse_file*, %struct.fuse_file** %25, align 8
  store %struct.fuse_file* %26, %struct.fuse_file** %12, align 8
  %27 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 0
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %28, align 8
  store %struct.fuse_conn* %29, %struct.fuse_conn** %13, align 8
  %30 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %31 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store %struct.fuse_write_in* %32, %struct.fuse_write_in** %14, align 8
  %33 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %34 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @fuse_write_args_fill(%struct.fuse_io_args* %33, %struct.fuse_file* %34, i32 %35, i64 %36)
  %38 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %39 = call i32 @fuse_write_flags(%struct.kiocb* %38)
  %40 = load %struct.fuse_write_in*, %struct.fuse_write_in** %14, align 8
  %41 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %4
  %45 = load i32, i32* @FUSE_WRITE_LOCKOWNER, align 4
  %46 = load %struct.fuse_write_in*, %struct.fuse_write_in** %14, align 8
  %47 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %50, i32* %51)
  %53 = load %struct.fuse_write_in*, %struct.fuse_write_in** %14, align 8
  %54 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %4
  %56 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %57 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %64 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @fuse_async_req_send(%struct.fuse_conn* %63, %struct.fuse_io_args* %64, i64 %65)
  store i32 %66, i32* %5, align 4
  br label %100

67:                                               ; preds = %55
  %68 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %69 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %70 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @fuse_simple_request(%struct.fuse_conn* %68, i32* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %77 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %75, %67
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = sext i32 %87 to i64
  br label %97

91:                                               ; preds = %86
  %92 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %93 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  br label %97

97:                                               ; preds = %91, %89
  %98 = phi i64 [ %90, %89 ], [ %96, %91 ]
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %62
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @fuse_write_args_fill(%struct.fuse_io_args*, %struct.fuse_file*, i32, i64) #1

declare dso_local i32 @fuse_write_flags(%struct.kiocb*) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32*) #1

declare dso_local i32 @fuse_async_req_send(%struct.fuse_conn*, %struct.fuse_io_args*, i64) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
