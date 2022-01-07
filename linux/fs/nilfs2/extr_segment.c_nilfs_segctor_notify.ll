; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_notify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SC_LSEG_SR = common dso_local global i32 0, align 4
@NILFS_SEGCTOR_COMMIT = common dso_local global i32 0, align 4
@SC_FLUSH_FILE = common dso_local global i32 0, align 4
@FLUSH_FILE_BIT = common dso_local global i32 0, align 4
@SC_FLUSH_DAT = common dso_local global i32 0, align 4
@FLUSH_DAT_BIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, i32, i32)* @nilfs_segctor_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_notify(%struct.nilfs_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %8 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SC_LSEG_SR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %17 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %21 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %24 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nilfs_segctor_wakeup(%struct.nilfs_sc_info* %25, i32 %26)
  %28 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  br label %73

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SC_FLUSH_FILE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @FLUSH_FILE_BIT, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %38 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %53

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SC_FLUSH_DAT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %49 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %55 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32, i32* @jiffies, align 4
  %62 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %63 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @time_before(i32 %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %69, i32 0, i32 2
  %71 = call i32 @add_timer(%struct.TYPE_2__* %70)
  br label %72

72:                                               ; preds = %68, %60, %53
  br label %73

73:                                               ; preds = %72, %13
  %74 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %75 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nilfs_segctor_wakeup(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
