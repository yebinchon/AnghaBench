; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw_diag.c_sk_diag_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw_diag.c_sk_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*, i32)* @sk_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_dump(%struct.sock* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, %struct.inet_diag_req_v2* %3, %struct.nlattr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.netlink_callback*, align 8
  %11 = alloca %struct.inet_diag_req_v2*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %10, align 8
  store %struct.inet_diag_req_v2* %3, %struct.inet_diag_req_v2** %11, align 8
  store %struct.nlattr* %4, %struct.nlattr** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call i32 @inet_diag_bc_sk(%struct.nlattr* %16, %struct.sock* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %51

21:                                               ; preds = %6
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %11, align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @NETLINK_CB(i32 %27)
  %29 = bitcast %struct.TYPE_4__* %14 to i64*
  store i64 %28, i64* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sk_user_ns(i32 %31)
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %34 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @NETLINK_CB(i32 %35)
  %37 = bitcast %struct.TYPE_4__* %15 to i64*
  store i64 %36, i64* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NLM_F_MULTI, align 4
  %46 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %47 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @inet_sk_diag_fill(%struct.sock* %22, i32* null, %struct.sk_buff* %23, %struct.inet_diag_req_v2* %24, i32 %32, i32 %39, i32 %44, i32 %45, %struct.TYPE_3__* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %21, %20
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @inet_diag_bc_sk(%struct.nlattr*, %struct.sock*) #1

declare dso_local i32 @inet_sk_diag_fill(%struct.sock*, i32*, %struct.sk_buff*, %struct.inet_diag_req_v2*, i32, i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @sk_user_ns(i32) #1

declare dso_local i64 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
