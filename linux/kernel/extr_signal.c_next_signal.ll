; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_next_signal.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_next_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigpending = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_5__ = type { i64* }

@SYNCHRONOUS_MASK = common dso_local global i64 0, align 8
@_NSIG_WORDS = common dso_local global i32 0, align 4
@_NSIG_BPW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_signal(%struct.sigpending* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigpending*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sigpending* %0, %struct.sigpending** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sigpending*, %struct.sigpending** %4, align 8
  %12 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @SYNCHRONOUS_MASK, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @SYNCHRONOUS_MASK, align 8
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i64, i64* %9, align 8
  %37 = xor i64 %36, -1
  %38 = call i64 @ffz(i64 %37)
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %99

42:                                               ; preds = %2
  %43 = load i32, i32* @_NSIG_WORDS, align 4
  switch i32 %43, label %44 [
    i32 2, label %76
    i32 1, label %96
  ]

44:                                               ; preds = %42
  store i64 1, i64* %6, align 8
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* @_NSIG_WORDS, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = xor i64 %56, -1
  %58 = and i64 %53, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %72

62:                                               ; preds = %50
  %63 = load i64, i64* %9, align 8
  %64 = xor i64 %63, -1
  %65 = call i64 @ffz(i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @_NSIG_BPW, align 8
  %68 = mul i64 %66, %67
  %69 = add i64 %65, %68
  %70 = add i64 %69, 1
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %61
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %45

75:                                               ; preds = %62, %45
  br label %97

76:                                               ; preds = %42
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = xor i64 %82, -1
  %84 = and i64 %79, %83
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %97

88:                                               ; preds = %76
  %89 = load i64, i64* %9, align 8
  %90 = xor i64 %89, -1
  %91 = call i64 @ffz(i64 %90)
  %92 = load i64, i64* @_NSIG_BPW, align 8
  %93 = add i64 %91, %92
  %94 = add i64 %93, 1
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %97

96:                                               ; preds = %42
  br label %97

97:                                               ; preds = %96, %88, %87, %75
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %35
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @ffz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
