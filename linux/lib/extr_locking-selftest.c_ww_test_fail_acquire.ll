; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_ww_test_fail_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_ww_test_fail_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@t = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@o = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@EALREADY = common dso_local global i32 0, align 4
@t2 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ww_test_fail_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ww_test_fail_acquire() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @WWAI(%struct.TYPE_9__* @t)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @t, i32 0, i32 0), align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @t, i32 0, i32 0), align 4
  %5 = call i32 @WWL(%struct.TYPE_10__* @o, %struct.TYPE_9__* @t)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @o, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %0
  br label %42

17:                                               ; preds = %12
  %18 = call i32 @WWL(%struct.TYPE_10__* @o, %struct.TYPE_9__* @t)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @EALREADY, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = call i32 @WWT(%struct.TYPE_10__* @o)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @WARN_ON(i32 %26)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* @t2 to i8*), i8* align 4 bitcast (%struct.TYPE_9__* @t to i8*), i64 4, i1 false)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @t2, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @t2, i32 0, i32 0), align 4
  %30 = call i32 @WWL(%struct.TYPE_10__* @o, %struct.TYPE_9__* @t2)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @EDEADLK, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = call i32 @WWU(%struct.TYPE_10__* @o)
  %38 = call i32 @WWT(%struct.TYPE_10__* @o)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  %41 = call i32 @WWU(%struct.TYPE_10__* @o)
  br label %42

42:                                               ; preds = %16, %40, %17
  ret void
}

declare dso_local i32 @WWAI(%struct.TYPE_9__*) #1

declare dso_local i32 @WWL(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @WWT(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WWU(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
