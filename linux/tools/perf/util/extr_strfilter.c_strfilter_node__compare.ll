; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__compare.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter_node = type { i32*, %struct.strfilter_node*, %struct.strfilter_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strfilter_node*, i8*)* @strfilter_node__compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfilter_node__compare(%struct.strfilter_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strfilter_node*, align 8
  %5 = alloca i8*, align 8
  store %struct.strfilter_node* %0, %struct.strfilter_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %7 = icmp ne %struct.strfilter_node* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %10 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %68

14:                                               ; preds = %8
  %15 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %16 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %62 [
    i32 124, label %19
    i32 38, label %36
    i32 33, label %53
  ]

19:                                               ; preds = %14
  %20 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %21 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %20, i32 0, i32 2
  %22 = load %struct.strfilter_node*, %struct.strfilter_node** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strfilter_node__compare(%struct.strfilter_node* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %28 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %27, i32 0, i32 1
  %29 = load %struct.strfilter_node*, %struct.strfilter_node** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strfilter_node__compare(%struct.strfilter_node* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi i1 [ true, %19 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %14
  %37 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %38 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %37, i32 0, i32 2
  %39 = load %struct.strfilter_node*, %struct.strfilter_node** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strfilter_node__compare(%struct.strfilter_node* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %45 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %44, i32 0, i32 1
  %46 = load %struct.strfilter_node*, %struct.strfilter_node** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strfilter_node__compare(%struct.strfilter_node* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i1 [ false, %36 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %14
  %54 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %55 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %54, i32 0, i32 1
  %56 = load %struct.strfilter_node*, %struct.strfilter_node** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strfilter_node__compare(%struct.strfilter_node* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %14
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %65 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @strglobmatch(i8* %63, i32* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %53, %50, %33, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @strglobmatch(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
