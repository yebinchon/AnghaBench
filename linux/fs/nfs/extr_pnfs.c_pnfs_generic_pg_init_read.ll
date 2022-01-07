; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_init_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_init_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32, i32, i32* }
%struct.nfs_page = type { i64 }

@IOMODE_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_generic_pg_init_read(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca i64, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %6 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %10 = call i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor* %9)
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %12 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %13 = call i32 @pnfs_generic_pg_check_range(%struct.nfs_pageio_descriptor* %11, %struct.nfs_page* %12)
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @i_size_read(i32 %26)
  %28 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %29 = call i64 @req_offset(%struct.nfs_page* %28)
  %30 = sub nsw i64 %27, %29
  store i64 %30, i64* %5, align 8
  br label %36

31:                                               ; preds = %18
  %32 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %33 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @nfs_dreq_bytes_left(i32* %34)
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %31, %23
  %37 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %38 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %41 = call i32 @nfs_req_openctx(%struct.nfs_page* %40)
  %42 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %43 = call i64 @req_offset(%struct.nfs_page* %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @IOMODE_READ, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @pnfs_update_layout(i32 %39, i32 %41, i64 %43, i64 %44, i32 %45, i32 0, i32 %46)
  %48 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %49 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %36
  %56 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %57 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  %60 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %61 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %63 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %73

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %67 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %72 = call i32 @nfs_pageio_reset_read_mds(%struct.nfs_pageio_descriptor* %71)
  br label %73

73:                                               ; preds = %55, %70, %65
  ret void
}

declare dso_local i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @pnfs_generic_pg_check_range(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i64 @nfs_dreq_bytes_left(i32*) #1

declare dso_local i32* @pnfs_update_layout(i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfs_pageio_reset_read_mds(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
