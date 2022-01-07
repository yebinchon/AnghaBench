; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c___debug_object_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c___debug_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32 }

@debug_objects_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.debug_obj_descr*, i32)* @__debug_object_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__debug_object_init(i8* %0, %struct.debug_obj_descr* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debug_obj_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.debug_bucket*, align 8
  %10 = alloca %struct.debug_obj*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = call i32 (...) @fill_pool()
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call %struct.debug_bucket* @get_bucket(i64 %14)
  store %struct.debug_bucket* %15, %struct.debug_bucket** %9, align 8
  %16 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %17 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %16, i32 0, i32 0
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @raw_spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %22 = call %struct.debug_obj* @lookup_object(i8* %20, %struct.debug_bucket* %21)
  store %struct.debug_obj* %22, %struct.debug_obj** %10, align 8
  %23 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %24 = icmp ne %struct.debug_obj* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %28 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %29 = call %struct.debug_obj* @alloc_object(i8* %26, %struct.debug_bucket* %27, %struct.debug_obj_descr* %28)
  store %struct.debug_obj* %29, %struct.debug_obj** %10, align 8
  %30 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %31 = icmp ne %struct.debug_obj* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  store i64 0, i64* @debug_objects_enabled, align 8
  %33 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %34 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = call i32 (...) @debug_objects_oom()
  br label %81

38:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %41 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %69 [
    i32 128, label %43
    i32 129, label %43
    i32 130, label %43
    i32 132, label %46
    i32 131, label %62
  ]

43:                                               ; preds = %39, %39, %39
  %44 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %45 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %44, i32 0, i32 0
  store i32 129, i32* %45, align 4
  br label %70

46:                                               ; preds = %39
  %47 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %48 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %51 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %50, i32 0, i32 0
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @raw_spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %55 = call i32 @debug_print_object(%struct.debug_obj* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %57 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @debug_object_fixup(i32 %58, i8* %59, i32 %60)
  br label %81

62:                                               ; preds = %39
  %63 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %64 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @raw_spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %68 = call i32 @debug_print_object(%struct.debug_obj* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %81

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %69, %43
  %71 = load %struct.debug_bucket*, %struct.debug_bucket** %9, align 8
  %72 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %71, i32 0, i32 0
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @raw_spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @debug_object_is_on_stack(i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %32, %46, %62, %77, %70
  ret void
}

declare dso_local i32 @fill_pool(...) #1

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local %struct.debug_obj* @alloc_object(i8*, %struct.debug_bucket*, %struct.debug_obj_descr*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_objects_oom(...) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

declare dso_local i32 @debug_object_is_on_stack(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
