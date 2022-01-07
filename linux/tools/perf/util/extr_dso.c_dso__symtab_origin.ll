; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__symtab_origin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__symtab_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64 }

@dso__symtab_origin.origin = internal constant [145 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00vumKdokjVMGgflDBb", align 16
@DSO_BINARY_TYPE__NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @dso__symtab_origin(%struct.dso* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.dso*, align 8
  store %struct.dso* %0, %struct.dso** %3, align 8
  %4 = load %struct.dso*, %struct.dso** %3, align 8
  %5 = icmp eq %struct.dso* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.dso*, %struct.dso** %3, align 8
  %8 = getelementptr inbounds %struct.dso, %struct.dso* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DSO_BINARY_TYPE__NOT_FOUND, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  store i8 33, i8* %2, align 1
  br label %19

13:                                               ; preds = %6
  %14 = load %struct.dso*, %struct.dso** %3, align 8
  %15 = getelementptr inbounds %struct.dso, %struct.dso* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [145 x i8], [145 x i8]* @dso__symtab_origin.origin, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %2, align 1
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i8, i8* %2, align 1
  ret i8 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
