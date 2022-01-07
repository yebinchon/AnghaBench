; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_test_func.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_test_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.test_driver = type { i64, i8*, i8* }

@test_case_array = common dso_local global %struct.TYPE_4__* null, align 8
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set affinity to %d CPU\0A\00", align 1
@sequential_test_order = common dso_local global i32 0, align 4
@prepare_for_test_rwsem = common dso_local global i32 0, align 4
@run_test_mask = common dso_local global i32 0, align 4
@test_repeat_count = common dso_local global i32 0, align 4
@per_cpu_test_data = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.test_driver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.test_driver*
  store %struct.test_driver* %12, %struct.test_driver** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_case_array, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @current, align 4
  %19 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %20 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @cpumask_of(i64 %21)
  %23 = call i64 @set_cpus_allowed_ptr(i32 %18, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %27 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %25, %1
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %41, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_case_array, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %17, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %31

44:                                               ; preds = %31
  %45 = load i32, i32* @sequential_test_order, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_case_array, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %48)
  %50 = call i32 @shuffle_array(i32* %17, i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = call i32 @down_read(i32* @prepare_for_test_rwsem)
  %53 = call i8* (...) @get_cycles()
  %54 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %55 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %137, %51
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_case_array, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %140

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %17, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @run_test_mask, align 4
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %137

74:                                               ; preds = %61
  %75 = call i32 (...) @ktime_get()
  store i32 %75, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %116, %74
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @test_repeat_count, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_case_array, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (...)*, i32 (...)** %85, align 8
  %87 = call i32 (...) %86()
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %80
  %90 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @per_cpu_test_data, align 8
  %91 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %92 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %90, i64 %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %115

102:                                              ; preds = %80
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @per_cpu_test_data, align 8
  %104 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %105 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %103, i64 %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %102, %89
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %76

119:                                              ; preds = %76
  %120 = call i32 (...) @ktime_get()
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @ktime_us_delta(i32 %120, i32 %121)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i32, i32* @test_repeat_count, align 4
  %125 = call i32 @do_div(i64 %123, i32 %124)
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @per_cpu_test_data, align 8
  %128 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %129 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %127, i64 %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i64 %126, i64* %136, align 8
  br label %137

137:                                              ; preds = %119, %73
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %56

140:                                              ; preds = %56
  %141 = call i8* (...) @get_cycles()
  %142 = load %struct.test_driver*, %struct.test_driver** %3, align 8
  %143 = getelementptr inbounds %struct.test_driver, %struct.test_driver* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = call i32 @up_read(i32* @prepare_for_test_rwsem)
  %145 = call i32 (...) @test_report_one_done()
  br label %146

146:                                              ; preds = %150, %140
  %147 = call i32 (...) @kthread_should_stop()
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 @msleep(i32 10)
  br label %146

152:                                              ; preds = %146
  %153 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %153)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @set_cpus_allowed_ptr(i32, i32) #1

declare dso_local i32 @cpumask_of(i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @shuffle_array(i32*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @get_cycles(...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @test_report_one_done(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @msleep(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
