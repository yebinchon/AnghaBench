; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_get_ds_cred.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_get_ds_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pnfs_layout_range = type { i32 }
%struct.cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @ff_layout_get_ds_cred(%struct.nfs4_ff_layout_mirror* %0, %struct.pnfs_layout_range* %1, %struct.cred* %2) #0 {
  %4 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %5 = alloca %struct.pnfs_layout_range*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.nfs4_ff_layout_mirror* %0, %struct.nfs4_ff_layout_mirror** %4, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %5, align 8
  store %struct.cred* %2, %struct.cred** %6, align 8
  %8 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %9 = icmp ne %struct.nfs4_ff_layout_mirror* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %10
  %21 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %22 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %23 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.cred* @ff_layout_get_mirror_cred(%struct.nfs4_ff_layout_mirror* %21, i32 %24)
  store %struct.cred* %25, %struct.cred** %7, align 8
  %26 = load %struct.cred*, %struct.cred** %7, align 8
  %27 = icmp ne %struct.cred* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.cred*, %struct.cred** %6, align 8
  %30 = call %struct.cred* @get_cred(%struct.cred* %29)
  store %struct.cred* %30, %struct.cred** %7, align 8
  br label %31

31:                                               ; preds = %28, %20
  br label %35

32:                                               ; preds = %10, %3
  %33 = load %struct.cred*, %struct.cred** %6, align 8
  %34 = call %struct.cred* @get_cred(%struct.cred* %33)
  store %struct.cred* %34, %struct.cred** %7, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.cred*, %struct.cred** %7, align 8
  ret %struct.cred* %36
}

declare dso_local %struct.cred* @ff_layout_get_mirror_cred(%struct.nfs4_ff_layout_mirror*, i32) #1

declare dso_local %struct.cred* @get_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
