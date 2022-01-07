; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_start_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_start_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@hidp_session_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"khidpd_%04x%04x\00", align 1
@HIDP_SESSION_IDLING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*)* @hidp_session_start_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_session_start_sync(%struct.hidp_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  %6 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %7 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %12 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %17 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %23 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %28 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %34 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32, i32* @hidp_session_thread, align 4
  %43 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @kthread_run(i32 %42, %struct.hidp_session* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %48 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %50 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %56 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %78

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %66, %59
  %61 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %62 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %61, i32 0, i32 0
  %63 = call i64 @atomic_read(i32* %62)
  %64 = load i64, i64* @HIDP_SESSION_IDLING, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %68 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %71 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %70, i32 0, i32 0
  %72 = call i64 @atomic_read(i32* %71)
  %73 = load i64, i64* @HIDP_SESSION_IDLING, align 8
  %74 = icmp sgt i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @wait_event(i32 %69, i32 %75)
  br label %60

77:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @kthread_run(i32, %struct.hidp_session*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
