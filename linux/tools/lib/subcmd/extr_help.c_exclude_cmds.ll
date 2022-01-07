; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_exclude_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_exclude_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exclude_cmds(%struct.cmdnames* %0, %struct.cmdnames* %1) #0 {
  %3 = alloca %struct.cmdnames*, align 8
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %3, align 8
  store %struct.cmdnames* %1, %struct.cmdnames** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %73, %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %12 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %18 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ %20, %15 ]
  br i1 %22, label %23, label %74

23:                                               ; preds = %21
  %24 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %25 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %33 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %31, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %23
  %44 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %45 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %47
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %52 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %54
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %56, align 8
  br label %73

57:                                               ; preds = %23
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %72

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %43
  br label %9

74:                                               ; preds = %21
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %78 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %83 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %84, i64 %85
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %90 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %91, i64 %92
  store %struct.TYPE_2__* %88, %struct.TYPE_2__** %94, align 8
  br label %75

95:                                               ; preds = %75
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %98 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
