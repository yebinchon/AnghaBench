; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_set_pgio_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_set_pgio_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i32, i32, i32, i32 }

@NFS_IOHDR_EOF = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_set_pgio_error(%struct.nfs_pgio_header* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NFS_IOHDR_EOF, align 4
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 3
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 3
  %29 = call i32 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %18
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
