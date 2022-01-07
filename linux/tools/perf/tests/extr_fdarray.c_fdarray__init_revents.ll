; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_fdarray.c_fdarray__init_revents.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_fdarray.c_fdarray__init_revents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdarray = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdarray*, i16)* @fdarray__init_revents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdarray__init_revents(%struct.fdarray* %0, i16 signext %1) #0 {
  %3 = alloca %struct.fdarray*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.fdarray* %0, %struct.fdarray** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.fdarray*, %struct.fdarray** %3, align 8
  %7 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fdarray*, %struct.fdarray** %3, align 8
  %10 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.fdarray*, %struct.fdarray** %3, align 8
  %14 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.fdarray*, %struct.fdarray** %3, align 8
  %19 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load %struct.fdarray*, %struct.fdarray** %3, align 8
  %24 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  %30 = load i16, i16* %4, align 2
  %31 = load %struct.fdarray*, %struct.fdarray** %3, align 8
  %32 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i16 %30, i16* %37, align 4
  br label %38

38:                                               ; preds = %17
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
