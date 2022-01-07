; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_queue_full.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_vars = type { i32, i32, i8*, i8*, i64 }
%struct.cobalt_params = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cobalt_vars*, %struct.cobalt_params*, i8*)* @cobalt_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_queue_full(%struct.cobalt_vars* %0, %struct.cobalt_params* %1, i8* %2) #0 {
  %4 = alloca %struct.cobalt_vars*, align 8
  %5 = alloca %struct.cobalt_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.cobalt_vars* %0, %struct.cobalt_vars** %4, align 8
  store %struct.cobalt_params* %1, %struct.cobalt_params** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %10 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @ktime_sub(i8* %8, i8* %11)
  %13 = call i64 @ktime_to_ns(i32 %12)
  %14 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %15 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %3
  %19 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %20 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %26 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %29 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %33 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %36 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %18
  %40 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %41 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %40, i32 0, i32 4
  store i64 -1, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %18
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %45 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %3
  %47 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %48 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %51 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %53 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %58 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
