; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_assert_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_assert_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32, i64 (i8*)* }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i8*, %struct.debug_obj_descr*, i32 }

@debug_objects_enabled = common dso_local global i32 0, align 4
@ODEBUG_STATE_NOTAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"assert_init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_object_assert_init(i8* %0, %struct.debug_obj_descr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debug_obj_descr*, align 8
  %5 = alloca %struct.debug_bucket*, align 8
  %6 = alloca %struct.debug_obj*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.debug_obj, align 8
  store i8* %0, i8** %3, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %4, align 8
  %9 = load i32, i32* @debug_objects_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %65

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call %struct.debug_bucket* @get_bucket(i64 %14)
  store %struct.debug_bucket* %15, %struct.debug_bucket** %5, align 8
  %16 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %17 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @raw_spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %22 = call %struct.debug_obj* @lookup_object(i8* %20, %struct.debug_bucket* %21)
  store %struct.debug_obj* %22, %struct.debug_obj** %6, align 8
  %23 = load %struct.debug_obj*, %struct.debug_obj** %6, align 8
  %24 = icmp ne %struct.debug_obj* %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %8, i32 0, i32 0
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %8, i32 0, i32 1
  %29 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  store %struct.debug_obj_descr* %29, %struct.debug_obj_descr** %28, align 8
  %30 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %8, i32 0, i32 2
  %31 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  store i32 %31, i32* %30, align 8
  %32 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %33 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %37 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %36, i32 0, i32 1
  %38 = load i64 (i8*)*, i64 (i8*)** %37, align 8
  %39 = icmp ne i64 (i8*)* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %25
  %41 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %42 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %41, i32 0, i32 1
  %43 = load i64 (i8*)*, i64 (i8*)** %42, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 %43(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %50 = call i32 @debug_object_init(i8* %48, %struct.debug_obj_descr* %49)
  br label %59

51:                                               ; preds = %40, %25
  %52 = call i32 @debug_print_object(%struct.debug_obj* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %54 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  %58 = call i32 @debug_object_fixup(i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %47
  br label %65

60:                                               ; preds = %12
  %61 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %62 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %61, i32 0, i32 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @raw_spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %59, %11
  ret void
}

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_object_init(i8*, %struct.debug_obj_descr*) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
