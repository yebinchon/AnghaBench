; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_fsbulkstat_one_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_fsbulkstat_one_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ibulk = type { i32, i32 }
%struct.xfs_bulkstat = type { i32 }
%struct.xfs_bstat = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fsbulkstat_one_fmt(%struct.xfs_ibulk* %0, %struct.xfs_bulkstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ibulk*, align 8
  %5 = alloca %struct.xfs_bulkstat*, align 8
  %6 = alloca %struct.xfs_bstat, align 4
  store %struct.xfs_ibulk* %0, %struct.xfs_ibulk** %4, align 8
  store %struct.xfs_bulkstat* %1, %struct.xfs_bulkstat** %5, align 8
  %7 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %5, align 8
  %11 = call i32 @xfs_bulkstat_to_bstat(i32 %9, %struct.xfs_bstat* %6, %struct.xfs_bulkstat* %10)
  %12 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @copy_to_user(i32 %14, %struct.xfs_bstat* %6, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %22 = call i32 @xfs_ibulk_advance(%struct.xfs_ibulk* %21, i32 4)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @xfs_bulkstat_to_bstat(i32, %struct.xfs_bstat*, %struct.xfs_bulkstat*) #1

declare dso_local i64 @copy_to_user(i32, %struct.xfs_bstat*, i32) #1

declare dso_local i32 @xfs_ibulk_advance(%struct.xfs_ibulk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
