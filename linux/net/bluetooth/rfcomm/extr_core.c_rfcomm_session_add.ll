; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32, i32, i32, %struct.socket*, i32, i32 }
%struct.socket = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"session %p sock %p\00", align 1
@rfcomm_session_timeout = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_MTU = common dso_local global i32 0, align 4
@disable_cfc = common dso_local global i64 0, align 8
@RFCOMM_CFC_DISABLED = common dso_local global i32 0, align 4
@RFCOMM_CFC_UNKNOWN = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@session_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (%struct.socket*, i32)* @rfcomm_session_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_session_add(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_session*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rfcomm_session* @kzalloc(i32 32, i32 %7)
  store %struct.rfcomm_session* %8, %struct.rfcomm_session** %6, align 8
  %9 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %10 = icmp ne %struct.rfcomm_session* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %3, align 8
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %13, %struct.socket* %14)
  %16 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %17 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %16, i32 0, i32 6
  %18 = load i32, i32* @rfcomm_session_timeout, align 4
  %19 = call i32 @timer_setup(i32* %17, i32 %18, i32 0)
  %20 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %21 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %20, i32 0, i32 5
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %25 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %28 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %27, i32 0, i32 4
  store %struct.socket* %26, %struct.socket** %28, align 8
  %29 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %30 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %31 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @disable_cfc, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %12
  %35 = load i32, i32* @RFCOMM_CFC_DISABLED, align 4
  br label %38

36:                                               ; preds = %12
  %37 = load i32, i32* @RFCOMM_CFC_UNKNOWN, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %41 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BT_LISTEN, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = call i32 @try_module_get(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %51 = call i32 @kfree(%struct.rfcomm_session* %50)
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %3, align 8
  br label %58

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %55 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %54, i32 0, i32 1
  %56 = call i32 @list_add(i32* %55, i32* @session_list)
  %57 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  store %struct.rfcomm_session* %57, %struct.rfcomm_session** %3, align 8
  br label %58

58:                                               ; preds = %53, %49, %11
  %59 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  ret %struct.rfcomm_session* %59
}

declare dso_local %struct.rfcomm_session* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, %struct.socket*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.rfcomm_session*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
