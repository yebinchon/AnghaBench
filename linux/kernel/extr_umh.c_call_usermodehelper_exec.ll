; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_call_usermodehelper_exec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_call_usermodehelper_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { i32, i32, i32*, i32, i32 }

@done = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@usermodehelper_disabled = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@UMH_NO_WAIT = common dso_local global i32 0, align 4
@system_unbound_wq = common dso_local global i32 0, align 4
@UMH_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_usermodehelper_exec(%struct.subprocess_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subprocess_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.subprocess_info* %0, %struct.subprocess_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @done, align 4
  %8 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %7)
  store i32 0, i32* %6, align 4
  %9 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %10 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %15 = call i32 @call_usermodehelper_freeinfo(%struct.subprocess_info* %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = call i32 (...) @helper_lock()
  %20 = load i64, i64* @usermodehelper_disabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %27 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %74

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @UMH_NO_WAIT, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32* null, i32* @done
  %38 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %39 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %42 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @system_unbound_wq, align 4
  %44 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %45 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %44, i32 0, i32 3
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @UMH_NO_WAIT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %77

51:                                               ; preds = %32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @UMH_KILLABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = call i32 @wait_for_completion_killable(i32* @done)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %70

61:                                               ; preds = %56
  %62 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %63 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %62, i32 0, i32 2
  %64 = call i64 @xchg(i32** %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %77

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %51
  %69 = call i32 @wait_for_completion(i32* @done)
  br label %70

70:                                               ; preds = %68, %60
  %71 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %72 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %31, %22
  %75 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %76 = call i32 @call_usermodehelper_freeinfo(%struct.subprocess_info* %75)
  br label %77

77:                                               ; preds = %74, %66, %50
  %78 = call i32 (...) @helper_unlock()
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @call_usermodehelper_freeinfo(%struct.subprocess_info*) #1

declare dso_local i32 @helper_lock(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i64 @xchg(i32**, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @helper_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
