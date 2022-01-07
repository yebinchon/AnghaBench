; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { %struct.pnfs_layout_segment*, %struct.rpc_call_ops* }
%struct.pnfs_layout_segment = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.nfs_pgio_header = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pgio_header*)* }
%struct.nfs_pgio_mirror = type { i32, i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*, i32)* @pnfs_do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_do_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_call_ops*, align 8
  %8 = alloca %struct.pnfs_layout_segment*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_pgio_mirror*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %11, i32 0, i32 1
  %13 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %12, align 8
  store %struct.rpc_call_ops* %13, %struct.rpc_call_ops** %7, align 8
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 0
  %16 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %15, align 8
  store %struct.pnfs_layout_segment* %16, %struct.pnfs_layout_segment** %8, align 8
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %18 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %7, align 8
  %19 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @pnfs_try_to_write_data(%struct.nfs_pgio_header* %17, %struct.rpc_call_ops* %18, %struct.pnfs_layout_segment* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %52 [
    i32 129, label %23
    i32 130, label %27
    i32 128, label %28
  ]

23:                                               ; preds = %3
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %26 = call i32 @pnfs_write_through_mds(%struct.nfs_pageio_descriptor* %24, %struct.nfs_pgio_header* %25)
  br label %27

27:                                               ; preds = %3, %23
  br label %52

28:                                               ; preds = %3
  %29 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %30, i32 0, i32 2
  %32 = call i32 @test_and_set_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %36 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %35)
  store %struct.nfs_pgio_mirror* %36, %struct.nfs_pgio_mirror** %10, align 8
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 1
  %39 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %10, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %39, i32 0, i32 1
  %41 = call i32 @list_splice_init(i32* %38, i32* %40)
  %42 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %10, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %28
  %45 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %48, align 8
  %50 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %51 = call i32 %49(%struct.nfs_pgio_header* %50)
  br label %52

52:                                               ; preds = %44, %3, %27
  ret void
}

declare dso_local i32 @pnfs_try_to_write_data(%struct.nfs_pgio_header*, %struct.rpc_call_ops*, %struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @pnfs_write_through_mds(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
