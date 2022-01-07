; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i64, i64 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DUMMY_MARK = common dso_local global i32 0, align 4
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@XFRM_STATE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_acquire(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.xfrm_state*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.net* @sock_net(%struct.sock* %12)
  store %struct.net* %13, %struct.net** %10, align 8
  %14 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %15 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %24 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %29 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  store i32 0, i32* %5, align 4
  br label %64

33:                                               ; preds = %27
  %34 = load %struct.net*, %struct.net** %10, align 8
  %35 = load i32, i32* @DUMMY_MARK, align 4
  %36 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %37 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net* %34, i32 %35, i64 %38)
  store %struct.xfrm_state* %39, %struct.xfrm_state** %11, align 8
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %41 = icmp eq %struct.xfrm_state* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %64

43:                                               ; preds = %33
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i64, i64* @XFRM_STATE_ERROR, align 8
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %43
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %63 = call i32 @xfrm_state_put(%struct.xfrm_state* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %42, %32, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
