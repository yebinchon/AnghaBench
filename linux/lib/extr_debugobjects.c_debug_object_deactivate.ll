; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32, i8*, %struct.debug_obj_descr*, i32 }

@debug_objects_enabled = common dso_local global i32 0, align 4
@ODEBUG_STATE_NOTAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_object_deactivate(i8* %0, %struct.debug_obj_descr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debug_obj_descr*, align 8
  %5 = alloca %struct.debug_bucket*, align 8
  %6 = alloca %struct.debug_obj*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.debug_obj, align 8
  store i8* %0, i8** %3, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @debug_objects_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = call %struct.debug_bucket* @get_bucket(i64 %15)
  store %struct.debug_bucket* %16, %struct.debug_bucket** %5, align 8
  %17 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %18 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %23 = call %struct.debug_obj* @lookup_object(i8* %21, %struct.debug_bucket* %22)
  store %struct.debug_obj* %23, %struct.debug_obj** %6, align 8
  %24 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %25 = icmp ne %struct.debug_obj* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %13
  %27 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %28 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %41 [
    i32 128, label %30
    i32 129, label %30
    i32 131, label %30
    i32 130, label %40
  ]

30:                                               ; preds = %26, %26, %26
  %31 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %32 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %37 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %36, i32 0, i32 0
  store i32 129, i32* %37, align 8
  br label %39

38:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %42

40:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %42

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %40, %39
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %45 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @raw_spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %49 = icmp ne %struct.debug_obj* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %9, i32 0, i32 0
  %52 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  store i32 %52, i32* %51, align 8
  %53 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %9, i32 0, i32 1
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** %53, align 8
  %55 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %9, i32 0, i32 2
  %56 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  store %struct.debug_obj_descr* %56, %struct.debug_obj_descr** %55, align 8
  %57 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %9, i32 0, i32 3
  store i32 0, i32* %57, align 8
  %58 = call i32 @debug_print_object(%struct.debug_obj* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %66

59:                                               ; preds = %43
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %64 = call i32 @debug_print_object(%struct.debug_obj* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %12, %65, %50
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
