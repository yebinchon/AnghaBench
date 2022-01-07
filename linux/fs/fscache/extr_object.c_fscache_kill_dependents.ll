; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_kill_dependents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_kill_dependents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@FSCACHE_OBJECT_EV_KILL = common dso_local global i32 0, align 4
@NO_TRANSIT = common dso_local global %struct.fscache_state* null, align 8
@WAIT_FOR_CLEARANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_kill_dependents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_kill_dependents(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %7 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %12 = load i32, i32* @FSCACHE_OBJECT_EV_KILL, align 4
  %13 = call i32 @fscache_enqueue_dependents(%struct.fscache_object* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load %struct.fscache_state*, %struct.fscache_state** @NO_TRANSIT, align 8
  store %struct.fscache_state* %16, %struct.fscache_state** %3, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @WAIT_FOR_CLEARANCE, align 4
  %19 = call %struct.fscache_state* @transit_to(i32 %18)
  store %struct.fscache_state* %19, %struct.fscache_state** %3, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %21
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @fscache_enqueue_dependents(%struct.fscache_object*, i32) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
