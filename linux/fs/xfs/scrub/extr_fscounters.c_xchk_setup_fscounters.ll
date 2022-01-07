; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_fscounters.c_xchk_setup_fscounters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_fscounters.c_xchk_setup_fscounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.xchk_fscounters* }
%struct.xchk_fscounters = type { i32, i32 }
%struct.xfs_inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_fscounters(%struct.xfs_scrub* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xchk_fscounters*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %8 = call %struct.xchk_fscounters* @kmem_zalloc(i32 8, i32 0)
  %9 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %9, i32 0, i32 1
  store %struct.xchk_fscounters* %8, %struct.xchk_fscounters** %10, align 8
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 1
  %13 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %12, align 8
  %14 = icmp ne %struct.xchk_fscounters* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 1
  %21 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %20, align 8
  store %struct.xchk_fscounters* %21, %struct.xchk_fscounters** %6, align 8
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %6, align 8
  %26 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %25, i32 0, i32 1
  %27 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %6, align 8
  %28 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %27, i32 0, i32 0
  %29 = call i32 @xfs_icount_range(i32 %24, i32* %26, i32* %28)
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %31 = call i32 @xchk_fscount_warmup(%struct.xfs_scrub* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %18
  %37 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %38 = call i32 @xchk_stop_reaping(%struct.xfs_scrub* %37)
  %39 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %40 = call i32 @xchk_trans_alloc(%struct.xfs_scrub* %39, i32 0)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %34, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.xchk_fscounters* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_icount_range(i32, i32*, i32*) #1

declare dso_local i32 @xchk_fscount_warmup(%struct.xfs_scrub*) #1

declare dso_local i32 @xchk_stop_reaping(%struct.xfs_scrub*) #1

declare dso_local i32 @xchk_trans_alloc(%struct.xfs_scrub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
