; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%-*s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disasm_line__scnprintf(%struct.disasm_line* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.disasm_line*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.disasm_line* %0, %struct.disasm_line** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %16 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %14, %5
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %25 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %29 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scnprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %42

33:                                               ; preds = %14
  %34 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %35 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %34, i32 0, i32 1
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %39 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ins__scnprintf(%struct.TYPE_3__* %35, i8* %36, i64 %37, %struct.TYPE_4__* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %20
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @ins__scnprintf(%struct.TYPE_3__*, i8*, i64, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
