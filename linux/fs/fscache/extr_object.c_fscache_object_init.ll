; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_transition = type { i32 }
%struct.fscache_object = type { i32, i32, i32, %struct.TYPE_2__*, %struct.fscache_transition*, i32, i32*, %struct.fscache_cookie*, %struct.fscache_cache*, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.fscache_transition* }
%struct.fscache_cookie = type { i32 }
%struct.fscache_cache = type { i32 }

@WAIT_FOR_INIT = common dso_local global i32 0, align 4
@fscache_osm_init_oob = common dso_local global %struct.fscache_transition* null, align 8
@FSCACHE_OBJECT_IS_LIVE = common dso_local global i32 0, align 4
@fscache_object_work_func = common dso_local global i32 0, align 4
@fscache_cookie_get_attach_object = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_object_init(%struct.fscache_object* %0, %struct.fscache_cookie* %1, %struct.fscache_cache* %2) #0 {
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca %struct.fscache_cache*, align 8
  %7 = alloca %struct.fscache_transition*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store %struct.fscache_cookie* %1, %struct.fscache_cookie** %5, align 8
  store %struct.fscache_cache* %2, %struct.fscache_cache** %6, align 8
  %8 = load %struct.fscache_cache*, %struct.fscache_cache** %6, align 8
  %9 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %8, i32 0, i32 0
  %10 = call i32 @atomic_inc(i32* %9)
  %11 = load i32, i32* @WAIT_FOR_INIT, align 4
  %12 = call %struct.TYPE_2__* @STATE(i32 %11)
  %13 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %14 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %13, i32 0, i32 3
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.fscache_transition*, %struct.fscache_transition** @fscache_osm_init_oob, align 8
  %16 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %17 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %16, i32 0, i32 4
  store %struct.fscache_transition* %15, %struct.fscache_transition** %17, align 8
  %18 = load i32, i32* @FSCACHE_OBJECT_IS_LIVE, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %21 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %23 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %22, i32 0, i32 22
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %26 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %25, i32 0, i32 21
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %29 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %28, i32 0, i32 20
  %30 = call i32 @INIT_HLIST_NODE(i32* %29)
  %31 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %32 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %31, i32 0, i32 19
  %33 = load i32, i32* @fscache_object_work_func, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  %35 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %36 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %35, i32 0, i32 18
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %39 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %38, i32 0, i32 17
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %42 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %41, i32 0, i32 16
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %45 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %44, i32 0, i32 15
  store i64 0, i64* %45, align 8
  %46 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %47 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %49 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %48, i32 0, i32 13
  store i64 0, i64* %49, align 8
  %50 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %51 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %50, i32 0, i32 14
  store i64 0, i64* %51, align 8
  %52 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %53 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %52, i32 0, i32 11
  store i64 0, i64* %53, align 8
  %54 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %55 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %54, i32 0, i32 10
  store i64 0, i64* %55, align 8
  %56 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %57 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %56, i32 0, i32 9
  store i64 0, i64* %57, align 8
  %58 = load %struct.fscache_cache*, %struct.fscache_cache** %6, align 8
  %59 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %60 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %59, i32 0, i32 8
  store %struct.fscache_cache* %58, %struct.fscache_cache** %60, align 8
  %61 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %62 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %63 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %62, i32 0, i32 7
  store %struct.fscache_cookie* %61, %struct.fscache_cookie** %63, align 8
  %64 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %65 = load i32, i32* @fscache_cookie_get_attach_object, align 4
  %66 = call i32 @fscache_cookie_get(%struct.fscache_cookie* %64, i32 %65)
  %67 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %68 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %67, i32 0, i32 6
  store i32* null, i32** %68, align 8
  %69 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %70 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %72 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %71, i32 0, i32 4
  %73 = load %struct.fscache_transition*, %struct.fscache_transition** %72, align 8
  store %struct.fscache_transition* %73, %struct.fscache_transition** %7, align 8
  br label %74

74:                                               ; preds = %87, %3
  %75 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %76 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %81 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %84 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %89 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %88, i32 1
  store %struct.fscache_transition* %89, %struct.fscache_transition** %7, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %92 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %95 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %97 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.fscache_transition*, %struct.fscache_transition** %99, align 8
  store %struct.fscache_transition* %100, %struct.fscache_transition** %7, align 8
  br label %101

101:                                              ; preds = %114, %90
  %102 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %103 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %108 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %111 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %106
  %115 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %116 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %115, i32 1
  store %struct.fscache_transition* %116, %struct.fscache_transition** %7, align 8
  br label %101

117:                                              ; preds = %101
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_2__* @STATE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fscache_cookie_get(%struct.fscache_cookie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
