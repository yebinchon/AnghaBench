; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_namespaces__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_namespaces__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespaces = type { i32, i32 }
%struct.perf_record_namespaces = type { i32, i32 }

@NR_NAMESPACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.namespaces* @namespaces__new(%struct.perf_record_namespaces* %0) #0 {
  %2 = alloca %struct.namespaces*, align 8
  %3 = alloca %struct.perf_record_namespaces*, align 8
  %4 = alloca %struct.namespaces*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_record_namespaces* %0, %struct.perf_record_namespaces** %3, align 8
  %6 = load %struct.perf_record_namespaces*, %struct.perf_record_namespaces** %3, align 8
  %7 = icmp ne %struct.perf_record_namespaces* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.perf_record_namespaces*, %struct.perf_record_namespaces** %3, align 8
  %10 = getelementptr inbounds %struct.perf_record_namespaces, %struct.perf_record_namespaces* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @NR_NAMESPACES, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.namespaces* @zalloc(i32 %22)
  store %struct.namespaces* %23, %struct.namespaces** %4, align 8
  %24 = load %struct.namespaces*, %struct.namespaces** %4, align 8
  %25 = icmp ne %struct.namespaces* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store %struct.namespaces* null, %struct.namespaces** %2, align 8
  br label %43

27:                                               ; preds = %14
  %28 = load %struct.namespaces*, %struct.namespaces** %4, align 8
  %29 = getelementptr inbounds %struct.namespaces, %struct.namespaces* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  %30 = load %struct.perf_record_namespaces*, %struct.perf_record_namespaces** %3, align 8
  %31 = icmp ne %struct.perf_record_namespaces* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.namespaces*, %struct.namespaces** %4, align 8
  %34 = getelementptr inbounds %struct.namespaces, %struct.namespaces* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.perf_record_namespaces*, %struct.perf_record_namespaces** %3, align 8
  %37 = getelementptr inbounds %struct.perf_record_namespaces, %struct.perf_record_namespaces* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @memcpy(i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.namespaces*, %struct.namespaces** %4, align 8
  store %struct.namespaces* %42, %struct.namespaces** %2, align 8
  br label %43

43:                                               ; preds = %41, %26
  %44 = load %struct.namespaces*, %struct.namespaces** %2, align 8
  ret %struct.namespaces* %44
}

declare dso_local %struct.namespaces* @zalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
