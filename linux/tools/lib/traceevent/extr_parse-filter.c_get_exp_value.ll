; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_exp_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_exp_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tep_record = type { i32 }

@TEP_ERRNO__INVALID_EXP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*)* @get_exp_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_exp_value(%struct.tep_event* %0, %struct.tep_filter_arg* %1, %struct.tep_record* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_filter_arg*, align 8
  %8 = alloca %struct.tep_record*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %7, align 8
  store %struct.tep_record* %2, %struct.tep_record** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %13 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %14 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @get_arg_value(%struct.tep_event* %12, i32 %16, %struct.tep_record* %17, i32* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %21 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %22 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @get_arg_value(%struct.tep_event* %20, i32 %24, %struct.tep_record* %25, i32* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %87

32:                                               ; preds = %4
  %33 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %34 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %78 [
    i32 138, label %37
    i32 129, label %41
    i32 133, label %45
    i32 136, label %49
    i32 134, label %53
    i32 130, label %57
    i32 135, label %61
    i32 137, label %65
    i32 131, label %69
    i32 128, label %73
    i32 132, label %77
  ]

37:                                               ; preds = %32
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %5, align 8
  br label %87

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %5, align 8
  br label %87

45:                                               ; preds = %32
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = mul i64 %46, %47
  store i64 %48, i64* %5, align 8
  br label %87

49:                                               ; preds = %32
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = udiv i64 %50, %51
  store i64 %52, i64* %5, align 8
  br label %87

53:                                               ; preds = %32
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = urem i64 %54, %55
  store i64 %56, i64* %5, align 8
  br label %87

57:                                               ; preds = %32
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = lshr i64 %58, %59
  store i64 %60, i64* %5, align 8
  br label %87

61:                                               ; preds = %32
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = shl i64 %62, %63
  store i64 %64, i64* %5, align 8
  br label %87

65:                                               ; preds = %32
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = and i64 %66, %67
  store i64 %68, i64* %5, align 8
  br label %87

69:                                               ; preds = %32
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = or i64 %70, %71
  store i64 %72, i64* %5, align 8
  br label %87

73:                                               ; preds = %32
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = xor i64 %74, %75
  store i64 %76, i64* %5, align 8
  br label %87

77:                                               ; preds = %32
  br label %78

78:                                               ; preds = %32, %77
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @TEP_ERRNO__INVALID_EXP_TYPE, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85
  store i64 0, i64* %5, align 8
  br label %87

87:                                               ; preds = %86, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %31
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i64 @get_arg_value(%struct.tep_event*, i32, %struct.tep_record*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
