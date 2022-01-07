; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_accelerate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_accelerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i64*, i64* }

@RCU_DONE_TAIL = common dso_local global i32 0, align 4
@RCU_NEXT_READY_TAIL = common dso_local global i32 0, align 4
@RCU_NEXT_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcu_segcblist_accelerate(%struct.rcu_segcblist* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcu_segcblist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %8 = call i32 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %14 = load i32, i32* @RCU_DONE_TAIL, align 4
  %15 = call i64 @rcu_segcblist_restempty(%struct.rcu_segcblist* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load i32, i32* @RCU_NEXT_READY_TAIL, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %54, %18
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RCU_DONE_TAIL, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %26 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %33 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %31, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %24
  %42 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %43 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @ULONG_CMP_LT(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %57

53:                                               ; preds = %41, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  br label %20

57:                                               ; preds = %52, %20
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @RCU_NEXT_TAIL, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %95

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @RCU_NEXT_TAIL, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %70 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %77 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* @RCU_NEXT_TAIL, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @WRITE_ONCE(i64 %75, i64 %82)
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %86 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %84, i64* %90, align 8
  br label %91

91:                                               ; preds = %68
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %64

94:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %62, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_segcblist_is_enabled(%struct.rcu_segcblist*) #1

declare dso_local i64 @rcu_segcblist_restempty(%struct.rcu_segcblist*, i32) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
