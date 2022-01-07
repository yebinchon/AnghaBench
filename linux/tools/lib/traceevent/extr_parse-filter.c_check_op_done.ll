; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_check_op_done.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_check_op_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_filter_arg*)* @check_op_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_op_done(%struct.tep_filter_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_filter_arg*, align 8
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %3, align 8
  %4 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %5 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %30 [
    i32 131, label %7
    i32 129, label %14
    i32 130, label %21
    i32 128, label %28
    i32 132, label %29
  ]

7:                                                ; preds = %1
  %8 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %9 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %16 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %23 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %28, %21, %14, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
