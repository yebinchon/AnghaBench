; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32, i32 }

@cxt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@writer_tasks = common dso_local global i32* null, align 8
@lock_torture_writer = common dso_local global i32 0, align 4
@reader_tasks = common dso_local global i32* null, align 8
@lock_torture_reader = common dso_local global i32 0, align 4
@lock_torture_stats = common dso_local global i32 0, align 4
@stats_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"End of test: FAILURE\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"End of test: LOCK_HOTPLUG\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"End of test: SUCCESS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lock_torture_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_torture_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @torture_cleanup_begin()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %83

5:                                                ; preds = %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 3), align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 2), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %81

12:                                               ; preds = %8, %5
  %13 = load i32*, i32** @writer_tasks, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* @lock_torture_writer, align 4
  %22 = load i32*, i32** @writer_tasks, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @torture_stop_kthread(i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32*, i32** @writer_tasks, align 8
  %33 = call i32 @kfree(i32* %32)
  store i32* null, i32** @writer_tasks, align 8
  br label %34

34:                                               ; preds = %31, %12
  %35 = load i32*, i32** @reader_tasks, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 1), align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* @lock_torture_reader, align 4
  %44 = load i32*, i32** @reader_tasks, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @torture_stop_kthread(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load i32*, i32** @reader_tasks, align 8
  %55 = call i32 @kfree(i32* %54)
  store i32* null, i32** @reader_tasks, align 8
  br label %56

56:                                               ; preds = %53, %34
  %57 = load i32, i32* @lock_torture_stats, align 4
  %58 = load i32, i32* @stats_task, align 4
  %59 = call i32 @torture_stop_kthread(i32 %57, i32 %58)
  %60 = call i32 (...) @lock_torture_stats_print()
  %61 = call i64 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 5))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 4), align 8
  %65 = call i32 @lock_torture_print_module_parms(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %76

66:                                               ; preds = %56
  %67 = call i64 (...) @torture_onoff_failures()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 4), align 8
  %71 = call i32 @lock_torture_print_module_parms(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 4), align 8
  %74 = call i32 @lock_torture_print_module_parms(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 3), align 8
  %78 = call i32 @kfree(i32* %77)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 3), align 8
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 2), align 8
  %80 = call i32 @kfree(i32* %79)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 2), align 8
  br label %81

81:                                               ; preds = %76, %11
  %82 = call i32 (...) @torture_cleanup_end()
  br label %83

83:                                               ; preds = %81, %4
  ret void
}

declare dso_local i64 @torture_cleanup_begin(...) #1

declare dso_local i32 @torture_stop_kthread(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @lock_torture_stats_print(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @lock_torture_print_module_parms(i32, i8*) #1

declare dso_local i64 @torture_onoff_failures(...) #1

declare dso_local i32 @torture_cleanup_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
