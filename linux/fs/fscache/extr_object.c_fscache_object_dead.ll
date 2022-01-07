; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_dead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i32 }

@FSCACHE_OBJECT_RUN_AFTER_DEAD = common dso_local global i32 0, align 4
@NO_TRANSIT = common dso_local global %struct.fscache_state* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"FS-Cache object redispatched after death\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_object_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_object_dead(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @FSCACHE_OBJECT_RUN_AFTER_DEAD, align 4
  %7 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %8 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %7, i32 0, i32 0
  %9 = call i32 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.fscache_state*, %struct.fscache_state** @NO_TRANSIT, align 8
  store %struct.fscache_state* %12, %struct.fscache_state** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.fscache_state*, %struct.fscache_state** @NO_TRANSIT, align 8
  store %struct.fscache_state* %15, %struct.fscache_state** %3, align 8
  br label %16

16:                                               ; preds = %13, %11
  %17 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %17
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
