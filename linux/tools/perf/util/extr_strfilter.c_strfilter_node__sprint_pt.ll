; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__sprint_pt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__sprint_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strfilter_node*, i8*)* @strfilter_node__sprint_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfilter_node__sprint_pt(%struct.strfilter_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strfilter_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.strfilter_node* %0, %struct.strfilter_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %9 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 2, i32 0
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  store i8 40, i8* %20, align 1
  br label %22

22:                                               ; preds = %19, %16, %2
  %23 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strfilter_node__sprint(%struct.strfilter_node* %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 41, i8* %40, align 1
  br label %41

41:                                               ; preds = %36, %33, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strfilter_node__sprint(%struct.strfilter_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
