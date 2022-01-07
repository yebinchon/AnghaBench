; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_fsinumbers_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_fsinumbers_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ibulk = type { i32 }
%struct.xfs_inumbers = type { i32 }
%struct.xfs_inogrp = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fsinumbers_fmt(%struct.xfs_ibulk* %0, %struct.xfs_inumbers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ibulk*, align 8
  %5 = alloca %struct.xfs_inumbers*, align 8
  %6 = alloca %struct.xfs_inogrp, align 4
  store %struct.xfs_ibulk* %0, %struct.xfs_ibulk** %4, align 8
  store %struct.xfs_inumbers* %1, %struct.xfs_inumbers** %5, align 8
  %7 = load %struct.xfs_inumbers*, %struct.xfs_inumbers** %5, align 8
  %8 = call i32 @xfs_inumbers_to_inogrp(%struct.xfs_inogrp* %6, %struct.xfs_inumbers* %7)
  %9 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @copy_to_user(i32 %11, %struct.xfs_inogrp* %6, i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %19 = call i32 @xfs_ibulk_advance(%struct.xfs_ibulk* %18, i32 4)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @xfs_inumbers_to_inogrp(%struct.xfs_inogrp*, %struct.xfs_inumbers*) #1

declare dso_local i64 @copy_to_user(i32, %struct.xfs_inogrp*, i32) #1

declare dso_local i32 @xfs_ibulk_advance(%struct.xfs_ibulk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
