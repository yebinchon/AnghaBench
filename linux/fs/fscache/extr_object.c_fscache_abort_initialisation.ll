; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_abort_initialisation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_abort_initialisation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@KILL_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_abort_initialisation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_abort_initialisation(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %6 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %11 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %13 = call i32 @fscache_dequeue_object(%struct.fscache_object* %12)
  %14 = load i32, i32* @KILL_OBJECT, align 4
  %15 = call %struct.fscache_state* @transit_to(i32 %14)
  ret %struct.fscache_state* %15
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @fscache_dequeue_object(%struct.fscache_object*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
