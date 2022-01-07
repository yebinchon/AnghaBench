; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i32, i32 }
%struct.nfs_pgio_header = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@pnfs_readhdr_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnfs_generic_pg_readpages(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  %6 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nfs_pgio_header* @nfs_pgio_header_alloc(i32 %8)
  store %struct.nfs_pgio_header* %9, %struct.nfs_pgio_header** %4, align 8
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %11 = icmp ne %struct.nfs_pgio_header* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %23 = load i32, i32* @pnfs_readhdr_free, align 4
  %24 = call i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %21, %struct.nfs_pgio_header* %22, i32 %23)
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pnfs_get_lseg(i32 %27)
  %29 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %33 = call i32 @nfs_generic_pgio(%struct.nfs_pageio_descriptor* %31, %struct.nfs_pgio_header* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %20
  %37 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %38 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %39 = call i32 @pnfs_do_read(%struct.nfs_pageio_descriptor* %37, %struct.nfs_pgio_header* %38)
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.nfs_pgio_header* @nfs_pgio_header_alloc(i32) #1

declare dso_local i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @pnfs_get_lseg(i32) #1

declare dso_local i32 @nfs_generic_pgio(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @pnfs_do_read(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
