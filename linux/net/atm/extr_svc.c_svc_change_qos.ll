; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_change_qos.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_change_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32 }
%struct.atm_qos = type { i32 }
%struct.sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@as_modify = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@sigd = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_change_qos(%struct.atm_vcc* %0, %struct.atm_qos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.atm_qos*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.atm_qos* %1, %struct.atm_qos** %5, align 8
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %8 = call %struct.sock* @sk_atm(%struct.atm_vcc* %7)
  store %struct.sock* %8, %struct.sock** %6, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  %11 = load i32, i32* @ATM_VF_WAITING, align 4
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %16 = load i32, i32* @as_modify, align 4
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 1
  %19 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %20 = call i32 @sigd_enq2(%struct.atm_vcc* %15, i32 %16, i32* null, i32* null, i32* %18, %struct.atm_qos* %19, i32 0)
  br label %21

21:                                               ; preds = %41, %2
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call i32 @sk_sleep(%struct.sock* %22)
  %24 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %25 = call i32 @prepare_to_wait(i32 %23, i32* @wait, i32 %24)
  %26 = load i32, i32* @ATM_VF_WAITING, align 4
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load i32, i32* @ATM_VF_RELEASED, align 4
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %34 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @sigd, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %31, %21
  br label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @schedule()
  br label %21

43:                                               ; preds = %40
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = call i32 @sk_sleep(%struct.sock* %44)
  %46 = call i32 @finish_wait(i32 %45, i32* @wait)
  %47 = load i32, i32* @sigd, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EUNATCH, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sigd_enq2(%struct.atm_vcc*, i32, i32*, i32*, i32*, %struct.atm_qos*, i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
