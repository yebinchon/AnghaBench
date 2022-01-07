; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_probe_algs.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_probe_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@aalg_list = common dso_local global %struct.TYPE_6__* null, align 8
@ealg_list = common dso_local global %struct.TYPE_4__* null, align 8
@calg_list = common dso_local global %struct.TYPE_5__* null, align 8
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_probe_algs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @in_softirq()
  %4 = call i32 @BUG_ON(i32 %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* %1, align 4
  %7 = call i32 (...) @aalg_entries()
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aalg_list, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @crypto_has_ahash(i32 %15, i32 0, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aalg_list, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aalg_list, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %5

36:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (...) @ealg_entries()
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ealg_list, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @crypto_has_skcipher(i32 %47, i32 0, i32 0)
  store i32 %48, i32* %2, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ealg_list, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %41
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ealg_list, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %37

68:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %98, %68
  %70 = load i32, i32* %1, align 4
  %71 = call i32 (...) @calg_entries()
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @calg_list, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %81 = call i32 @crypto_has_comp(i32 %79, i32 0, i32 %80)
  store i32 %81, i32* %2, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @calg_list, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %2, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %73
  %91 = load i32, i32* %2, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @calg_list, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %69

101:                                              ; preds = %69
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_softirq(...) #1

declare dso_local i32 @aalg_entries(...) #1

declare dso_local i32 @crypto_has_ahash(i32, i32, i32) #1

declare dso_local i32 @ealg_entries(...) #1

declare dso_local i32 @crypto_has_skcipher(i32, i32, i32) #1

declare dso_local i32 @calg_entries(...) #1

declare dso_local i32 @crypto_has_comp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
