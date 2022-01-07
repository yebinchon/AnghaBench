; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_node_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32 }
%struct.nlattr = type { i32 }
%struct.tipc_node_info = type { i8*, i8* }

@TIPC_NLA_NODE_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_NODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_NODE_ADDR = common dso_local global i64 0, align 8
@TIPC_NLA_NODE_UP = common dso_local global i64 0, align 8
@TIPC_TLV_NODE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*, %struct.nlattr**)* @tipc_nl_compat_node_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_node_dump(%struct.tipc_nl_compat_msg* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_msg*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.tipc_node_info, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %11 = load i32, i32* @TIPC_NLA_NODE_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @TIPC_NLA_NODE, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* @TIPC_NLA_NODE_MAX, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %27 = load i64, i64* @TIPC_NLA_NODE, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %15, i32 %25, %struct.nlattr* %29, i32* null, i32* null)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

35:                                               ; preds = %24
  %36 = load i64, i64* @TIPC_NLA_NODE_ADDR, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @nla_get_u32(%struct.nlattr* %38)
  %40 = call i8* @htonl(i32 %39)
  %41 = getelementptr inbounds %struct.tipc_node_info, %struct.tipc_node_info* %6, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i64, i64* @TIPC_NLA_NODE_UP, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_flag(%struct.nlattr* %44)
  %46 = call i8* @htonl(i32 %45)
  %47 = getelementptr inbounds %struct.tipc_node_info, %struct.tipc_node_info* %6, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %49 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TIPC_TLV_NODE_INFO, align 4
  %52 = call i32 @tipc_add_tlv(i32 %50, i32 %51, %struct.tipc_node_info* %6, i32 16)
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %35, %33, %21
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nla_get_flag(%struct.nlattr*) #2

declare dso_local i32 @tipc_add_tlv(i32, i32, %struct.tipc_node_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
