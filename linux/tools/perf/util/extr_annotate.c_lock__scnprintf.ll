; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_lock__scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_lock__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins = type { i32 }
%struct.ins_operands = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins*, i8*, i64, %struct.ins_operands*, i32)* @lock__scnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock__scnprintf(%struct.ins* %0, i8* %1, i64 %2, %struct.ins_operands* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ins*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ins_operands*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ins* %0, %struct.ins** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ins_operands* %3, %struct.ins_operands** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ins_operands*, %struct.ins_operands** %10, align 8
  %14 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.ins*, %struct.ins** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.ins_operands*, %struct.ins_operands** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @ins__raw_scnprintf(%struct.ins* %20, i8* %21, i64 %22, %struct.ins_operands* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %53

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.ins*, %struct.ins** %7, align 8
  %31 = getelementptr inbounds %struct.ins, %struct.ins* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scnprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.ins_operands*, %struct.ins_operands** %10, align 8
  %36 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %42, %44
  %46 = load %struct.ins_operands*, %struct.ins_operands** %10, align 8
  %47 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ins__scnprintf(%struct.TYPE_4__* %37, i8* %41, i64 %45, i32 %49, i32 %50)
  %52 = add nsw i32 %34, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %26, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @ins__raw_scnprintf(%struct.ins*, i8*, i64, %struct.ins_operands*, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @ins__scnprintf(%struct.TYPE_4__*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
