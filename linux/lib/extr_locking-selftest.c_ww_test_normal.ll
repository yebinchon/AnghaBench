; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_ww_test_normal.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_ww_test_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@t = common dso_local global i32 0, align 4
@o = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ww_test_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ww_test_normal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @WWAI(i32* @t)
  store i8* inttoptr (i64 -1 to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %3 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  %4 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %6 = icmp ne i8* %5, inttoptr (i64 -1 to i8*)
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  store i8* inttoptr (i64 -1 to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %9 = call i32 @mutex_lock_interruptible(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  br label %16

14:                                               ; preds = %0
  %15 = call i32 @WARN_ON(i32 1)
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %18 = icmp ne i8* %17, inttoptr (i64 -1 to i8*)
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  store i8* inttoptr (i64 -1 to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %21 = call i32 @mutex_lock_killable(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  br label %28

26:                                               ; preds = %16
  %27 = call i32 @WARN_ON(i32 1)
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %30 = icmp ne i8* %29, inttoptr (i64 -1 to i8*)
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  store i8* inttoptr (i64 -1 to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %33 = call i32 @mutex_trylock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  br label %45

43:                                               ; preds = %28
  %44 = call i32 @WARN_ON(i32 1)
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %47 = icmp ne i8* %46, inttoptr (i64 -1 to i8*)
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  store i8* inttoptr (i64 -1 to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %50 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  %51 = call i32 @mutex_trylock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %56 = icmp ne i8* %55, inttoptr (i64 -1 to i8*)
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  store i8* inttoptr (i64 -1 to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %59 = call i32 @mutex_lock_nest_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1), i32* @t)
  %60 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 1))
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @o, i32 0, i32 0), align 8
  %62 = icmp ne i8* %61, inttoptr (i64 -1 to i8*)
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  ret void
}

declare dso_local i32 @WWAI(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_lock_nest_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
