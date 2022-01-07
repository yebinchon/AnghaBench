; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_pageio_reset_write_mds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_pageio_reset_write_mds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.nfs_pageio_descriptor*)* }
%struct.nfs_pageio_descriptor = type { i32, %struct.nfs_pgio_mirror*, %struct.TYPE_3__* }
%struct.nfs_pgio_mirror = type { i32 }
%struct.TYPE_4__ = type { i32 }

@nfs_pgio_rw_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca %struct.nfs_pageio_descriptor*, align 8
  %3 = alloca %struct.nfs_pgio_mirror*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %2, align 8
  %4 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nfs_pageio_descriptor*)*, i32 (%struct.nfs_pageio_descriptor*)** %12, align 8
  %14 = icmp ne i32 (%struct.nfs_pageio_descriptor*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nfs_pageio_descriptor*)*, i32 (%struct.nfs_pageio_descriptor*)** %19, align 8
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %22 = call i32 %20(%struct.nfs_pageio_descriptor* %21)
  br label %23

23:                                               ; preds = %15, %8, %1
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %24, i32 0, i32 2
  store %struct.TYPE_3__* @nfs_pgio_rw_ops, %struct.TYPE_3__** %25, align 8
  %26 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %27 = call i32 @nfs_pageio_stop_mirroring(%struct.nfs_pageio_descriptor* %26)
  %28 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %28, i32 0, i32 1
  %30 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %29, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %30, i64 0
  store %struct.nfs_pgio_mirror* %31, %struct.nfs_pgio_mirror** %3, align 8
  %32 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_4__* @NFS_SERVER(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @nfs_pageio_stop_mirroring(%struct.nfs_pageio_descriptor*) #1

declare dso_local %struct.TYPE_4__* @NFS_SERVER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
