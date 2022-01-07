; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lock_pin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lock_pin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pin_cookie = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lockdep_map = type { i32 }

@NIL_COOKIE = common dso_local global %struct.pin_cookie zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_pin_lock(%struct.lockdep_map* %0) #0 {
  %2 = alloca %struct.pin_cookie, align 4
  %3 = alloca %struct.lockdep_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pin_cookie, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %3, align 8
  %6 = bitcast %struct.pin_cookie* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.pin_cookie* @NIL_COOKIE to i8*), i64 4, i1 false)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @raw_local_irq_save(i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @check_flags(i64 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %21 = call i32 @__lock_pin_lock(%struct.lockdep_map* %20)
  %22 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.pin_cookie* %2 to i8*
  %24 = bitcast %struct.pin_cookie* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @raw_local_irq_restore(i64 %27)
  br label %29

29:                                               ; preds = %13, %12
  %30 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @raw_local_irq_save(i64) #2

declare dso_local i32 @check_flags(i64) #2

declare dso_local i32 @__lock_pin_lock(%struct.lockdep_map*) #2

declare dso_local i32 @raw_local_irq_restore(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
