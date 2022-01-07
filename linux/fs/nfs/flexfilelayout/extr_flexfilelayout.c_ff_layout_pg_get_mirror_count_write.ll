; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_pg_get_mirror_count_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_pg_get_mirror_count_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32, i32 }
%struct.nfs_page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@IOMODE_RW = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @ff_layout_pg_get_mirror_count_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_pg_get_mirror_count_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  %6 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %15 = call i32 @nfs_req_openctx(%struct.nfs_page* %14)
  %16 = load i32, i32* @NFS4_MAX_UINT64, align 4
  %17 = load i32, i32* @IOMODE_RW, align 4
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call i32* @pnfs_update_layout(i32 %13, i32 %15, i32 0, i32 %16, i32 %17, i32 0, i32 %18)
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %10
  %28 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  %32 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %65

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @FF_LAYOUT_MIRROR_COUNT(i32* %45)
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %37
  %48 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NFS4_MAX_UINT64, align 4
  %52 = load i32, i32* @IOMODE_RW, align 4
  %53 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %54 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_2__* @NFS_I(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @trace_pnfs_mds_fallback_pg_get_mirror_count(i32 %50, i32 0, i32 %51, i32 %52, i32 %58, i32* %61)
  %63 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %64 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %63)
  br label %65

65:                                               ; preds = %47, %27
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @pnfs_update_layout(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @FF_LAYOUT_MIRROR_COUNT(i32*) #1

declare dso_local i32 @trace_pnfs_mds_fallback_pg_get_mirror_count(i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(i32) #1

declare dso_local i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
