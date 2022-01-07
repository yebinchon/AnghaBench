; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_init_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_init_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32, i32 }
%struct.nfs_page = type { i32 }

@IOMODE_RW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_generic_pg_init_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %8 = call i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor* %7)
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %10 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %11 = call i32 @pnfs_generic_pg_check_range(%struct.nfs_pageio_descriptor* %9, %struct.nfs_page* %10)
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %21 = call i32 @nfs_req_openctx(%struct.nfs_page* %20)
  %22 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %23 = call i32 @req_offset(%struct.nfs_page* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IOMODE_RW, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @pnfs_update_layout(i32 %19, i32 %21, i32 %23, i32 %24, i32 %25, i32 0, i32 %26)
  %28 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %16
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  %40 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %43 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %53

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %52 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %51)
  br label %53

53:                                               ; preds = %35, %50, %45
  ret void
}

declare dso_local i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @pnfs_generic_pg_check_range(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32* @pnfs_update_layout(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i32 @req_offset(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
