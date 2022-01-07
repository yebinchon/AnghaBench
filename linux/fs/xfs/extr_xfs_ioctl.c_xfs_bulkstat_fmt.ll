; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_bulkstat_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_bulkstat_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ibulk = type { i32 }
%struct.xfs_bulkstat = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_ibulk*, %struct.xfs_bulkstat*)* @xfs_bulkstat_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_bulkstat_fmt(%struct.xfs_ibulk* %0, %struct.xfs_bulkstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ibulk*, align 8
  %5 = alloca %struct.xfs_bulkstat*, align 8
  store %struct.xfs_ibulk* %0, %struct.xfs_ibulk** %4, align 8
  store %struct.xfs_bulkstat* %1, %struct.xfs_bulkstat** %5, align 8
  %6 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %5, align 8
  %10 = call i64 @copy_to_user(i32 %8, %struct.xfs_bulkstat* %9, i32 4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %17 = call i32 @xfs_ibulk_advance(%struct.xfs_ibulk* %16, i32 4)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @copy_to_user(i32, %struct.xfs_bulkstat*, i32) #1

declare dso_local i32 @xfs_ibulk_advance(%struct.xfs_ibulk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
