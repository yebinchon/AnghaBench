; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listdef.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.netlbl_dom_map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NLBL_MGMT_A_FAMILY = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlbl_mgmt_gnl_family = common dso_local global i32 0, align 4
@NLBL_MGMT_C_LISTDEF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_mgmt_listdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_listdef(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.netlbl_dom_map*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @NLBL_MGMT_A_FAMILY, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @NLBL_MGMT_A_FAMILY, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @nla_get_u16(i64 %26)
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @AF_INET, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.sk_buff* @nlmsg_new(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = load i32, i32* @NLBL_MGMT_C_LISTDEF, align 4
  %43 = call i8* @genlmsg_put_reply(%struct.sk_buff* %40, %struct.genl_info* %41, i32* @netlbl_mgmt_gnl_family, i32 0, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %73

47:                                               ; preds = %39
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32* null, i32 %49)
  store %struct.netlbl_dom_map* %50, %struct.netlbl_dom_map** %9, align 8
  %51 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %9, align 8
  %52 = icmp eq %struct.netlbl_dom_map* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %71

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %9, align 8
  %59 = call i32 @netlbl_mgmt_listentry(%struct.sk_buff* %57, %struct.netlbl_dom_map* %58)
  store i32 %59, i32* %6, align 4
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %73

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @genlmsg_end(%struct.sk_buff* %65, i8* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %70 = call i32 @genlmsg_reply(%struct.sk_buff* %68, %struct.genl_info* %69)
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %53
  %72 = call i32 (...) @rcu_read_unlock()
  br label %73

73:                                               ; preds = %71, %63, %46
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %64, %36
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32*, i32) #1

declare dso_local i32 @netlbl_mgmt_listentry(%struct.sk_buff*, %struct.netlbl_dom_map*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
