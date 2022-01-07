; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c___free_object.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c___free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj = type { i32 }
%struct.debug_percpu_free = type { i64, i32 }

@ODEBUG_BATCH_SIZE = common dso_local global i32 0, align 4
@obj_cache = common dso_local global i64 0, align 8
@percpu_obj_pool = common dso_local global i32 0, align 4
@ODEBUG_POOL_PERCPU_SIZE = common dso_local global i64 0, align 8
@pool_lock = common dso_local global i32 0, align 4
@obj_pool_free = common dso_local global i64 0, align 8
@debug_objects_pool_size = common dso_local global i64 0, align 8
@obj_nr_tofree = common dso_local global i64 0, align 8
@ODEBUG_FREE_WORK_MAX = common dso_local global i64 0, align 8
@obj_pool_used = common dso_local global i64 0, align 8
@obj_to_free = common dso_local global i32 0, align 4
@obj_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debug_obj*)* @__free_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_object(%struct.debug_obj* %0) #0 {
  %2 = alloca %struct.debug_obj*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.debug_percpu_free*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.debug_obj* %0, %struct.debug_obj** %2, align 8
  %11 = load i32, i32* @ODEBUG_BATCH_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca %struct.debug_obj*, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load i64, i64* @obj_cache, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %66

20:                                               ; preds = %1
  %21 = call %struct.debug_percpu_free* @this_cpu_ptr(i32* @percpu_obj_pool)
  store %struct.debug_percpu_free* %21, %struct.debug_percpu_free** %5, align 8
  %22 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %5, align 8
  %23 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ODEBUG_POOL_PERCPU_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.debug_obj*, %struct.debug_obj** %2, align 8
  %29 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %28, i32 0, i32 0
  %30 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %5, align 8
  %31 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %30, i32 0, i32 1
  %32 = call i32 @hlist_add_head(i32* %29, i32* %31)
  %33 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %5, align 8
  %34 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  store i32 1, i32* %9, align 4
  br label %175

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ODEBUG_BATCH_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %5, align 8
  %46 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %45, i32 0, i32 1
  %47 = call %struct.debug_obj* @__alloc_object(i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.debug_obj*, %struct.debug_obj** %14, i64 %49
  store %struct.debug_obj* %47, %struct.debug_obj** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.debug_obj*, %struct.debug_obj** %14, i64 %52
  %54 = load %struct.debug_obj*, %struct.debug_obj** %53, align 8
  %55 = icmp ne %struct.debug_obj* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %5, align 8
  %59 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %40

65:                                               ; preds = %56, %40
  br label %66

66:                                               ; preds = %65, %19
  %67 = call i32 @raw_spin_lock(i32* @pool_lock)
  %68 = load i64, i64* @obj_pool_free, align 8
  %69 = load i64, i64* @debug_objects_pool_size, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i64, i64* @obj_cache, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* @obj_nr_tofree, align 8
  %76 = load i64, i64* @ODEBUG_FREE_WORK_MAX, align 8
  %77 = icmp slt i64 %75, %76
  br label %78

78:                                               ; preds = %74, %71, %66
  %79 = phi i1 [ false, %71 ], [ false, %66 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i64, i64* @obj_pool_used, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* @obj_pool_used, align 8
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %141

85:                                               ; preds = %78
  %86 = load i64, i64* @obj_nr_tofree, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* @obj_nr_tofree, align 8
  %88 = load %struct.debug_obj*, %struct.debug_obj** %2, align 8
  %89 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %88, i32 0, i32 0
  %90 = call i32 @hlist_add_head(i32* %89, i32* @obj_to_free)
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @obj_nr_tofree, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* @obj_nr_tofree, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @obj_pool_used, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* @obj_pool_used, align 8
  br label %102

102:                                              ; preds = %105, %93
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.debug_obj*, %struct.debug_obj** %14, i64 %108
  %110 = load %struct.debug_obj*, %struct.debug_obj** %109, align 8
  %111 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %110, i32 0, i32 0
  %112 = call i32 @hlist_add_head(i32* %111, i32* @obj_to_free)
  br label %102

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i64, i64* @obj_pool_free, align 8
  %116 = load i64, i64* @debug_objects_pool_size, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load i64, i64* @obj_nr_tofree, align 8
  %120 = load i64, i64* @ODEBUG_FREE_WORK_MAX, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %136, %122
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @ODEBUG_BATCH_SIZE, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = call %struct.debug_obj* @__alloc_object(i32* @obj_pool)
  store %struct.debug_obj* %128, %struct.debug_obj** %2, align 8
  %129 = load %struct.debug_obj*, %struct.debug_obj** %2, align 8
  %130 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %129, i32 0, i32 0
  %131 = call i32 @hlist_add_head(i32* %130, i32* @obj_to_free)
  %132 = load i64, i64* @obj_pool_free, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* @obj_pool_free, align 8
  %134 = load i64, i64* @obj_nr_tofree, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* @obj_nr_tofree, align 8
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %123

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139, %118, %114
  br label %171

141:                                              ; preds = %78
  %142 = load i64, i64* @obj_pool_free, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* @obj_pool_free, align 8
  %144 = load %struct.debug_obj*, %struct.debug_obj** %2, align 8
  %145 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %144, i32 0, i32 0
  %146 = call i32 @hlist_add_head(i32* %145, i32* @obj_pool)
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %141
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* @obj_pool_free, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* @obj_pool_free, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @obj_pool_used, align 8
  %157 = sub nsw i64 %156, %155
  store i64 %157, i64* @obj_pool_used, align 8
  br label %158

158:                                              ; preds = %161, %149
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.debug_obj*, %struct.debug_obj** %14, i64 %164
  %166 = load %struct.debug_obj*, %struct.debug_obj** %165, align 8
  %167 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %166, i32 0, i32 0
  %168 = call i32 @hlist_add_head(i32* %167, i32* @obj_pool)
  br label %158

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %141
  br label %171

171:                                              ; preds = %170, %140
  %172 = call i32 @raw_spin_unlock(i32* @pool_lock)
  %173 = load i64, i64* %7, align 8
  %174 = call i32 @local_irq_restore(i64 %173)
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %171, %27
  %176 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %9, align 4
  switch i32 %177, label %179 [
    i32 0, label %178
    i32 1, label %178
  ]

178:                                              ; preds = %175, %175
  ret void

179:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local %struct.debug_percpu_free* @this_cpu_ptr(i32*) #2

declare dso_local i32 @hlist_add_head(i32*, i32*) #2

declare dso_local i32 @local_irq_restore(i64) #2

declare dso_local %struct.debug_obj* @__alloc_object(i32*) #2

declare dso_local i32 @raw_spin_lock(i32*) #2

declare dso_local i32 @raw_spin_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
