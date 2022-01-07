; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_pg_init_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_pg_init_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32, i32, i32 }
%struct.nfs_page = type { i32 }
%struct.nfs_commit_info = type { i32 }

@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@IOMODE_RW = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @filelayout_pg_init_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filelayout_pg_init_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.nfs_commit_info, align 4
  %6 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %7 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %8 = call i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor* %7)
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %18 = call i32 @nfs_req_openctx(%struct.nfs_page* %17)
  %19 = load i32, i32* @NFS4_MAX_UINT64, align 4
  %20 = load i32, i32* @IOMODE_RW, align 4
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call i32* @fl_pnfs_update_layout(i32 %16, i32 %18, i32 0, i32 %19, i32 %20, i32 0, i32 %21)
  %23 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @IS_ERR(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %13
  %31 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  %35 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %38 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %72

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %69

46:                                               ; preds = %40
  %47 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %48 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @nfs_init_cinfo(%struct.nfs_commit_info* %5, i32 %49, i32 %52)
  %54 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %55 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @GFP_NOFS, align 4
  %58 = call i32 @filelayout_alloc_commit_info(i32* %56, %struct.nfs_commit_info* %5, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %63 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @pnfs_put_lseg(i32* %64)
  %66 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %67 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %69

68:                                               ; preds = %46
  br label %72

69:                                               ; preds = %61, %45
  %70 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %71 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %70)
  br label %72

72:                                               ; preds = %69, %68, %30
  ret void
}

declare dso_local i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32* @fl_pnfs_update_layout(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfs_init_cinfo(%struct.nfs_commit_info*, i32, i32) #1

declare dso_local i32 @filelayout_alloc_commit_info(i32*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @pnfs_put_lseg(i32*) #1

declare dso_local i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
