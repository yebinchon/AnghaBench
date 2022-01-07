; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_gen_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_gen_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i32, i32, i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFT_MSG_NEWGEN = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_GEN_ID = common dso_local global i32 0, align 4
@NFTA_GEN_PROC_PID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@NFTA_GEN_PROC_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i32, i32)* @nf_tables_fill_gen_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_gen_info(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.nfgenmsg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @TASK_COMM_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %21 = load i32, i32* @NFT_MSG_NEWGEN, align 4
  %22 = call i32 @nfnl_msg_type(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %23, i32 %24, i32 %25, i32 %26, i32 12, i32 0)
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %10, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %29 = icmp eq %struct.nlmsghdr* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %77

31:                                               ; preds = %4
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %33 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %32)
  store %struct.nfgenmsg* %33, %struct.nfgenmsg** %11, align 8
  %34 = load i32, i32* @AF_UNSPEC, align 4
  %35 = load %struct.nfgenmsg*, %struct.nfgenmsg** %11, align 8
  %36 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @NFNETLINK_V0, align 4
  %38 = load %struct.nfgenmsg*, %struct.nfgenmsg** %11, align 8
  %39 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.net*, %struct.net** %7, align 8
  %41 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 65535
  %45 = call i32 @htons(i32 %44)
  %46 = load %struct.nfgenmsg*, %struct.nfgenmsg** %11, align 8
  %47 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @NFTA_GEN_ID, align 4
  %50 = load %struct.net*, %struct.net** %7, align 8
  %51 = getelementptr inbounds %struct.net, %struct.net* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @htonl(i32 %53)
  %55 = call i64 @nla_put_be32(%struct.sk_buff* %48, i32 %49, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %31
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @NFTA_GEN_PROC_PID, align 4
  %60 = load i32, i32* @current, align 4
  %61 = call i32 @task_pid_nr(i32 %60)
  %62 = call i32 @htonl(i32 %61)
  %63 = call i64 @nla_put_be32(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* @NFTA_GEN_PROC_NAME, align 4
  %68 = load i32, i32* @current, align 4
  %69 = call i32 @get_task_comm(i8* %19, i32 %68)
  %70 = call i64 @nla_put_string(%struct.sk_buff* %66, i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %57, %31
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %76 = call i32 @nlmsg_end(%struct.sk_buff* %74, %struct.nlmsghdr* %75)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %83

77:                                               ; preds = %72, %30
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %80 = call i32 @nlmsg_trim(%struct.sk_buff* %78, %struct.nlmsghdr* %79)
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nfnl_msg_type(i32, i32) #2

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @task_pid_nr(i32) #2

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @get_task_comm(i8*, i32) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
