; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_refcount.c_refcount_add_not_zero_checked.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_refcount.c_refcount_add_not_zero_checked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"refcount_t: saturated; leaking memory.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refcount_add_not_zero_checked(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %46

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %46

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @UINT_MAX, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @atomic_try_cmpxchg_relaxed(i32* %35, i32* %7, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %11, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @UINT_MAX, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ONCE(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %22, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_try_cmpxchg_relaxed(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
