; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_nl_fill_ifaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_nl_fill_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dn_ifaddr = type { i32, i64*, i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_DECnet = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_LABEL = common dso_local global i32 0, align 4
@IFA_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.dn_ifaddr*, i32, i32, i32, i32)* @dn_nl_fill_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_nl_fill_ifaddr(%struct.sk_buff* %0, %struct.dn_ifaddr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.dn_ifaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifaddrmsg*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %18 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IFA_F_PERMANENT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %22, i32 %23, i32 %24, i32 %25, i32 20, i32 %26)
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %15, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %29 = icmp eq %struct.nlmsghdr* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %115

33:                                               ; preds = %6
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %35 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %34)
  store %struct.ifaddrmsg* %35, %struct.ifaddrmsg** %14, align 8
  %36 = load i32, i32* @AF_DECnet, align 4
  %37 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %38 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %40 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %39, i32 0, i32 0
  store i32 16, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %43 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %45 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %48 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %50 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %57 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %59 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %33
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i32, i32* @IFA_ADDRESS, align 4
  %65 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %66 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @nla_put_le16(%struct.sk_buff* %63, i32 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %104, label %70

70:                                               ; preds = %62, %33
  %71 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %72 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32, i32* @IFA_LOCAL, align 4
  %78 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %79 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @nla_put_le16(%struct.sk_buff* %76, i32 %77, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %85 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32, i32* @IFA_LABEL, align 4
  %93 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %94 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = call i64 @nla_put_string(%struct.sk_buff* %91, i32 %92, i64* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %90, %83
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load i32, i32* @IFA_FLAGS, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i64 @nla_put_u32(%struct.sk_buff* %99, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %90, %75, %62
  br label %109

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %108 = call i32 @nlmsg_end(%struct.sk_buff* %106, %struct.nlmsghdr* %107)
  store i32 0, i32* %7, align 4
  br label %115

109:                                              ; preds = %104
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %112 = call i32 @nlmsg_cancel(%struct.sk_buff* %110, %struct.nlmsghdr* %111)
  %113 = load i32, i32* @EMSGSIZE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %109, %105, %30
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_le16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
