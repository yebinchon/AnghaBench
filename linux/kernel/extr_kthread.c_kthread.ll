; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.kthread_create_info = type { i32 (i8*)*, %struct.TYPE_3__*, i32, i8* }
%struct.completion = type { i32 }
%struct.kthread = type { i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@KTHREAD_SHOULD_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kthread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kthread_create_info*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.completion*, align 8
  %8 = alloca %struct.kthread*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.kthread_create_info*
  store %struct.kthread_create_info* %11, %struct.kthread_create_info** %4, align 8
  %12 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %13 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %12, i32 0, i32 0
  %14 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  store i32 (i8*)* %14, i32 (i8*)** %5, align 8
  %15 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %16 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.kthread* @kzalloc(i32 24, i32 %18)
  store %struct.kthread* %19, %struct.kthread** %8, align 8
  %20 = load %struct.kthread*, %struct.kthread** %8, align 8
  %21 = call i32 @set_kthread_struct(%struct.kthread* %20)
  %22 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %23 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %22, i32 0, i32 2
  %24 = call %struct.completion* @xchg(i32* %23, i32* null)
  store %struct.completion* %24, %struct.completion** %7, align 8
  %25 = load %struct.completion*, %struct.completion** %7, align 8
  %26 = icmp ne %struct.completion* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %29 = call i32 @kfree(%struct.kthread_create_info* %28)
  %30 = load i32, i32* @EINTR, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @do_exit(i32 %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.kthread*, %struct.kthread** %8, align 8
  %35 = icmp ne %struct.kthread* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.TYPE_3__* @ERR_PTR(i32 %38)
  %40 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %41 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %40, i32 0, i32 1
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.completion*, %struct.completion** %7, align 8
  %43 = call i32 @complete(%struct.completion* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @do_exit(i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.kthread*, %struct.kthread** %8, align 8
  %50 = getelementptr inbounds %struct.kthread, %struct.kthread* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.kthread*, %struct.kthread** %8, align 8
  %52 = getelementptr inbounds %struct.kthread, %struct.kthread* %51, i32 0, i32 1
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.kthread*, %struct.kthread** %8, align 8
  %55 = getelementptr inbounds %struct.kthread, %struct.kthread* %54, i32 0, i32 2
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.kthread*, %struct.kthread** %8, align 8
  %58 = getelementptr inbounds %struct.kthread, %struct.kthread* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %62 = call i32 @__set_current_state(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %64 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %65 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %64, i32 0, i32 1
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  %66 = load %struct.completion*, %struct.completion** %7, align 8
  %67 = call i32 @complete(%struct.completion* %66)
  %68 = call i32 (...) @schedule()
  %69 = load i32, i32* @EINTR, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @KTHREAD_SHOULD_STOP, align 4
  %72 = load %struct.kthread*, %struct.kthread** %8, align 8
  %73 = getelementptr inbounds %struct.kthread, %struct.kthread* %72, i32 0, i32 0
  %74 = call i32 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %47
  %77 = call i32 (...) @cgroup_kthread_ready()
  %78 = load %struct.kthread*, %struct.kthread** %8, align 8
  %79 = call i32 @__kthread_parkme(%struct.kthread* %78)
  %80 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 %80(i8* %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %76, %47
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @do_exit(i32 %84)
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.kthread* @kzalloc(i32, i32) #1

declare dso_local i32 @set_kthread_struct(%struct.kthread*) #1

declare dso_local %struct.completion* @xchg(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.kthread_create_info*) #1

declare dso_local i32 @do_exit(i32) #1

declare dso_local %struct.TYPE_3__* @ERR_PTR(i32) #1

declare dso_local i32 @complete(%struct.completion*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cgroup_kthread_ready(...) #1

declare dso_local i32 @__kthread_parkme(%struct.kthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
