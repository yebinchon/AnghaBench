; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_cgraph_for_node_and_aliases.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_cgraph_for_node_and_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@AVAIL_OVERWRITABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32 (%struct.TYPE_6__*, i8*)*, i8*, i32)* @cgraph_for_node_and_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_for_node_and_aliases(%struct.TYPE_6__* %0, i32 (%struct.TYPE_6__*, i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32 (%struct.TYPE_6__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 (%struct.TYPE_6__*, i8*)* %1, i32 (%struct.TYPE_6__*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 %11(%struct.TYPE_6__* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %47

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %10, align 8
  br label %21

21:                                               ; preds = %42, %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = call i64 @cgraph_function_body_availability(%struct.TYPE_6__* %28)
  %30 = load i64, i64* @AVAIL_OVERWRITABLE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @cgraph_for_node_and_aliases(%struct.TYPE_6__* %33, i32 (%struct.TYPE_6__*, i8*)* %34, i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %47

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %10, align 8
  br label %21

46:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %39, %16
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @cgraph_function_body_availability(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
