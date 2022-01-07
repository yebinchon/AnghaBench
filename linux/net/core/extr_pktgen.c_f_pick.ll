; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_f_pick.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_f_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@F_FLOW_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktgen_dev*)* @f_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_pick(%struct.pktgen_dev* %0) #0 {
  %2 = alloca %struct.pktgen_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %2, align 8
  %4 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @F_FLOW_SEQ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  %14 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %13
  %27 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %42 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %46 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %26
  %53 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %54 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %26
  br label %56

56:                                               ; preds = %55, %13
  br label %94

57:                                               ; preds = %1
  %58 = call i32 (...) @prandom_u32()
  %59 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %60 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = srem i32 %58, %61
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %75 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %57
  %79 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %80 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %87 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %78, %57
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %96 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  ret i32 %97
}

declare dso_local i32 @prandom_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
