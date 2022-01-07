; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { i32, %struct.TYPE_5__, %struct.fuse_args_pages }
%struct.TYPE_5__ = type { i32 }
%struct.fuse_args_pages = type { i64, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 (%struct.fuse_conn*, %struct.TYPE_6__*, i32)* }
%struct.fuse_conn = type opaque
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn.0* }
%struct.fuse_conn.0 = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@FUSE_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_io_args*, %struct.file*)* @fuse_send_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_send_readpages(%struct.fuse_io_args* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.fuse_io_args*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_file*, align 8
  %6 = alloca %struct.fuse_conn.0*, align 8
  %7 = alloca %struct.fuse_args_pages*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fuse_io_args* %0, %struct.fuse_io_args** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  store %struct.fuse_file* %13, %struct.fuse_file** %5, align 8
  %14 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %14, i32 0, i32 0
  %16 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %15, align 8
  store %struct.fuse_conn.0* %16, %struct.fuse_conn.0** %6, align 8
  %17 = load %struct.fuse_io_args*, %struct.fuse_io_args** %3, align 8
  %18 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %17, i32 0, i32 2
  store %struct.fuse_args_pages* %18, %struct.fuse_args_pages** %7, align 8
  %19 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %20 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @page_offset(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %26 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = shl i64 %27, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %31 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %34 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %37 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load %struct.fuse_io_args*, %struct.fuse_io_args** %3, align 8
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @FUSE_READ, align 4
  %44 = call i32 @fuse_read_args_fill(%struct.fuse_io_args* %39, %struct.file* %40, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %46 = call i32 @fuse_get_attr_version(%struct.fuse_conn.0* %45)
  %47 = load %struct.fuse_io_args*, %struct.fuse_io_args** %3, align 8
  %48 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %51 = getelementptr inbounds %struct.fuse_conn.0, %struct.fuse_conn.0* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %2
  %55 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %56 = call i32 @fuse_file_get(%struct.fuse_file* %55)
  %57 = load %struct.fuse_io_args*, %struct.fuse_io_args** %3, align 8
  %58 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %60 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 (%struct.fuse_conn*, %struct.TYPE_6__*, i32)* bitcast (i32 (%struct.fuse_conn.0*, %struct.TYPE_6__*, i32)* @fuse_readpages_end to i32 (%struct.fuse_conn*, %struct.TYPE_6__*, i32)*), i32 (%struct.fuse_conn*, %struct.TYPE_6__*, i32)** %61, align 8
  %62 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %63 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %64 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %63, i32 0, i32 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @fuse_simple_background(%struct.fuse_conn.0* %62, %struct.TYPE_6__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  br label %82

70:                                               ; preds = %54
  br label %76

71:                                               ; preds = %2
  %72 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %73 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %74 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %73, i32 0, i32 1
  %75 = call i32 @fuse_simple_request(%struct.fuse_conn.0* %72, %struct.TYPE_6__* %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %78 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %79 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %78, i32 0, i32 1
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @fuse_readpages_end(%struct.fuse_conn.0* %77, %struct.TYPE_6__* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %69
  ret void
}

declare dso_local i32 @page_offset(i32) #1

declare dso_local i32 @fuse_read_args_fill(%struct.fuse_io_args*, %struct.file*, i32, i64, i32) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn.0*) #1

declare dso_local i32 @fuse_file_get(%struct.fuse_file*) #1

declare dso_local i32 @fuse_readpages_end(%struct.fuse_conn.0*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fuse_simple_background(%struct.fuse_conn.0*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn.0*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
