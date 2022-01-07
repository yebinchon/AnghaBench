; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_op.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tep_record = type { i32 }

@TEP_ERRNO__INVALID_OP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*)* @test_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_op(%struct.tep_event* %0, %struct.tep_filter_arg* %1, %struct.tep_record* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_filter_arg*, align 8
  %8 = alloca %struct.tep_record*, align 8
  %9 = alloca i32*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %7, align 8
  store %struct.tep_record* %2, %struct.tep_record** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %11 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %72 [
    i32 130, label %14
    i32 128, label %37
    i32 129, label %60
  ]

14:                                               ; preds = %4
  %15 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %16 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %17 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @test_filter(%struct.tep_event* %15, i32 %19, %struct.tep_record* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %26 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %27 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @test_filter(%struct.tep_event* %25, i32 %29, %struct.tep_record* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %24, %14
  %35 = phi i1 [ false, %14 ], [ %33, %24 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %80

37:                                               ; preds = %4
  %38 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %39 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %40 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @test_filter(%struct.tep_event* %38, i32 %42, %struct.tep_record* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %49 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %50 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @test_filter(%struct.tep_event* %48, i32 %52, %struct.tep_record* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %47, %37
  %58 = phi i1 [ true, %37 ], [ %56, %47 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %80

60:                                               ; preds = %4
  %61 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %62 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %63 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @test_filter(%struct.tep_event* %61, i32 %65, %struct.tep_record* %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @TEP_ERRNO__INVALID_OP_TYPE, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %72
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %60, %57, %34
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @test_filter(%struct.tep_event*, i32, %struct.tep_record*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
