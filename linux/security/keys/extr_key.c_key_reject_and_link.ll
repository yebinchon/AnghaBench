; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_reject_and_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_reject_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.assoc_array_edit = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@key_construction_mutex = common dso_local global i32 0, align 4
@KEY_IS_UNINSTANTIATED = common dso_local global i64 0, align 8
@key_gc_delay = common dso_local global i32 0, align 4
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_reject_and_link(%struct.key* %0, i32 %1, i32 %2, %struct.key* %3, %struct.key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.assoc_array_edit*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.key* %3, %struct.key** %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  store %struct.assoc_array_edit* null, %struct.assoc_array_edit** %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.key*, %struct.key** %7, align 8
  %17 = call i32 @key_check(%struct.key* %16)
  %18 = load %struct.key*, %struct.key** %10, align 8
  %19 = call i32 @key_check(%struct.key* %18)
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.key*, %struct.key** %10, align 8
  %23 = icmp ne %struct.key* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %5
  %25 = load %struct.key*, %struct.key** %10, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %134

32:                                               ; preds = %24
  %33 = load %struct.key*, %struct.key** %10, align 8
  %34 = load %struct.key*, %struct.key** %7, align 8
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 3
  %36 = call i32 @__key_link_lock(%struct.key* %33, i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.key*, %struct.key** %10, align 8
  %41 = load %struct.key*, %struct.key** %7, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 3
  %43 = call i32 @__key_link_begin(%struct.key* %40, i32* %42, %struct.assoc_array_edit** %12)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.key*, %struct.key** %10, align 8
  %48 = load %struct.key*, %struct.key** %7, align 8
  %49 = getelementptr inbounds %struct.key, %struct.key* %48, i32 0, i32 3
  %50 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %12, align 8
  %51 = call i32 @__key_link_end(%struct.key* %47, i32* %49, %struct.assoc_array_edit* %50)
  br label %52

52:                                               ; preds = %46, %39
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %5
  %55 = call i32 @mutex_lock(i32* @key_construction_mutex)
  %56 = load %struct.key*, %struct.key** %7, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @KEY_IS_UNINSTANTIATED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %54
  %62 = load %struct.key*, %struct.key** %7, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @atomic_inc(i32* %65)
  %67 = load %struct.key*, %struct.key** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub i32 0, %68
  %70 = call i32 @mark_key_instantiated(%struct.key* %67, i32 %69)
  %71 = call i32 (...) @ktime_get_real_seconds()
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %71, %72
  %74 = load %struct.key*, %struct.key** %7, align 8
  %75 = getelementptr inbounds %struct.key, %struct.key* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.key*, %struct.key** %7, align 8
  %77 = getelementptr inbounds %struct.key, %struct.key* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @key_gc_delay, align 4
  %80 = add i32 %78, %79
  %81 = call i32 @key_schedule_gc(i32 %80)
  %82 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %83 = load %struct.key*, %struct.key** %7, align 8
  %84 = getelementptr inbounds %struct.key, %struct.key* %83, i32 0, i32 2
  %85 = call i64 @test_and_clear_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %61
  store i32 0, i32* %13, align 4
  %89 = load %struct.key*, %struct.key** %10, align 8
  %90 = icmp ne %struct.key* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.key*, %struct.key** %7, align 8
  %96 = call i32 @__key_link(%struct.key* %95, %struct.assoc_array_edit** %12)
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load %struct.key*, %struct.key** %11, align 8
  %99 = icmp ne %struct.key* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.key*, %struct.key** %11, align 8
  %102 = call i32 @key_invalidate(%struct.key* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %54
  %105 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %106 = load %struct.key*, %struct.key** %10, align 8
  %107 = icmp ne %struct.key* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.key*, %struct.key** %10, align 8
  %113 = load %struct.key*, %struct.key** %7, align 8
  %114 = getelementptr inbounds %struct.key, %struct.key* %113, i32 0, i32 3
  %115 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %12, align 8
  %116 = call i32 @__key_link_end(%struct.key* %112, i32* %114, %struct.assoc_array_edit* %115)
  br label %117

117:                                              ; preds = %111, %108, %104
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.key*, %struct.key** %7, align 8
  %122 = getelementptr inbounds %struct.key, %struct.key* %121, i32 0, i32 2
  %123 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %124 = call i32 @wake_up_bit(i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %13, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %29
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @__key_link_lock(%struct.key*, i32*) #1

declare dso_local i32 @__key_link_begin(%struct.key*, i32*, %struct.assoc_array_edit**) #1

declare dso_local i32 @__key_link_end(%struct.key*, i32*, %struct.assoc_array_edit*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mark_key_instantiated(%struct.key*, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @key_schedule_gc(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.assoc_array_edit**) #1

declare dso_local i32 @key_invalidate(%struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
