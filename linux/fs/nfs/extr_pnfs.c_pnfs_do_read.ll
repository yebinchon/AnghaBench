; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { %struct.pnfs_layout_segment*, %struct.rpc_call_ops* }
%struct.pnfs_layout_segment = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.nfs_pgio_header = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pgio_header*)* }
%struct.nfs_pgio_mirror = type { i32, i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*)* @pnfs_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_do_read(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca %struct.rpc_call_ops*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_pgio_mirror*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %4, align 8
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %9, i32 0, i32 1
  %11 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %10, align 8
  store %struct.rpc_call_ops* %11, %struct.rpc_call_ops** %5, align 8
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %12, i32 0, i32 0
  %14 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %13, align 8
  store %struct.pnfs_layout_segment* %14, %struct.pnfs_layout_segment** %6, align 8
  %15 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %16 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %5, align 8
  %17 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %18 = call i32 @pnfs_try_to_read_data(%struct.nfs_pgio_header* %15, %struct.rpc_call_ops* %16, %struct.pnfs_layout_segment* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %49 [
    i32 129, label %20
    i32 130, label %24
    i32 128, label %25
  ]

20:                                               ; preds = %2
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %23 = call i32 @pnfs_read_through_mds(%struct.nfs_pageio_descriptor* %21, %struct.nfs_pgio_header* %22)
  br label %24

24:                                               ; preds = %2, %20
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 2
  %29 = call i32 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %33 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %32)
  store %struct.nfs_pgio_mirror* %33, %struct.nfs_pgio_mirror** %8, align 8
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 1
  %36 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %36, i32 0, i32 1
  %38 = call i32 @list_splice_init(i32* %35, i32* %37)
  %39 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %45, align 8
  %47 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %48 = call i32 %46(%struct.nfs_pgio_header* %47)
  br label %49

49:                                               ; preds = %41, %2, %24
  ret void
}

declare dso_local i32 @pnfs_try_to_read_data(%struct.nfs_pgio_header*, %struct.rpc_call_ops*, %struct.pnfs_layout_segment*) #1

declare dso_local i32 @pnfs_read_through_mds(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
