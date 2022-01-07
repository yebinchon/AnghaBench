; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_do_immediate_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_do_immediate_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, i32 }

@FLUSH_DAT_BIT = common dso_local global i32 0, align 4
@SC_FLUSH_DAT = common dso_local global i32 0, align 4
@SC_FLUSH_FILE = common dso_local global i32 0, align 4
@FLUSH_FILE_BIT = common dso_local global i32 0, align 4
@NILFS_SC_PRIOR_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*)* @nilfs_segctor_do_immediate_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %5 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %4, i32 0, i32 2
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %8 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @SC_FLUSH_DAT, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @SC_FLUSH_FILE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %3, align 4
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %20 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %19, i32 0, i32 2
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %17
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %25, i32 %26)
  %28 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %29 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %28, i32 0, i32 2
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SC_FLUSH_FILE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @FLUSH_FILE_BIT, align 4
  %36 = xor i32 %35, -1
  br label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %39 = xor i32 %38, -1
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %43 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %47 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %40, %17
  %50 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %51 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %52 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %51, i32 0, i32 1
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
