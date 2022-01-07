; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm_str__get.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm_str__get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_str = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comm_str* (%struct.comm_str*)* @comm_str__get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comm_str* @comm_str__get(%struct.comm_str* %0) #0 {
  %2 = alloca %struct.comm_str*, align 8
  %3 = alloca %struct.comm_str*, align 8
  store %struct.comm_str* %0, %struct.comm_str** %3, align 8
  %4 = load %struct.comm_str*, %struct.comm_str** %3, align 8
  %5 = icmp ne %struct.comm_str* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.comm_str*, %struct.comm_str** %3, align 8
  %8 = getelementptr inbounds %struct.comm_str, %struct.comm_str* %7, i32 0, i32 0
  %9 = call i64 @refcount_inc_not_zero(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load %struct.comm_str*, %struct.comm_str** %3, align 8
  store %struct.comm_str* %12, %struct.comm_str** %2, align 8
  br label %14

13:                                               ; preds = %6, %1
  store %struct.comm_str* null, %struct.comm_str** %2, align 8
  br label %14

14:                                               ; preds = %13, %11
  %15 = load %struct.comm_str*, %struct.comm_str** %2, align 8
  ret %struct.comm_str* %15
}

declare dso_local i64 @refcount_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
