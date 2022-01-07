; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_clear_dquot_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_clear_dquot_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DQUOT_NOLIST_DIRTY = common dso_local global i32 0, align 4
@DQ_MOD_B = common dso_local global i32 0, align 4
@dq_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @clear_dquot_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_dquot_dirty(%struct.dquot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dquot*, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  %4 = load %struct.dquot*, %struct.dquot** %3, align 8
  %5 = getelementptr inbounds %struct.dquot, %struct.dquot* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_2__* @sb_dqopt(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DQUOT_NOLIST_DIRTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @DQ_MOD_B, align 4
  %15 = load %struct.dquot*, %struct.dquot** %3, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 1
  %17 = call i32 @test_and_clear_bit(i32 %14, i32* %16)
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = call i32 @spin_lock(i32* @dq_list_lock)
  %20 = load i32, i32* @DQ_MOD_B, align 4
  %21 = load %struct.dquot*, %struct.dquot** %3, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 1
  %23 = call i32 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 @spin_unlock(i32* @dq_list_lock)
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.dquot*, %struct.dquot** %3, align 8
  %29 = getelementptr inbounds %struct.dquot, %struct.dquot* %28, i32 0, i32 0
  %30 = call i32 @list_del_init(i32* %29)
  %31 = call i32 @spin_unlock(i32* @dq_list_lock)
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %25, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @sb_dqopt(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
