; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_fakewriter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_fakewriter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)*, i32 (...)* }

@rand = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rcu_torture_fakewriter task started\00", align 1
@current = common dso_local global i32 0, align 4
@MAX_NICE = common dso_local global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@nfakewriters = common dso_local global i32 0, align 4
@gp_normal = common dso_local global i64 0, align 8
@gp_exp = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rcu_torture_fakewriter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_fakewriter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_fakewriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @rand, align 4
  %4 = call i32 @DEFINE_TORTURE_RANDOM(i32 %3)
  %5 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @current, align 4
  %7 = load i32, i32* @MAX_NICE, align 4
  %8 = call i32 @set_user_nice(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %90, %1
  %10 = call i32 @torture_random(i32* @rand)
  %11 = srem i32 %10, 10
  %12 = add nsw i32 1, %11
  %13 = call i32 @schedule_timeout_uninterruptible(i32 %12)
  %14 = call i32 @torture_random(i32* @rand)
  %15 = and i32 %14, 1023
  %16 = call i32 @udelay(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = icmp ne i32 (...)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %9
  %22 = call i32 @torture_random(i32* @rand)
  %23 = load i32, i32* @nfakewriters, align 4
  %24 = mul nsw i32 %23, 8
  %25 = srem i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32 (...)*, i32 (...)** %29, align 8
  %31 = call i32 (...) %30()
  br label %88

32:                                               ; preds = %21, %9
  %33 = load i64, i64* @gp_normal, align 8
  %34 = load i64, i64* @gp_exp, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = icmp ne i32 (...)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = call i32 @torture_random(i32* @rand)
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (...)*, i32 (...)** %47, align 8
  %49 = call i32 (...) %48()
  br label %61

50:                                               ; preds = %41, %36
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = icmp ne i32 (...)* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (...)*, i32 (...)** %57, align 8
  %59 = call i32 (...) %58()
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %45
  br label %87

62:                                               ; preds = %32
  %63 = load i64, i64* @gp_normal, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (...)*, i32 (...)** %67, align 8
  %69 = icmp ne i32 (...)* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (...)*, i32 (...)** %72, align 8
  %74 = call i32 (...) %73()
  br label %86

75:                                               ; preds = %65, %62
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = icmp ne i32 (...)* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (...)*, i32 (...)** %82, align 8
  %84 = call i32 (...) %83()
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %70
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %87, %27
  %89 = call i32 @stutter_wait(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88
  %91 = call i32 (...) @torture_must_stop()
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %9, label %94

94:                                               ; preds = %90
  %95 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DEFINE_TORTURE_RANDOM(i32) #1

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @torture_random(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @stutter_wait(i8*) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
