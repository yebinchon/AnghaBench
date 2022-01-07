; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c___tipc_nl_compat_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c___tipc_nl_compat_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.tipc_nl_compat_cmd_doit = type { i32 (%struct.tipc_nl_compat_cmd_doit*, %struct.sk_buff*, %struct.tipc_nl_compat_msg*)*, i32 (%struct.sk_buff.0*, %struct.genl_info*)* }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type opaque
%struct.genl_info = type opaque
%struct.tipc_nl_compat_msg = type { i32 }
%struct.sk_buff.1 = type { i32, i32, i64 }
%struct.nlattr = type { i32 }
%struct.genl_info.2 = type { %struct.nlattr** }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_genl_family = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_msg*)* @__tipc_nl_compat_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_compat_doit(%struct.tipc_nl_compat_cmd_doit* %0, %struct.tipc_nl_compat_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_cmd_doit*, align 8
  %5 = alloca %struct.tipc_nl_compat_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff.1*, align 8
  %8 = alloca %struct.sk_buff.1*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.genl_info.2, align 8
  store %struct.tipc_nl_compat_cmd_doit* %0, %struct.tipc_nl_compat_cmd_doit** %4, align 8
  store %struct.tipc_nl_compat_msg* %1, %struct.tipc_nl_compat_msg** %5, align 8
  %11 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff.1* @alloc_skb(i32 %11, i32 %12)
  store %struct.sk_buff.1* %13, %struct.sk_buff.1** %8, align 8
  %14 = load %struct.sk_buff.1*, %struct.sk_buff.1** %8, align 8
  %15 = icmp ne %struct.sk_buff.1* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_genl_family, i32 0, i32 0), align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nlattr** @kmalloc_array(i64 %21, i32 8, i32 %22)
  store %struct.nlattr** %23, %struct.nlattr*** %9, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %25 = icmp ne %struct.nlattr** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %88

29:                                               ; preds = %19
  %30 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff.1* @alloc_skb(i32 %30, i32 %31)
  store %struct.sk_buff.1* %32, %struct.sk_buff.1** %7, align 8
  %33 = load %struct.sk_buff.1*, %struct.sk_buff.1** %7, align 8
  %34 = icmp ne %struct.sk_buff.1* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %85

38:                                               ; preds = %29
  %39 = call i32 @memset(%struct.genl_info.2* %10, i32 0, i32 8)
  %40 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %41 = getelementptr inbounds %struct.genl_info.2, %struct.genl_info.2* %10, i32 0, i32 0
  store %struct.nlattr** %40, %struct.nlattr*** %41, align 8
  %42 = call i32 (...) @rtnl_lock()
  %43 = load %struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_cmd_doit** %4, align 8
  %44 = getelementptr inbounds %struct.tipc_nl_compat_cmd_doit, %struct.tipc_nl_compat_cmd_doit* %43, i32 0, i32 0
  %45 = load i32 (%struct.tipc_nl_compat_cmd_doit*, %struct.sk_buff*, %struct.tipc_nl_compat_msg*)*, i32 (%struct.tipc_nl_compat_cmd_doit*, %struct.sk_buff*, %struct.tipc_nl_compat_msg*)** %44, align 8
  %46 = load %struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_cmd_doit** %4, align 8
  %47 = load %struct.sk_buff.1*, %struct.sk_buff.1** %8, align 8
  %48 = bitcast %struct.sk_buff.1* %47 to %struct.sk_buff*
  %49 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %50 = call i32 %45(%struct.tipc_nl_compat_cmd_doit* %46, %struct.sk_buff* %48, %struct.tipc_nl_compat_msg* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %81

54:                                               ; preds = %38
  %55 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_genl_family, i32 0, i32 0), align 8
  %57 = load %struct.sk_buff.1*, %struct.sk_buff.1** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.nlattr*
  %61 = load %struct.sk_buff.1*, %struct.sk_buff.1** %8, align 8
  %62 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nla_parse_deprecated(%struct.nlattr** %55, i64 %56, %struct.nlattr* %60, i32 %63, i32* null, i32* null)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %81

68:                                               ; preds = %54
  %69 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %70 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff.1*, %struct.sk_buff.1** %7, align 8
  %73 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_cmd_doit** %4, align 8
  %75 = getelementptr inbounds %struct.tipc_nl_compat_cmd_doit, %struct.tipc_nl_compat_cmd_doit* %74, i32 0, i32 1
  %76 = load i32 (%struct.sk_buff.0*, %struct.genl_info*)*, i32 (%struct.sk_buff.0*, %struct.genl_info*)** %75, align 8
  %77 = load %struct.sk_buff.1*, %struct.sk_buff.1** %7, align 8
  %78 = bitcast %struct.sk_buff.1* %77 to %struct.sk_buff.0*
  %79 = bitcast %struct.genl_info.2* %10 to %struct.genl_info*
  %80 = call i32 %76(%struct.sk_buff.0* %78, %struct.genl_info* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %68, %67, %53
  %82 = call i32 (...) @rtnl_unlock()
  %83 = load %struct.sk_buff.1*, %struct.sk_buff.1** %7, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff.1* %83)
  br label %85

85:                                               ; preds = %81, %35
  %86 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %87 = call i32 @kfree(%struct.nlattr** %86)
  br label %88

88:                                               ; preds = %85, %26
  %89 = load %struct.sk_buff.1*, %struct.sk_buff.1** %8, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff.1* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.sk_buff.1* @alloc_skb(i32, i32) #1

declare dso_local %struct.nlattr** @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @memset(%struct.genl_info.2*, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i64, %struct.nlattr*, i32, i32*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff.1*) #1

declare dso_local i32 @kfree(%struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
