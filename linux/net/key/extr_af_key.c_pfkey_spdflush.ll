; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spdflush.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spdflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRM_MSG_FLUSHPOLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spdflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spdflush(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.km_event, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.net* @sock_net(%struct.sock* %14)
  store %struct.net* %15, %struct.net** %10, align 8
  %16 = load %struct.net*, %struct.net** %10, align 8
  %17 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %18 = call i32 @xfrm_policy_flush(%struct.net* %16, i32 %17, i32 1)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %21 = call i32 @unicast_flush_resp(%struct.sock* %19, %struct.sadb_msg* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24, %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ESRCH, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %52

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %52

35:                                               ; preds = %24
  %36 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %37 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @XFRM_MSG_FLUSHPOLICY, align 4
  %40 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %42 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %46 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.net*, %struct.net** %10, align 8
  %50 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 0
  store %struct.net* %49, %struct.net** %50, align 8
  %51 = call i32 @km_policy_notify(i32* null, i32 0, %struct.km_event* %11)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %35, %33, %32
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @xfrm_policy_flush(%struct.net*, i32, i32) #1

declare dso_local i32 @unicast_flush_resp(%struct.sock*, %struct.sadb_msg*) #1

declare dso_local i32 @km_policy_notify(i32*, i32, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
