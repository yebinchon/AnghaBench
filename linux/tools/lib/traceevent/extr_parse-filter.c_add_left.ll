; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_left.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { i32, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.tep_filter_arg* }
%struct.TYPE_6__ = type { %struct.tep_filter_arg* }
%struct.TYPE_5__ = type { %struct.tep_filter_arg* }

@TEP_FILTER_ARG_FIELD = common dso_local global i32 0, align 4
@TEP_FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@TEP_ERRNO__INVALID_ARG_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_filter_arg*, %struct.tep_filter_arg*)* @add_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_left(%struct.tep_filter_arg* %0, %struct.tep_filter_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_filter_arg*, align 8
  %5 = alloca %struct.tep_filter_arg*, align 8
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %4, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %5, align 8
  %6 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %7 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %56 [
    i32 130, label %9
    i32 128, label %23
    i32 129, label %28
  ]

9:                                                ; preds = %2
  %10 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %11 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %16 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %17 = call %struct.tep_filter_arg* @rotate_op_right(%struct.tep_filter_arg* %15, %struct.tep_filter_arg* %16)
  store %struct.tep_filter_arg* %17, %struct.tep_filter_arg** %5, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %20 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %21 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.tep_filter_arg* %19, %struct.tep_filter_arg** %22, align 8
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %25 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %26 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.tep_filter_arg* %24, %struct.tep_filter_arg** %27, align 8
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %30 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %35 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %36 = call %struct.tep_filter_arg* @rotate_op_right(%struct.tep_filter_arg* %34, %struct.tep_filter_arg* %35)
  store %struct.tep_filter_arg* %36, %struct.tep_filter_arg** %5, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %39 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TEP_FILTER_ARG_FIELD, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %45 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TEP_FILTER_ARG_BOOLEAN, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @TEP_ERRNO__INVALID_ARG_TYPE, align 4
  store i32 %50, i32* %3, align 4
  br label %59

51:                                               ; preds = %43, %37
  %52 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %53 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %54 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.tep_filter_arg* %52, %struct.tep_filter_arg** %55, align 8
  br label %58

56:                                               ; preds = %2
  %57 = load i32, i32* @TEP_ERRNO__INVALID_ARG_TYPE, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %51, %23, %18
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %49
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.tep_filter_arg* @rotate_op_right(%struct.tep_filter_arg*, %struct.tep_filter_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
