; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pwq_dec_nr_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pwq_dec_nr_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i64, i64, i32, %struct.TYPE_4__*, i64*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@WORK_NO_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*, i32)* @pwq_dec_nr_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwq_dec_nr_in_flight(%struct.pool_workqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.pool_workqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WORK_NO_COLOR, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %76

9:                                                ; preds = %2
  %10 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %11 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %10, i32 0, i32 4
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %19 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %23 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %22, i32 0, i32 5
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %9
  %27 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %28 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %31 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %36 = call i32 @pwq_activate_first_delayed(%struct.pool_workqueue* %35)
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %9
  %39 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %40 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %76

48:                                               ; preds = %38
  %49 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %50 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %76

58:                                               ; preds = %48
  %59 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %60 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %59, i32 0, i32 2
  store i32 -1, i32* %60, align 8
  %61 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %62 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i64 @atomic_dec_and_test(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %69 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @complete(i32* %73)
  br label %75

75:                                               ; preds = %67, %58
  br label %76

76:                                               ; preds = %75, %57, %47, %8
  %77 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %78 = call i32 @put_pwq(%struct.pool_workqueue* %77)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pwq_activate_first_delayed(%struct.pool_workqueue*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @put_pwq(%struct.pool_workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
