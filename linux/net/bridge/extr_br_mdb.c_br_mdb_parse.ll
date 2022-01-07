; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_br_mdb_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_br_mdb_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net_device = type { i32 }
%struct.br_mdb_entry = type { i32 }
%struct.net = type { i32 }
%struct.br_port_msg = type { i64 }
%struct.nlattr = type { i32 }

@MDBA_SET_ENTRY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"PF_BRIDGE: br_mdb_parse() with invalid ifindex\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PF_BRIDGE: br_mdb_parse() with unknown ifindex\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IFF_EBRIDGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"PF_BRIDGE: br_mdb_parse() with non-bridge\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MDBA_SET_ENTRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"PF_BRIDGE: br_mdb_parse() with invalid attr\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: br_mdb_parse() with invalid entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.net_device**, %struct.br_mdb_entry**)* @br_mdb_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_mdb_parse(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.net_device** %2, %struct.br_mdb_entry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.net_device**, align 8
  %9 = alloca %struct.br_mdb_entry**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.br_mdb_entry*, align 8
  %12 = alloca %struct.br_port_msg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.net_device** %2, %struct.net_device*** %8, align 8
  store %struct.br_mdb_entry** %3, %struct.br_mdb_entry*** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %10, align 8
  %22 = load i32, i32* @MDBA_SET_ENTRY_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %28 = load i32, i32* @MDBA_SET_ENTRY_MAX, align 4
  %29 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %27, i32 8, %struct.nlattr** %26, i32 %28, i32* null, i32* null)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

34:                                               ; preds = %4
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %36 = call %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.br_port_msg* %36, %struct.br_port_msg** %12, align 8
  %37 = load %struct.br_port_msg*, %struct.br_port_msg** %12, align 8
  %38 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

45:                                               ; preds = %34
  %46 = load %struct.net*, %struct.net** %10, align 8
  %47 = load %struct.br_port_msg*, %struct.br_port_msg** %12, align 8
  %48 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.net_device* @__dev_get_by_index(%struct.net* %46, i64 %49)
  store %struct.net_device* %50, %struct.net_device** %15, align 8
  %51 = load %struct.net_device*, %struct.net_device** %15, align 8
  %52 = icmp eq %struct.net_device* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

57:                                               ; preds = %45
  %58 = load %struct.net_device*, %struct.net_device** %15, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_EBRIDGE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

68:                                               ; preds = %57
  %69 = load %struct.net_device*, %struct.net_device** %15, align 8
  %70 = load %struct.net_device**, %struct.net_device*** %8, align 8
  store %struct.net_device* %69, %struct.net_device** %70, align 8
  %71 = load i64, i64* @MDBA_SET_ENTRY, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i64, i64* @MDBA_SET_ENTRY, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i32 @nla_len(%struct.nlattr* %78)
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 4
  br i1 %81, label %82, label %86

82:                                               ; preds = %75, %68
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

86:                                               ; preds = %75
  %87 = load i64, i64* @MDBA_SET_ENTRY, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call %struct.br_mdb_entry* @nla_data(%struct.nlattr* %89)
  store %struct.br_mdb_entry* %90, %struct.br_mdb_entry** %11, align 8
  %91 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %11, align 8
  %92 = call i32 @is_valid_mdb_entry(%struct.br_mdb_entry* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

98:                                               ; preds = %86
  %99 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %11, align 8
  %100 = load %struct.br_mdb_entry**, %struct.br_mdb_entry*** %9, align 8
  store %struct.br_mdb_entry* %99, %struct.br_mdb_entry** %100, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %101

101:                                              ; preds = %98, %94, %82, %64, %53, %41, %32
  %102 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*, i32*) #1

declare dso_local %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.br_mdb_entry* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @is_valid_mdb_entry(%struct.br_mdb_entry*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
