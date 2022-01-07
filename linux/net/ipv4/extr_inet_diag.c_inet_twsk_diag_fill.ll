; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_twsk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_twsk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_timewait_sock = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.inet_diag_msg = type { i32, i64, i64, i64, i64, i32, i32, i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i32, i32, %struct.nlmsghdr*)* @inet_twsk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_twsk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, %struct.nlmsghdr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.inet_timewait_sock*, align 8
  %15 = alloca %struct.inet_diag_msg*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nlmsghdr* %5, %struct.nlmsghdr** %13, align 8
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = call %struct.inet_timewait_sock* @inet_twsk(%struct.sock* %18)
  store %struct.inet_timewait_sock* %19, %struct.inet_timewait_sock** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %20, i32 %21, i32 %22, i32 %25, i32 56, i32 %26)
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %16, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %29 = icmp ne %struct.nlmsghdr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %80

33:                                               ; preds = %6
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %35 = call %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr* %34)
  store %struct.inet_diag_msg* %35, %struct.inet_diag_msg** %15, align 8
  %36 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %14, align 8
  %37 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCP_TIME_WAIT, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %14, align 8
  %44 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @jiffies, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  store i64 0, i64* %17, align 8
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = call i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg* %53, %struct.sock* %54)
  %56 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %57 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %14, align 8
  %59 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %62 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %64 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = load i64, i64* %17, align 8
  %66 = call i32 @jiffies_to_msecs(i64 %65)
  %67 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %68 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %70 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %72 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %74 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %15, align 8
  %76 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %79 = call i32 @nlmsg_end(%struct.sk_buff* %77, %struct.nlmsghdr* %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %52, %30
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.inet_timewait_sock* @inet_twsk(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg*, %struct.sock*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
