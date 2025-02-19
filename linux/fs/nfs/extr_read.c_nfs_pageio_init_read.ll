; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_pageio_init_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_pageio_init_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_ops = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }
%struct.nfs_server = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs_pageio_ops* }

@nfs_pgio_rw_ops = common dso_local global %struct.nfs_pageio_ops zeroinitializer, align 4
@nfs_rw_read_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pageio_init_read(%struct.nfs_pageio_descriptor* %0, %struct.inode* %1, i32 %2, %struct.nfs_pgio_completion_ops* %3) #0 {
  %5 = alloca %struct.nfs_pageio_descriptor*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_pgio_completion_ops*, align 8
  %9 = alloca %struct.nfs_server*, align 8
  %10 = alloca %struct.nfs_pageio_ops*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nfs_pgio_completion_ops* %3, %struct.nfs_pgio_completion_ops** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %9, align 8
  store %struct.nfs_pageio_ops* @nfs_pgio_rw_ops, %struct.nfs_pageio_ops** %10, align 8
  %13 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load %struct.nfs_pageio_ops*, %struct.nfs_pageio_ops** %10, align 8
  %16 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %8, align 8
  %17 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nfs_pageio_init(%struct.nfs_pageio_descriptor* %13, %struct.inode* %14, %struct.nfs_pageio_ops* %15, %struct.nfs_pgio_completion_ops* %16, i32* @nfs_rw_read_ops, i32 %19, i32 0)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_pageio_init(%struct.nfs_pageio_descriptor*, %struct.inode*, %struct.nfs_pageio_ops*, %struct.nfs_pgio_completion_ops*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
