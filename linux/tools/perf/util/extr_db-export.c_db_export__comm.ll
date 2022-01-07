; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 }
%struct.comm = type { i64 }
%struct.thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__comm(%struct.db_export* %0, %struct.comm* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_export*, align 8
  %6 = alloca %struct.comm*, align 8
  %7 = alloca %struct.thread*, align 8
  store %struct.db_export* %0, %struct.db_export** %5, align 8
  store %struct.comm* %1, %struct.comm** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %8 = load %struct.comm*, %struct.comm** %6, align 8
  %9 = getelementptr inbounds %struct.comm, %struct.comm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %18

13:                                               ; preds = %3
  %14 = load %struct.db_export*, %struct.db_export** %5, align 8
  %15 = load %struct.comm*, %struct.comm** %6, align 8
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = call i32 @__db_export__comm(%struct.db_export* %14, %struct.comm* %15, %struct.thread* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @__db_export__comm(%struct.db_export*, %struct.comm*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
