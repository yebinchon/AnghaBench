; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_enable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DQUOT_SUSPENDED = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4
@dq_state_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_enable(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DQUOT_SUSPENDED, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %10, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = call i32 @down_read_trylock(i32* %19)
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.super_block*, %struct.super_block** %10, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %79

31:                                               ; preds = %27
  %32 = load %struct.super_block*, %struct.super_block** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @sb_has_quota_loaded(%struct.super_block* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.super_block*, %struct.super_block** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @sb_has_quota_usage_enabled(%struct.super_block* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %79

49:                                               ; preds = %41, %36
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.super_block*, %struct.super_block** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @sb_has_quota_limits_enabled(%struct.super_block* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %79

62:                                               ; preds = %54, %49
  %63 = call i32 @spin_lock(i32* @dq_state_lock)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dquot_state_flag(i32 %64, i32 %65)
  %67 = load %struct.super_block*, %struct.super_block** %10, align 8
  %68 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = call i32 @spin_unlock(i32* @dq_state_lock)
  store i32 0, i32* %5, align 4
  br label %79

73:                                               ; preds = %31
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @vfs_load_quota_inode(%struct.inode* %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %62, %59, %46, %30
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local i64 @sb_has_quota_usage_enabled(%struct.super_block*, i32) #1

declare dso_local i64 @sb_has_quota_limits_enabled(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dquot_state_flag(i32, i32) #1

declare dso_local %struct.TYPE_2__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vfs_load_quota_inode(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
