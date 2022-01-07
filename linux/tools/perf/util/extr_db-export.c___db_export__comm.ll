; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c___db_export__comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c___db_export__comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 (%struct.db_export*, %struct.comm*, %struct.thread*)*, i64 }
%struct.comm = type opaque
%struct.comm.0 = type { i64 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_export*, %struct.comm.0*, %struct.thread*)* @__db_export__comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__db_export__comm(%struct.db_export* %0, %struct.comm.0* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_export*, align 8
  %6 = alloca %struct.comm.0*, align 8
  %7 = alloca %struct.thread*, align 8
  store %struct.db_export* %0, %struct.db_export** %5, align 8
  store %struct.comm.0* %1, %struct.comm.0** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %8 = load %struct.db_export*, %struct.db_export** %5, align 8
  %9 = getelementptr inbounds %struct.db_export, %struct.db_export* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.comm.0*, %struct.comm.0** %6, align 8
  %13 = getelementptr inbounds %struct.comm.0, %struct.comm.0* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.db_export*, %struct.db_export** %5, align 8
  %15 = getelementptr inbounds %struct.db_export, %struct.db_export* %14, i32 0, i32 0
  %16 = load i32 (%struct.db_export*, %struct.comm*, %struct.thread*)*, i32 (%struct.db_export*, %struct.comm*, %struct.thread*)** %15, align 8
  %17 = icmp ne i32 (%struct.db_export*, %struct.comm*, %struct.thread*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.db_export*, %struct.db_export** %5, align 8
  %20 = getelementptr inbounds %struct.db_export, %struct.db_export* %19, i32 0, i32 0
  %21 = load i32 (%struct.db_export*, %struct.comm*, %struct.thread*)*, i32 (%struct.db_export*, %struct.comm*, %struct.thread*)** %20, align 8
  %22 = load %struct.db_export*, %struct.db_export** %5, align 8
  %23 = load %struct.comm.0*, %struct.comm.0** %6, align 8
  %24 = bitcast %struct.comm.0* %23 to %struct.comm*
  %25 = load %struct.thread*, %struct.thread** %7, align 8
  %26 = call i32 %21(%struct.db_export* %22, %struct.comm* %24, %struct.thread* %25)
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
