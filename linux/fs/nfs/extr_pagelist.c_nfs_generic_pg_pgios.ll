; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_generic_pg_pgios.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_generic_pg_pgios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i32, i32, i32 }
%struct.nfs_pgio_header = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nfs_pgio_header_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*)* @nfs_generic_pg_pgios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_generic_pg_pgios(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  %6 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %6, i32 0, i32 3
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
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %23 = load i32, i32* @nfs_pgio_header_free, align 4
  %24 = call i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %21, %struct.nfs_pgio_header* %22, i32 %23)
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %26 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %27 = call i32 @nfs_generic_pgio(%struct.nfs_pageio_descriptor* %25, %struct.nfs_pgio_header* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NFS_CLIENT(i32 %33)
  %35 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NFS_PROTO(i32 %41)
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %47 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nfs_initiate_pgio(i32 %34, %struct.nfs_pgio_header* %35, i32 %38, i32 %42, i32 %45, i32 %48, i32 0)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %30, %20
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.nfs_pgio_header* @nfs_pgio_header_alloc(i32) #1

declare dso_local i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs_generic_pgio(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_initiate_pgio(i32, %struct.nfs_pgio_header*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NFS_CLIENT(i32) #1

declare dso_local i32 @NFS_PROTO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
