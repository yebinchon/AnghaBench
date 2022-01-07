; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_refcount.c_refcount_dec_not_one.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_refcount.c_refcount_dec_not_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"refcount_t: underflow; use-after-free.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refcount_dec_not_one(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @atomic_read(i32* %7)
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @UINT_MAX, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %42

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ugt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ONCE(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %42

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @atomic_try_cmpxchg_release(i32* %36, i32* %5, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %9, label %41

41:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %27, %20, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @atomic_try_cmpxchg_release(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
