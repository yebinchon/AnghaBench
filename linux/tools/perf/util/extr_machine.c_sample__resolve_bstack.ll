; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_sample__resolve_bstack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_sample__resolve_bstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_info = type { i32, i32, i32 }
%struct.perf_sample = type { %struct.branch_stack* }
%struct.branch_stack = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.addr_location = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample* %0, %struct.addr_location* %1) #0 {
  %3 = alloca %struct.branch_info*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.branch_stack*, align 8
  %8 = alloca %struct.branch_info*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %9 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %10 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 0
  %11 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  store %struct.branch_stack* %11, %struct.branch_stack** %7, align 8
  %12 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %13 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.branch_info* @calloc(i32 %14, i32 12)
  store %struct.branch_info* %15, %struct.branch_info** %8, align 8
  %16 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %17 = icmp ne %struct.branch_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.branch_info* null, %struct.branch_info** %3, align 8
  br label %79

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %23 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %30, i64 %32
  %34 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %33, i32 0, i32 2
  %35 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %36 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ip__resolve_ams(i32 %29, i32* %34, i32 %42)
  %44 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %45 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %47, i64 %49
  %51 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %50, i32 0, i32 1
  %52 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %53 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ip__resolve_ams(i32 %46, i32* %51, i32 %59)
  %61 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %62 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %69, i64 %71
  %73 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %26
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  store %struct.branch_info* %78, %struct.branch_info** %3, align 8
  br label %79

79:                                               ; preds = %77, %18
  %80 = load %struct.branch_info*, %struct.branch_info** %3, align 8
  ret %struct.branch_info* %80
}

declare dso_local %struct.branch_info* @calloc(i32, i32) #1

declare dso_local i32 @ip__resolve_ams(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
