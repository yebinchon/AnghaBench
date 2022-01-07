; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_handler_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_handler_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32, i32 }
%struct.inet_diag_handler = type { i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)*, i64 }
%struct.inet_diag_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@INET_DIAG_PROTOCOL = common dso_local global i32 0, align 4
@INET_DIAG_INFO = common dso_local global i32 0, align 4
@INET_DIAG_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sock*)* @inet_diag_handler_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_handler_get_info(%struct.sk_buff* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.inet_diag_handler*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.inet_diag_msg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %14 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %12, i32 0, i32 0, i32 %13, i32 8, i32 0)
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %7, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %16 = icmp ne %struct.nlmsghdr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %22 = call %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.inet_diag_msg* %22, %struct.inet_diag_msg** %9, align 8
  %23 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %9, align 8
  %24 = call i32 @memset(%struct.inet_diag_msg* %23, i32 0, i32 8)
  %25 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %9, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg* %25, %struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_DGRAM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %20
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOCK_STREAM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33, %20
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %9, align 8
  %45 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %9, align 8
  %52 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* @INET_DIAG_PROTOCOL, align 4
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @nla_put_u8(%struct.sk_buff* %53, i32 %54, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %63 = call i32 @nlmsg_cancel(%struct.sk_buff* %61, %struct.nlmsghdr* %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %115

65:                                               ; preds = %47
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.inet_diag_handler* @inet_diag_lock_handler(i32 %68)
  store %struct.inet_diag_handler* %69, %struct.inet_diag_handler** %6, align 8
  %70 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %71 = call i64 @IS_ERR(%struct.inet_diag_handler* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %75 = call i32 @inet_diag_unlock_handler(%struct.inet_diag_handler* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %78 = call i32 @nlmsg_cancel(%struct.sk_buff* %76, %struct.nlmsghdr* %77)
  %79 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %80 = call i32 @PTR_ERR(%struct.inet_diag_handler* %79)
  store i32 %80, i32* %3, align 4
  br label %115

81:                                               ; preds = %65
  %82 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %83 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @INET_DIAG_INFO, align 4
  %89 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %90 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @INET_DIAG_PAD, align 4
  %93 = call %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff* %87, i32 %88, i64 %91, i32 %92)
  br label %95

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %86
  %96 = phi %struct.nlattr* [ %93, %86 ], [ null, %94 ]
  store %struct.nlattr* %96, %struct.nlattr** %8, align 8
  %97 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %101 = call i8* @nla_data(%struct.nlattr* %100)
  store i8* %101, i8** %10, align 8
  br label %102

102:                                              ; preds = %99, %95
  %103 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %104 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %103, i32 0, i32 0
  %105 = load i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)*, i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)** %104, align 8
  %106 = load %struct.sock*, %struct.sock** %5, align 8
  %107 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %9, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 %105(%struct.sock* %106, %struct.inet_diag_msg* %107, i8* %108)
  %110 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %6, align 8
  %111 = call i32 @inet_diag_unlock_handler(%struct.inet_diag_handler* %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %114 = call i32 @nlmsg_end(%struct.sk_buff* %112, %struct.nlmsghdr* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %102, %73, %60, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.inet_diag_msg*, i32, i32) #1

declare dso_local i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg*, %struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local %struct.inet_diag_handler* @inet_diag_lock_handler(i32) #1

declare dso_local i64 @IS_ERR(%struct.inet_diag_handler*) #1

declare dso_local i32 @inet_diag_unlock_handler(%struct.inet_diag_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.inet_diag_handler*) #1

declare dso_local %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
