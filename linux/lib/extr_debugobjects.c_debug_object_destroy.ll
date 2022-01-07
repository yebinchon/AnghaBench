; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32 }

@debug_objects_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_object_destroy(i8* %0, %struct.debug_obj_descr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debug_obj_descr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_bucket*, align 8
  %7 = alloca %struct.debug_obj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @debug_objects_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %63

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = call %struct.debug_bucket* @get_bucket(i64 %15)
  store %struct.debug_bucket* %16, %struct.debug_bucket** %6, align 8
  %17 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %18 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %23 = call %struct.debug_obj* @lookup_object(i8* %21, %struct.debug_bucket* %22)
  store %struct.debug_obj* %23, %struct.debug_obj** %7, align 8
  %24 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %25 = icmp ne %struct.debug_obj* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %53

27:                                               ; preds = %13
  %28 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %29 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %51 [
    i32 128, label %31
    i32 129, label %31
    i32 130, label %31
    i32 132, label %34
    i32 131, label %50
  ]

31:                                               ; preds = %27, %27, %27
  %32 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %33 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %32, i32 0, i32 0
  store i32 131, i32* %33, align 4
  br label %52

34:                                               ; preds = %27
  %35 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %36 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %39 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @raw_spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %43 = call i32 @debug_print_object(%struct.debug_obj* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %45 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @debug_object_fixup(i32 %46, i8* %47, i32 %48)
  br label %63

50:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %52

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %50, %31
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %55 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @raw_spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %62 = call i32 @debug_print_object(%struct.debug_obj* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %12, %34, %60, %53
  ret void
}

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
