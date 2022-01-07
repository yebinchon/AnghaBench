; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_kill_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_kill_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i64, i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"{OBJ%x,%d,%d},%d\00", align 1
@FSCACHE_OBJECT_RETIRED = common dso_local global i32 0, align 4
@FSCACHE_OBJECT_PENDING_WRITE = common dso_local global i32 0, align 4
@DROP_OBJECT = common dso_local global i32 0, align 4
@KILL_DEPENDENTS = common dso_local global i32 0, align 4
@WAIT_FOR_CLEARANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_kill_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_kill_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %7 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %10 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %13 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %11, i64 %14, i32 %15)
  %17 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %18 = call i32 @fscache_mark_object_dead(%struct.fscache_object* %17)
  %19 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %20 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @FSCACHE_OBJECT_RETIRED, align 4
  %22 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %23 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %22, i32 0, i32 5
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @FSCACHE_OBJECT_PENDING_WRITE, align 4
  %28 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %29 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %28, i32 0, i32 5
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %32 = call i32 @fscache_cancel_all_ops(%struct.fscache_object* %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %35 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %34, i32 0, i32 3
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %40 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %45 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @DROP_OBJECT, align 4
  %50 = call %struct.fscache_state* @transit_to(i32 %49)
  store %struct.fscache_state* %50, %struct.fscache_state** %3, align 8
  br label %87

51:                                               ; preds = %43, %38, %33
  %52 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %53 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %58 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %57, i32 0, i32 4
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %61 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %66 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %71 = call i32 @fscache_start_operations(%struct.fscache_object* %70)
  br label %72

72:                                               ; preds = %69, %64, %56
  %73 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %74 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %73, i32 0, i32 4
  %75 = call i32 @spin_unlock(i32* %74)
  br label %76

76:                                               ; preds = %72, %51
  %77 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %78 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %77, i32 0, i32 3
  %79 = call i64 @list_empty(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @KILL_DEPENDENTS, align 4
  %83 = call %struct.fscache_state* @transit_to(i32 %82)
  store %struct.fscache_state* %83, %struct.fscache_state** %3, align 8
  br label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @WAIT_FOR_CLEARANCE, align 4
  %86 = call %struct.fscache_state* @transit_to(i32 %85)
  store %struct.fscache_state* %86, %struct.fscache_state** %3, align 8
  br label %87

87:                                               ; preds = %84, %81, %48
  %88 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %88
}

declare dso_local i32 @_enter(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @fscache_mark_object_dead(%struct.fscache_object*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fscache_cancel_all_ops(%struct.fscache_object*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fscache_start_operations(%struct.fscache_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
