; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_parent_ready.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_parent_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i32, i32, i32, i32, i32, %struct.fscache_object* }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOOK_UP_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_parent_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_parent_ready(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscache_object*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %7 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %6, i32 0, i32 5
  %8 = load %struct.fscache_object*, %struct.fscache_object** %7, align 8
  store %struct.fscache_object* %8, %struct.fscache_object** %5, align 8
  %9 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %10 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %15 = icmp ne %struct.fscache_object* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %19 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %22 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %26 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %31 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %33 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @LOOK_UP_OBJECT, align 4
  %37 = call %struct.fscache_state* @transit_to(i32 %36)
  ret %struct.fscache_state* %37
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
