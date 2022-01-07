; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_pg_init_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_pg_init_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NFS_LSEG_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @bl_pg_init_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bl_pg_init_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %6 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %7 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i32 @is_aligned_req(%struct.nfs_pageio_descriptor* %6, %struct.nfs_page* %7, i32 %8, i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %13 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %12)
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pnfs_num_cont_bytes(i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %14
  %28 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @nfs_dreq_bytes_left(i32* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %34 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pnfs_generic_pg_init_write(%struct.nfs_pageio_descriptor* %33, %struct.nfs_page* %34, i32 %35)
  %37 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %38 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %32
  %42 = load i32, i32* @NFS_LSEG_UNAVAILABLE, align 4
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %42, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %54 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 @pnfs_error_mark_layout_for_return(i32 %52, %struct.TYPE_3__* %55)
  %57 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %58 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @pnfs_set_lo_fail(%struct.TYPE_3__* %59)
  %61 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %62 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %61)
  br label %63

63:                                               ; preds = %11, %49, %41, %32
  ret void
}

declare dso_local i32 @is_aligned_req(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, i32, i32) #1

declare dso_local i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @pnfs_num_cont_bytes(i32, i32) #1

declare dso_local i32 @nfs_dreq_bytes_left(i32*) #1

declare dso_local i32 @pnfs_generic_pg_init_write(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pnfs_error_mark_layout_for_return(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pnfs_set_lo_fail(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
