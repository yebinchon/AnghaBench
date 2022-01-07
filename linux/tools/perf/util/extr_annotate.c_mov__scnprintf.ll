; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_mov__scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_mov__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins = type { i32 }
%struct.ins_operands = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%-*s %s,%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins*, i8*, i64, %struct.ins_operands*, i32)* @mov__scnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov__scnprintf(%struct.ins* %0, i8* %1, i64 %2, %struct.ins_operands* %3, i32 %4) #0 {
  %6 = alloca %struct.ins*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ins_operands*, align 8
  %10 = alloca i32, align 4
  store %struct.ins* %0, %struct.ins** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ins_operands* %3, %struct.ins_operands** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.ins*, %struct.ins** %6, align 8
  %15 = getelementptr inbounds %struct.ins, %struct.ins* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %18 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %29

23:                                               ; preds = %5
  %24 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %25 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i64 [ %20, %22 ], [ %28, %23 ]
  %31 = trunc i64 %30 to i32
  %32 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %33 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %40 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %38, %37
  %45 = phi i64 [ %35, %37 ], [ %43, %38 ]
  %46 = trunc i64 %45 to i32
  %47 = call i32 @scnprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %31, i32 %46)
  ret i32 %47
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
