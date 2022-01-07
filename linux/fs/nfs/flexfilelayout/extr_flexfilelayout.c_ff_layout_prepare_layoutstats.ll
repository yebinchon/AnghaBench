; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_prepare_layoutstats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_prepare_layoutstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs42_layoutstat_args = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs4_flexfile_layout = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PNFS_LAYOUTSTATS_MAXDEV = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs42_layoutstat_args*)* @ff_layout_prepare_layoutstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_prepare_layoutstats(%struct.nfs42_layoutstat_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs42_layoutstat_args*, align 8
  %4 = alloca %struct.nfs4_flexfile_layout*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs42_layoutstat_args* %0, %struct.nfs42_layoutstat_args** %3, align 8
  %6 = load i32, i32* @PNFS_LAYOUTSTATS_MAXDEV, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GFP_NOIO, align 4
  %9 = call i32* @kmalloc_array(i32 %7, i32 4, i32 %8)
  %10 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %11 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %13 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %21 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %26 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call %struct.TYPE_3__* @NFS_I(%struct.TYPE_4__* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.nfs4_flexfile_layout* @FF_LAYOUT_FROM_HDR(i32 %30)
  store %struct.nfs4_flexfile_layout* %31, %struct.nfs4_flexfile_layout** %4, align 8
  %32 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %4, align 8
  %33 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %32, i32 0, i32 0
  %34 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %35 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ff_layout_mirror_prepare_stats(i32* %33, i32* %37, i32 %38)
  %40 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %41 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %43 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %48 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %19
  %52 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %53 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %3, align 8
  %57 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %51, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_flexfile_layout* @FF_LAYOUT_FROM_HDR(i32) #1

declare dso_local %struct.TYPE_3__* @NFS_I(%struct.TYPE_4__*) #1

declare dso_local i32 @ff_layout_mirror_prepare_stats(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
