; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayoutdev.c_nfs4_fl_free_deviceid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayoutdev.c_nfs4_fl_free_deviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.nfs4_file_layout_dsaddr = type { i32, i32, %struct.nfs4_pnfs_ds**, %struct.TYPE_3__ }
%struct.nfs4_pnfs_ds = type { i32 }
%struct.TYPE_3__ = type { i32 }

@id_node = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_fl_free_deviceid(%struct.nfs4_file_layout_dsaddr* %0) #0 {
  %2 = alloca %struct.nfs4_file_layout_dsaddr*, align 8
  %3 = alloca %struct.nfs4_pnfs_ds*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_file_layout_dsaddr* %0, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %5 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @nfs4_print_deviceid(i32* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %17 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %16, i32 0, i32 2
  %18 = load %struct.nfs4_pnfs_ds**, %struct.nfs4_pnfs_ds*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %18, i64 %20
  %22 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %21, align 8
  store %struct.nfs4_pnfs_ds* %22, %struct.nfs4_pnfs_ds** %3, align 8
  %23 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %3, align 8
  %24 = icmp ne %struct.nfs4_pnfs_ds* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %3, align 8
  %27 = call i32 @nfs4_pnfs_ds_put(%struct.nfs4_pnfs_ds* %26)
  br label %28

28:                                               ; preds = %25, %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %34 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @id_node, i32 0, i32 0), align 4
  %39 = call i32 @kfree_rcu(%struct.nfs4_file_layout_dsaddr* %37, i32 %38)
  ret void
}

declare dso_local i32 @nfs4_print_deviceid(i32*) #1

declare dso_local i32 @nfs4_pnfs_ds_put(%struct.nfs4_pnfs_ds*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfree_rcu(%struct.nfs4_file_layout_dsaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
