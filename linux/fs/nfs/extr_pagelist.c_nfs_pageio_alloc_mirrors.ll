; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_alloc_mirrors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_alloc_mirrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_mirror = type { i32 }
%struct.nfs_pageio_descriptor = type { %struct.nfs_pgio_mirror*, i32, %struct.nfs_pgio_mirror* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_pgio_mirror* (%struct.nfs_pageio_descriptor*, i32)* @nfs_pageio_alloc_mirrors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_pgio_mirror* @nfs_pageio_alloc_mirrors(%struct.nfs_pageio_descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_pgio_mirror*, align 8
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_pgio_mirror*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %8, i32 0, i32 0
  %10 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %9, align 8
  %11 = call i32 @kfree(%struct.nfs_pgio_mirror* %10)
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %12, i32 0, i32 0
  store %struct.nfs_pgio_mirror* null, %struct.nfs_pgio_mirror** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %17, i32 0, i32 2
  %19 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %18, align 8
  store %struct.nfs_pgio_mirror* %19, %struct.nfs_pgio_mirror** %3, align 8
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nfs_pgio_mirror* @kmalloc_array(i32 %21, i32 4, i32 %22)
  store %struct.nfs_pgio_mirror* %23, %struct.nfs_pgio_mirror** %6, align 8
  %24 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %25 = icmp ne %struct.nfs_pgio_mirror* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %32, i64 %34
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @nfs_pageio_mirror_init(%struct.nfs_pgio_mirror* %35, i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %45 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %46 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %45, i32 0, i32 0
  store %struct.nfs_pgio_mirror* %44, %struct.nfs_pgio_mirror** %46, align 8
  br label %47

47:                                               ; preds = %43, %20
  %48 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  store %struct.nfs_pgio_mirror* %48, %struct.nfs_pgio_mirror** %3, align 8
  br label %49

49:                                               ; preds = %47, %16
  %50 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %3, align 8
  ret %struct.nfs_pgio_mirror* %50
}

declare dso_local i32 @kfree(%struct.nfs_pgio_mirror*) #1

declare dso_local %struct.nfs_pgio_mirror* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @nfs_pageio_mirror_init(%struct.nfs_pgio_mirror*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
