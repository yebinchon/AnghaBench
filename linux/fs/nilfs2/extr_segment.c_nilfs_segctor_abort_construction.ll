; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_abort_construction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_abort_construction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.the_nilfs = type { i32 }

@logs = common dso_local global i32 0, align 4
@NILFS_CF_SUFREED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.the_nilfs*, i32)* @nilfs_segctor_abort_construction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_abort_construction(%struct.nilfs_sc_info* %0, %struct.the_nilfs* %1, i32 %2) #0 {
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @logs, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %11 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %10, i32 0, i32 4
  %12 = call i32 @list_splice_tail_init(i32* %11, i32* @logs)
  %13 = call i32 @nilfs_wait_on_logs(i32* @logs)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ %14, %16 ], [ %18, %17 ]
  %21 = call i32 @nilfs_abort_logs(i32* @logs, i32 %20)
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %23 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %22, i32 0, i32 3
  %24 = call i32 @list_splice_tail_init(i32* %23, i32* @logs)
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nilfs_cancel_segusage(i32* @logs, i32 %27)
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %30 = call i32 @nilfs_free_incomplete_logs(i32* @logs, %struct.the_nilfs* %29)
  %31 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NILFS_CF_SUFREED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %19
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %43 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nilfs_sufile_cancel_freev(i32 %41, i32 %44, i32 %47, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @WARN_ON(i32 %49)
  br label %51

51:                                               ; preds = %38, %19
  %52 = call i32 @nilfs_destroy_logs(i32* @logs)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @nilfs_wait_on_logs(i32*) #1

declare dso_local i32 @nilfs_abort_logs(i32*, i32) #1

declare dso_local i32 @nilfs_cancel_segusage(i32*, i32) #1

declare dso_local i32 @nilfs_free_incomplete_logs(i32*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_sufile_cancel_freev(i32, i32, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_destroy_logs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
