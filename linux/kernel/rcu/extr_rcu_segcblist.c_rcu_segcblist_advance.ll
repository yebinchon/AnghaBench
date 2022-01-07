; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_advance.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i64*, i32* }

@RCU_DONE_TAIL = common dso_local global i64 0, align 8
@RCU_WAIT_TAIL = common dso_local global i32 0, align 4
@RCU_NEXT_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_segcblist_advance(%struct.rcu_segcblist* %0, i64 %1) #0 {
  %3 = alloca %struct.rcu_segcblist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %8 = call i32 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %14 = load i64, i64* @RCU_DONE_TAIL, align 8
  %15 = call i64 @rcu_segcblist_restempty(%struct.rcu_segcblist* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %140

18:                                               ; preds = %2
  %19 = load i32, i32* @RCU_WAIT_TAIL, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %51, %18
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RCU_NEXT_TAIL, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %27 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ULONG_CMP_LT(i64 %25, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %54

36:                                               ; preds = %24
  %37 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %38 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @RCU_DONE_TAIL, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %44 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @WRITE_ONCE(i64 %42, i64 %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %20

54:                                               ; preds = %35, %20
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @RCU_WAIT_TAIL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %140

59:                                               ; preds = %54
  %60 = load i32, i32* @RCU_WAIT_TAIL, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %80, %59
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %67 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %74 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @RCU_DONE_TAIL, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @WRITE_ONCE(i64 %72, i64 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load i32, i32* @RCU_WAIT_TAIL, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %135, %83
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @RCU_NEXT_TAIL, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %85
  %90 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %91 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %98 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* @RCU_NEXT_TAIL, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %140

106:                                              ; preds = %89
  %107 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %108 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %115 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @WRITE_ONCE(i64 %113, i64 %120)
  %122 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %123 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %130 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %106
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %85

140:                                              ; preds = %17, %58, %105, %85
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_segcblist_is_enabled(%struct.rcu_segcblist*) #1

declare dso_local i64 @rcu_segcblist_restempty(%struct.rcu_segcblist*, i64) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i32) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
