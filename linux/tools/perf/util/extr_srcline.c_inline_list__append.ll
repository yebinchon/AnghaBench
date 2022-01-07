; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_srcline.c_inline_list__append.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_srcline.c_inline_list__append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.symbol = type { i32 }
%struct.inline_node = type { i32 }
%struct.inline_list = type { i8*, i32, %struct.symbol* }

@callchain_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ORDER_CALLEE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i8*, %struct.inline_node*)* @inline_list__append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inline_list__append(%struct.symbol* %0, i8* %1, %struct.inline_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inline_node*, align 8
  %8 = alloca %struct.inline_list*, align 8
  store %struct.symbol* %0, %struct.symbol** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.inline_node* %2, %struct.inline_node** %7, align 8
  %9 = call %struct.inline_list* @zalloc(i32 24)
  store %struct.inline_list* %9, %struct.inline_list** %8, align 8
  %10 = load %struct.inline_list*, %struct.inline_list** %8, align 8
  %11 = icmp eq %struct.inline_list* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = load %struct.inline_list*, %struct.inline_list** %8, align 8
  %16 = getelementptr inbounds %struct.inline_list, %struct.inline_list* %15, i32 0, i32 2
  store %struct.symbol* %14, %struct.symbol** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.inline_list*, %struct.inline_list** %8, align 8
  %19 = getelementptr inbounds %struct.inline_list, %struct.inline_list* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %21 = load i64, i64* @ORDER_CALLEE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.inline_list*, %struct.inline_list** %8, align 8
  %25 = getelementptr inbounds %struct.inline_list, %struct.inline_list* %24, i32 0, i32 1
  %26 = load %struct.inline_node*, %struct.inline_node** %7, align 8
  %27 = getelementptr inbounds %struct.inline_node, %struct.inline_node* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  br label %35

29:                                               ; preds = %13
  %30 = load %struct.inline_list*, %struct.inline_list** %8, align 8
  %31 = getelementptr inbounds %struct.inline_list, %struct.inline_list* %30, i32 0, i32 1
  %32 = load %struct.inline_node*, %struct.inline_node** %7, align 8
  %33 = getelementptr inbounds %struct.inline_node, %struct.inline_node* %32, i32 0, i32 0
  %34 = call i32 @list_add(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %29, %23
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.inline_list* @zalloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
