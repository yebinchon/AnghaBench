; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@as_close = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@sigd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"LISTEN REL\0A\00", align 1
@as_reject = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @svc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_disconnect(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %8 = call %struct.sock* @sk_atm(%struct.atm_vcc* %7)
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %9)
  %11 = load i32, i32* @ATM_VF_REGIS, align 4
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %18 = load i32, i32* @as_close, align 4
  %19 = call i32 @sigd_enq(%struct.atm_vcc* %17, i32 %18, i32* null, i32* null, i32* null)
  br label %20

20:                                               ; preds = %34, %16
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @sk_sleep(%struct.sock* %21)
  %23 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %24 = call i32 @prepare_to_wait(i32 %22, i32* @wait, i32 %23)
  %25 = load i32, i32* @ATM_VF_RELEASED, align 4
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %27 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @sigd, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %20
  br label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @schedule()
  br label %20

36:                                               ; preds = %33
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 @sk_sleep(%struct.sock* %37)
  %39 = call i32 @finish_wait(i32 %38, i32* @wait)
  br label %40

40:                                               ; preds = %36, %1
  br label %41

41:                                               ; preds = %46, %40
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = call %struct.sk_buff* @skb_dequeue(i32* %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %3, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @atm_return(%struct.atm_vcc* %47, i32 %50)
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @as_reject, align 4
  %54 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 1
  %57 = call i32 @sigd_enq2(i32* null, i32 %53, %struct.atm_vcc* %54, i32* null, i32* null, i32* %56, i32 0)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 @dev_kfree_skb(%struct.sk_buff* %58)
  br label %41

60:                                               ; preds = %41
  %61 = load i32, i32* @ATM_VF_REGIS, align 4
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 0
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @sigd_enq2(i32*, i32, %struct.atm_vcc*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
