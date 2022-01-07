; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_check_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_check_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_tracking = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_tracking*, i32)* @check_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cpu(%struct.switch_tracking* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_tracking*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.switch_tracking* %0, %struct.switch_tracking** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

14:                                               ; preds = %2
  %15 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %16 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @calloc(i32 %20, i32 4)
  %22 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %23 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %25 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %93

29:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %36 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %47 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %93

48:                                               ; preds = %14
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %51 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %48
  %55 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %56 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i8* @realloc(i32* %57, i32 %61)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %93

66:                                               ; preds = %54
  %67 = load i8*, i8** %8, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %70 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %72 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %85, %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %80 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 -1, i32* %84, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %74

88:                                               ; preds = %74
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.switch_tracking*, %struct.switch_tracking** %4, align 8
  %91 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %93

92:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %88, %65, %44, %28, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @realloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
