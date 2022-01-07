; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRM_MSG_FLUSHSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_flush(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.km_event, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.net* @sock_net(%struct.sock* %15)
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %18 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pfkey_satype2proto(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %70

26:                                               ; preds = %4
  %27 = load %struct.net*, %struct.net** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @xfrm_state_flush(%struct.net* %27, i32 %28, i32 1, i32 0)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %32 = call i32 @unicast_flush_resp(%struct.sock* %30, %struct.sadb_msg* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ESRCH, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %14, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %5, align 4
  br label %70

53:                                               ; preds = %35
  %54 = load i32, i32* %11, align 4
  %55 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %58 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 3
  store i32 %59, i32* %60, align 8
  %61 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %62 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @XFRM_MSG_FLUSHSA, align 4
  %66 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.net*, %struct.net** %10, align 8
  %68 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store %struct.net* %67, %struct.net** %68, align 8
  %69 = call i32 @km_state_notify(i32* null, %struct.km_event* %12)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %53, %51, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @pfkey_satype2proto(i32) #1

declare dso_local i32 @xfrm_state_flush(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @unicast_flush_resp(%struct.sock*, %struct.sadb_msg*) #1

declare dso_local i32 @km_state_notify(i32*, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
