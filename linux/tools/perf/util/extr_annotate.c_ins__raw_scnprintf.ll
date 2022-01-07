; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_ins__raw_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_ins__raw_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins = type { i32 }
%struct.ins_operands = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%-*s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins*, i8*, i64, %struct.ins_operands*, i32)* @ins__raw_scnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ins__raw_scnprintf(%struct.ins* %0, i8* %1, i64 %2, %struct.ins_operands* %3, i32 %4) #0 {
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
  %18 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scnprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  ret i32 %20
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
