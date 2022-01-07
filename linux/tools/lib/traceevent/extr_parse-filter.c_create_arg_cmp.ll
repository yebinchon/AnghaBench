; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_create_arg_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_create_arg_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TEP_FILTER_ARG_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tep_filter_arg* (i32)* @create_arg_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tep_filter_arg* @create_arg_cmp(i32 %0) #0 {
  %2 = alloca %struct.tep_filter_arg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_filter_arg*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.tep_filter_arg* (...) @allocate_arg()
  store %struct.tep_filter_arg* %5, %struct.tep_filter_arg** %4, align 8
  %6 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %7 = icmp ne %struct.tep_filter_arg* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.tep_filter_arg* null, %struct.tep_filter_arg** %2, align 8
  br label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @TEP_FILTER_ARG_NUM, align 4
  %11 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %12 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %15 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  store %struct.tep_filter_arg* %17, %struct.tep_filter_arg** %2, align 8
  br label %18

18:                                               ; preds = %9, %8
  %19 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %2, align 8
  ret %struct.tep_filter_arg* %19
}

declare dso_local %struct.tep_filter_arg* @allocate_arg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
