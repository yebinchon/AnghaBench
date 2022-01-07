; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.quota_info = type { %struct.TYPE_3__**, i32* }
%struct.TYPE_3__ = type { i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (i32, i64)* }

@DQ_READ_B = common dso_local global i32 0, align 4
@DQ_ACTIVE_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_acquire(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.quota_info*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.dquot*, %struct.dquot** %2, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.quota_info* @sb_dqopt(i32 %8)
  store %struct.quota_info* %9, %struct.quota_info** %5, align 8
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @DQ_READ_B, align 4
  %14 = load %struct.dquot*, %struct.dquot** %2, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %1
  %19 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %20 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = load %struct.dquot*, %struct.dquot** %2, align 8
  %23 = getelementptr inbounds %struct.dquot, %struct.dquot* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %28, align 8
  %30 = load %struct.dquot*, %struct.dquot** %2, align 8
  %31 = call i32 %29(%struct.dquot* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %112

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %1
  %37 = call i32 (...) @smp_mb__before_atomic()
  %38 = load i32, i32* @DQ_READ_B, align 4
  %39 = load %struct.dquot*, %struct.dquot** %2, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load i32, i32* @DQ_ACTIVE_B, align 4
  %43 = load %struct.dquot*, %struct.dquot** %2, align 8
  %44 = getelementptr inbounds %struct.dquot, %struct.dquot* %43, i32 0, i32 1
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %106, label %47

47:                                               ; preds = %36
  %48 = load %struct.dquot*, %struct.dquot** %2, align 8
  %49 = getelementptr inbounds %struct.dquot, %struct.dquot* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %106, label %52

52:                                               ; preds = %47
  %53 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %54 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = load %struct.dquot*, %struct.dquot** %2, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %62, align 8
  %64 = load %struct.dquot*, %struct.dquot** %2, align 8
  %65 = call i32 %63(%struct.dquot* %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %67 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.dquot*, %struct.dquot** %2, align 8
  %70 = getelementptr inbounds %struct.dquot, %struct.dquot* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = call i64 @info_dirty(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %52
  %77 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %78 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %78, align 8
  %80 = load %struct.dquot*, %struct.dquot** %2, align 8
  %81 = getelementptr inbounds %struct.dquot, %struct.dquot* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %79, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32 (i32, i64)*, i32 (i32, i64)** %86, align 8
  %88 = load %struct.dquot*, %struct.dquot** %2, align 8
  %89 = getelementptr inbounds %struct.dquot, %struct.dquot* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.dquot*, %struct.dquot** %2, align 8
  %92 = getelementptr inbounds %struct.dquot, %struct.dquot* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 %87(i32 %90, i64 %94)
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %76, %52
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %3, align 4
  br label %112

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %47, %36
  %107 = call i32 (...) @smp_mb__before_atomic()
  %108 = load i32, i32* @DQ_ACTIVE_B, align 4
  %109 = load %struct.dquot*, %struct.dquot** %2, align 8
  %110 = getelementptr inbounds %struct.dquot, %struct.dquot* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %106, %103, %99, %34
  %113 = load %struct.dquot*, %struct.dquot** %2, align 8
  %114 = getelementptr inbounds %struct.dquot, %struct.dquot* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.quota_info* @sb_dqopt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @info_dirty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
