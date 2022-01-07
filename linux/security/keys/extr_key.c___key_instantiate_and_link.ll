; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c___key_instantiate_and_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c___key_instantiate_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i64 }
%struct.key = type { i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.key*, %struct.key_preparsed_payload*)* }
%struct.assoc_array_edit = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@key_construction_mutex = common dso_local global i32 0, align 4
@KEY_IS_UNINSTANTIATED = common dso_local global i64 0, align 8
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@KEY_FLAG_KEEP = common dso_local global i32 0, align 4
@TIME64_MAX = common dso_local global i64 0, align 8
@key_gc_delay = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_preparsed_payload*, %struct.key*, %struct.key*, %struct.assoc_array_edit**)* @__key_instantiate_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__key_instantiate_and_link(%struct.key* %0, %struct.key_preparsed_payload* %1, %struct.key* %2, %struct.key* %3, %struct.assoc_array_edit** %4) #0 {
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key_preparsed_payload*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.assoc_array_edit**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %6, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %7, align 8
  store %struct.key* %2, %struct.key** %8, align 8
  store %struct.key* %3, %struct.key** %9, align 8
  store %struct.assoc_array_edit** %4, %struct.assoc_array_edit*** %10, align 8
  %13 = load %struct.key*, %struct.key** %6, align 8
  %14 = call i32 @key_check(%struct.key* %13)
  %15 = load %struct.key*, %struct.key** %8, align 8
  %16 = call i32 @key_check(%struct.key* %15)
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = call i32 @mutex_lock(i32* @key_construction_mutex)
  %20 = load %struct.key*, %struct.key** %6, align 8
  %21 = getelementptr inbounds %struct.key, %struct.key* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KEY_IS_UNINSTANTIATED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %5
  %26 = load %struct.key*, %struct.key** %6, align 8
  %27 = getelementptr inbounds %struct.key, %struct.key* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.key*, %struct.key_preparsed_payload*)*, i32 (%struct.key*, %struct.key_preparsed_payload*)** %29, align 8
  %31 = load %struct.key*, %struct.key** %6, align 8
  %32 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %7, align 8
  %33 = call i32 %30(%struct.key* %31, %struct.key_preparsed_payload* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %25
  %37 = load %struct.key*, %struct.key** %6, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.key*, %struct.key** %6, align 8
  %43 = call i32 @mark_key_instantiated(%struct.key* %42, i32 0)
  %44 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %45 = load %struct.key*, %struct.key** %6, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %45, i32 0, i32 2
  %47 = call i64 @test_and_clear_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.key*, %struct.key** %8, align 8
  %52 = icmp ne %struct.key* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %55 = load %struct.key*, %struct.key** %8, align 8
  %56 = getelementptr inbounds %struct.key, %struct.key* %55, i32 0, i32 2
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %61 = load %struct.key*, %struct.key** %6, align 8
  %62 = getelementptr inbounds %struct.key, %struct.key* %61, i32 0, i32 2
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = load %struct.key*, %struct.key** %6, align 8
  %66 = load %struct.assoc_array_edit**, %struct.assoc_array_edit*** %10, align 8
  %67 = call i32 @__key_link(%struct.key* %65, %struct.assoc_array_edit** %66)
  br label %68

68:                                               ; preds = %64, %50
  %69 = load %struct.key*, %struct.key** %9, align 8
  %70 = icmp ne %struct.key* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.key*, %struct.key** %9, align 8
  %73 = call i32 @key_invalidate(%struct.key* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %7, align 8
  %76 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TIME64_MAX, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %7, align 8
  %82 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.key*, %struct.key** %6, align 8
  %85 = getelementptr inbounds %struct.key, %struct.key* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %7, align 8
  %87 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @key_gc_delay, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @key_schedule_gc(i64 %90)
  br label %92

92:                                               ; preds = %80, %74
  br label %93

93:                                               ; preds = %92, %25
  br label %94

94:                                               ; preds = %93, %5
  %95 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.key*, %struct.key** %6, align 8
  %100 = getelementptr inbounds %struct.key, %struct.key* %99, i32 0, i32 2
  %101 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %102 = call i32 @wake_up_bit(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mark_key_instantiated(%struct.key*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.assoc_array_edit**) #1

declare dso_local i32 @key_invalidate(%struct.key*) #1

declare dso_local i32 @key_schedule_gc(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
