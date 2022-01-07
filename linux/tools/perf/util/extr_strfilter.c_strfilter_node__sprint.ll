; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__sprint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__sprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter_node = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@__fallthrough = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strfilter_node*, i8*)* @strfilter_node__sprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfilter_node__sprint(%struct.strfilter_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strfilter_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.strfilter_node* %0, %struct.strfilter_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %9 = icmp ne %struct.strfilter_node* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %12 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %10
  %19 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %20 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %70 [
    i32 124, label %23
    i32 38, label %23
    i32 33, label %35
  ]

23:                                               ; preds = %18, %18
  %24 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %25 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strfilter_node__sprint_pt(i32 %26, i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %23
  %34 = load i32, i32* @__fallthrough, align 4
  br label %35

35:                                               ; preds = %18, %33
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %40 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %5, align 8
  br label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %58 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strfilter_node__sprint_pt(i32 %59, i8* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %88

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %86

70:                                               ; preds = %18
  %71 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %72 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.strfilter_node*, %struct.strfilter_node** %4, align 8
  %81 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @strcpy(i8* %79, i8* %83)
  br label %85

85:                                               ; preds = %78, %70
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %64, %31, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @strfilter_node__sprint_pt(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
