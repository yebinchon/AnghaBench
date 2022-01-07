; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_nlmsg_populate_mdb_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_nlmsg_populate_mdb_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.br_mdb_entry = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.br_port_msg = type { i32, i32 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@MDBA_MDB = common dso_local global i32 0, align 4
@MDBA_MDB_ENTRY = common dso_local global i32 0, align 4
@MDBA_MDB_ENTRY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.br_mdb_entry*, i32, i32, i32, i32)* @nlmsg_populate_mdb_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsg_populate_mdb_fill(%struct.sk_buff* %0, %struct.net_device* %1, %struct.br_mdb_entry* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.br_mdb_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.br_port_msg*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store %struct.br_mdb_entry* %2, %struct.br_mdb_entry** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %20, i32 %21, i32 %22, i32 %23, i32 8, i32 0)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %16, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %26 = icmp ne %struct.nlmsghdr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %83

30:                                               ; preds = %7
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %32 = call %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr* %31)
  store %struct.br_port_msg* %32, %struct.br_port_msg** %17, align 8
  %33 = load %struct.br_port_msg*, %struct.br_port_msg** %17, align 8
  %34 = call i32 @memset(%struct.br_port_msg* %33, i32 0, i32 8)
  %35 = load i32, i32* @AF_BRIDGE, align 4
  %36 = load %struct.br_port_msg*, %struct.br_port_msg** %17, align 8
  %37 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %10, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.br_port_msg*, %struct.br_port_msg** %17, align 8
  %42 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @MDBA_MDB, align 4
  %45 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %18, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %77

49:                                               ; preds = %30
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load i32, i32* @MDBA_MDB_ENTRY, align 4
  %52 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %50, i32 %51)
  store %struct.nlattr* %52, %struct.nlattr** %19, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %54 = icmp eq %struct.nlattr* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %73

56:                                               ; preds = %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* @MDBA_MDB_ENTRY_INFO, align 4
  %59 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %11, align 8
  %60 = call i64 @nla_put(%struct.sk_buff* %57, i32 %58, i32 4, %struct.br_mdb_entry* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %73

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %66 = call i32 @nla_nest_end(%struct.sk_buff* %64, %struct.nlattr* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %69 = call i32 @nla_nest_end(%struct.sk_buff* %67, %struct.nlattr* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %72 = call i32 @nlmsg_end(%struct.sk_buff* %70, %struct.nlmsghdr* %71)
  store i32 0, i32* %8, align 4
  br label %83

73:                                               ; preds = %62, %55
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %76 = call i32 @nla_nest_end(%struct.sk_buff* %74, %struct.nlattr* %75)
  br label %77

77:                                               ; preds = %73, %48
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %80 = call i32 @nlmsg_cancel(%struct.sk_buff* %78, %struct.nlmsghdr* %79)
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %63, %27
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.br_port_msg*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.br_mdb_entry*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
