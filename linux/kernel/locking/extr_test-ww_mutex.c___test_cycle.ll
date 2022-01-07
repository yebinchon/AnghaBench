; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_test-ww_mutex.c___test_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_test-ww_mutex.c___test_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_cycle = type { i32, i64, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ww_class = common dso_local global i32 0, align 4
@test_cycle_work = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cyclic deadlock not resolved, ret[%d/%d] = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__test_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_cycle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_cycle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.test_cycle*, align 8
  %9 = alloca %struct.test_cycle*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sub i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.test_cycle* @kmalloc_array(i32 %12, i32 40, i32 %13)
  store %struct.test_cycle* %14, %struct.test_cycle** %4, align 8
  %15 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %16 = icmp ne %struct.test_cycle* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %148

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %81, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %26, i64 %28
  store %struct.test_cycle* %29, %struct.test_cycle** %8, align 8
  %30 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %31 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %30, i32 0, i32 0
  %32 = call i32 @ww_mutex_init(i32* %31, i32* @ww_class)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %38 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %37, i64 0
  %39 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %38, i32 0, i32 0
  %40 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %41 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %43, i64 %46
  %48 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %47, i32 0, i32 0
  %49 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %50 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %55, i64 %57
  %59 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %58, i32 0, i32 3
  %60 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %61 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  br label %71

62:                                               ; preds = %51
  %63 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %63, i64 %66
  %68 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %67, i32 0, i32 3
  %69 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %70 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %62, %54
  %72 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %73 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %72, i32 0, i32 3
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %76 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %75, i32 0, i32 2
  %77 = load i32, i32* @test_cycle_work, align 4
  %78 = call i32 @INIT_WORK(i32* %76, i32 %77)
  %79 = load %struct.test_cycle*, %struct.test_cycle** %8, align 8
  %80 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %21

84:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* @wq, align 4
  %91 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %91, i64 %93
  %95 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %94, i32 0, i32 2
  %96 = call i32 @queue_work(i32 %90, i32* %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load i32, i32* @wq, align 4
  %102 = call i32 @flush_workqueue(i32 %101)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %126, %100
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %103
  %108 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %108, i64 %110
  store %struct.test_cycle* %111, %struct.test_cycle** %9, align 8
  %112 = load %struct.test_cycle*, %struct.test_cycle** %9, align 8
  %113 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  br label %126

117:                                              ; preds = %107
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.test_cycle*, %struct.test_cycle** %9, align 8
  %121 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %119, i64 %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %129

126:                                              ; preds = %116
  %127 = load i32, i32* %5, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %103

129:                                              ; preds = %117, %103
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %141, %129
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %135, i64 %137
  %139 = getelementptr inbounds %struct.test_cycle, %struct.test_cycle* %138, i32 0, i32 0
  %140 = call i32 @ww_mutex_destroy(i32* %139)
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %5, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %130

144:                                              ; preds = %130
  %145 = load %struct.test_cycle*, %struct.test_cycle** %4, align 8
  %146 = call i32 @kfree(%struct.test_cycle* %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %144, %17
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.test_cycle* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ww_mutex_init(i32*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64) #1

declare dso_local i32 @ww_mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.test_cycle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
