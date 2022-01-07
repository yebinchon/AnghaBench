; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_assign_lock_key.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_assign_lock_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockdep_map = type { i8* }

@.str = private unnamed_addr constant [42 x i8] c"INFO: trying to register non-static key.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"the code is fine but needs lockdep annotation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"turning off the locking correctness validator.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*)* @assign_lock_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_lock_key(%struct.lockdep_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lockdep_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %3, align 8
  %6 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %7 = ptrtoint %struct.lockdep_map* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @__is_kernel_percpu_address(i64 %8, i64* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %15 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %42

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @__is_module_percpu_address(i64 %17, i64* %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %24 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %27 = call i64 @static_obj(%struct.lockdep_map* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %31 = bitcast %struct.lockdep_map* %30 to i8*
  %32 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %33 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %40

34:                                               ; preds = %25
  %35 = call i32 (...) @debug_locks_off()
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @dump_stack()
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %11
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @__is_kernel_percpu_address(i64, i64*) #1

declare dso_local i64 @__is_module_percpu_address(i64, i64*) #1

declare dso_local i64 @static_obj(%struct.lockdep_map*) #1

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
