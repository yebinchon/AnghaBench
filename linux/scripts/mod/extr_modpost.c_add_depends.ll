; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_add_depends.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_add_depends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { %struct.symbol* }
%struct.symbol = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MODULE_INFO(depends, \22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.module*)* @add_depends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_depends(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 0
  %10 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %10, %struct.symbol** %5, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load %struct.symbol*, %struct.symbol** %5, align 8
  %13 = icmp ne %struct.symbol* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.symbol*, %struct.symbol** %5, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.symbol*, %struct.symbol** %5, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @is_vmlinux(i8* %24)
  %26 = load %struct.symbol*, %struct.symbol** %5, align 8
  %27 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  br label %30

30:                                               ; preds = %19, %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.symbol*, %struct.symbol** %5, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 1
  %34 = load %struct.symbol*, %struct.symbol** %33, align 8
  store %struct.symbol* %34, %struct.symbol** %5, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.buffer*, %struct.buffer** %3, align 8
  %37 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.buffer*, %struct.buffer** %3, align 8
  %39 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.module*, %struct.module** %4, align 8
  %41 = getelementptr inbounds %struct.module, %struct.module* %40, i32 0, i32 0
  %42 = load %struct.symbol*, %struct.symbol** %41, align 8
  store %struct.symbol* %42, %struct.symbol** %5, align 8
  br label %43

43:                                               ; preds = %90, %35
  %44 = load %struct.symbol*, %struct.symbol** %5, align 8
  %45 = icmp ne %struct.symbol* %44, null
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = load %struct.symbol*, %struct.symbol** %5, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %90

52:                                               ; preds = %46
  %53 = load %struct.symbol*, %struct.symbol** %5, align 8
  %54 = getelementptr inbounds %struct.symbol, %struct.symbol* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %90

60:                                               ; preds = %52
  %61 = load %struct.symbol*, %struct.symbol** %5, align 8
  %62 = getelementptr inbounds %struct.symbol, %struct.symbol* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.symbol*, %struct.symbol** %5, align 8
  %66 = getelementptr inbounds %struct.symbol, %struct.symbol* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @strrchr(i8* %69, i8 signext 47)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  br label %82

76:                                               ; preds = %60
  %77 = load %struct.symbol*, %struct.symbol** %5, align 8
  %78 = getelementptr inbounds %struct.symbol, %struct.symbol* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.buffer*, %struct.buffer** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %82, %59, %51
  %91 = load %struct.symbol*, %struct.symbol** %5, align 8
  %92 = getelementptr inbounds %struct.symbol, %struct.symbol* %91, i32 0, i32 1
  %93 = load %struct.symbol*, %struct.symbol** %92, align 8
  store %struct.symbol* %93, %struct.symbol** %5, align 8
  br label %43

94:                                               ; preds = %43
  %95 = load %struct.buffer*, %struct.buffer** %3, align 8
  %96 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @is_vmlinux(i8*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
