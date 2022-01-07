; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_active_state.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_active_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32, i32, i8*, %struct.debug_obj_descr* }

@debug_objects_enabled = common dso_local global i32 0, align 4
@ODEBUG_STATE_NOTAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"active_state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_object_active_state(i8* %0, %struct.debug_obj_descr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_obj_descr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.debug_bucket*, align 8
  %10 = alloca %struct.debug_obj*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.debug_obj, align 8
  store i8* %0, i8** %5, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @debug_objects_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %71

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = call %struct.debug_bucket* @get_bucket(i64 %19)
  store %struct.debug_bucket* %20, %struct.debug_bucket** %9, align 8
  %21 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %22 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %21, i32 0, i32 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @raw_spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %27 = call %struct.debug_obj* @lookup_object(i8* %25, %struct.debug_bucket* %26)
  store %struct.debug_obj* %27, %struct.debug_obj** %10, align 8
  %28 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %29 = icmp ne %struct.debug_obj* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %17
  %31 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %32 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %46 [
    i32 128, label %34
  ]

34:                                               ; preds = %30
  %35 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %36 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %43 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %45

44:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %40
  br label %47

46:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %50 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %49, i32 0, i32 0
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @raw_spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %54 = icmp ne %struct.debug_obj* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %13, i32 0, i32 0
  %57 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %13, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %13, i32 0, i32 2
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %59, align 8
  %61 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %13, i32 0, i32 3
  %62 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %6, align 8
  store %struct.debug_obj_descr* %62, %struct.debug_obj_descr** %61, align 8
  %63 = call i32 @debug_print_object(%struct.debug_obj* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %71

64:                                               ; preds = %48
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %69 = call i32 @debug_print_object(%struct.debug_obj* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %16, %70, %55
  ret void
}

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
