; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.atm_vcc = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ATM_VF_SESSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATM_VF_LISTEN = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@as_listen = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@sigd = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@ATM_BACKLOG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @svc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.atm_vcc*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DEFINE_WAIT(i32 %8)
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %13)
  store %struct.atm_vcc* %14, %struct.atm_vcc** %6, align 8
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %15)
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load i32, i32* @ATM_VF_SESSION, align 4
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %92

27:                                               ; preds = %2
  %28 = load i32, i32* @ATM_VF_LISTEN, align 4
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EADDRINUSE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %92

36:                                               ; preds = %27
  %37 = load i32, i32* @ATM_VF_WAITING, align 4
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %42 = load i32, i32* @as_listen, align 4
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %44 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %43, i32 0, i32 1
  %45 = call i32 @sigd_enq(%struct.atm_vcc* %41, i32 %42, i32* null, i32* null, i32* %44)
  br label %46

46:                                               ; preds = %60, %36
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call i32 @sk_sleep(%struct.sock* %47)
  %49 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %50 = call i32 @prepare_to_wait(i32 %48, i32* @wait, i32 %49)
  %51 = load i32, i32* @ATM_VF_WAITING, align 4
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @sigd, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %46
  br label %62

60:                                               ; preds = %56
  %61 = call i32 (...) @schedule()
  br label %46

62:                                               ; preds = %59
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @sk_sleep(%struct.sock* %63)
  %65 = call i32 @finish_wait(i32 %64, i32* @wait)
  %66 = load i32, i32* @sigd, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @EUNATCH, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %92

71:                                               ; preds = %62
  %72 = load i32, i32* @ATM_VF_LISTEN, align 4
  %73 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %74 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = call i32 @vcc_insert_socket(%struct.sock* %76)
  %78 = load i32, i32* %4, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @ATM_BACKLOG_DEFAULT, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.sock*, %struct.sock** %5, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %84, %68, %33, %24
  %93 = load %struct.sock*, %struct.sock** %5, align 8
  %94 = call i32 @release_sock(%struct.sock* %93)
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @vcc_insert_socket(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
