; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_mark_dquot_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_mark_dquot_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DQ_ACTIVE_B = common dso_local global i32 0, align 4
@DQUOT_NOLIST_DIRTY = common dso_local global i32 0, align 4
@DQ_MOD_B = common dso_local global i32 0, align 4
@dq_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_mark_dquot_dirty(%struct.dquot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @DQ_ACTIVE_B, align 4
  %6 = load %struct.dquot*, %struct.dquot** %3, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 3
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.dquot*, %struct.dquot** %3, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_6__* @sb_dqopt(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DQUOT_NOLIST_DIRTY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load i32, i32* @DQ_MOD_B, align 4
  %23 = load %struct.dquot*, %struct.dquot** %3, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 3
  %25 = call i32 @test_and_set_bit(i32 %22, i32* %24)
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %11
  %27 = load i32, i32* @DQ_MOD_B, align 4
  %28 = load %struct.dquot*, %struct.dquot** %3, align 8
  %29 = getelementptr inbounds %struct.dquot, %struct.dquot* %28, i32 0, i32 3
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %59

33:                                               ; preds = %26
  %34 = call i32 @spin_lock(i32* @dq_list_lock)
  %35 = load i32, i32* @DQ_MOD_B, align 4
  %36 = load %struct.dquot*, %struct.dquot** %3, align 8
  %37 = getelementptr inbounds %struct.dquot, %struct.dquot* %36, i32 0, i32 3
  %38 = call i32 @test_and_set_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %33
  %41 = load %struct.dquot*, %struct.dquot** %3, align 8
  %42 = getelementptr inbounds %struct.dquot, %struct.dquot* %41, i32 0, i32 2
  %43 = load %struct.dquot*, %struct.dquot** %3, align 8
  %44 = getelementptr inbounds %struct.dquot, %struct.dquot* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_6__* @sb_dqopt(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.dquot*, %struct.dquot** %3, align 8
  %50 = getelementptr inbounds %struct.dquot, %struct.dquot* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %42, i32* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %40, %33
  %57 = call i32 @spin_unlock(i32* @dq_list_lock)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %32, %21, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @sb_dqopt(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
