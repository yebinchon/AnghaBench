; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_dumpit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_cmd_dump = type { i32 (%struct.tipc_nl_compat_msg*)* }
%struct.tipc_nl_compat_msg = type { %struct.sk_buff*, i64, i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_cmd_dump*, %struct.tipc_nl_compat_msg*)* @tipc_nl_compat_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_dumpit(%struct.tipc_nl_compat_cmd_dump* %0, %struct.tipc_nl_compat_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_cmd_dump*, align 8
  %5 = alloca %struct.tipc_nl_compat_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.tipc_nl_compat_cmd_dump* %0, %struct.tipc_nl_compat_cmd_dump** %4, align 8
  store %struct.tipc_nl_compat_msg* %1, %struct.tipc_nl_compat_msg** %5, align 8
  %8 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %9 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %14 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %22 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @TLV_CHECK_TYPE(i32 %20, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %17, %2
  %30 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.sk_buff* @tipc_tlv_alloc(i32 %32)
  %34 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %35 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %34, i32 0, i32 0
  store %struct.sk_buff* %33, %struct.sk_buff** %35, align 8
  %36 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %110

43:                                               ; preds = %29
  %44 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %45 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %49, i32 0, i32 0
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %53 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @tipc_tlv_init(%struct.sk_buff* %51, i64 %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.tipc_nl_compat_cmd_dump*, %struct.tipc_nl_compat_cmd_dump** %4, align 8
  %58 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, %struct.tipc_nl_compat_cmd_dump* %57, i32 0, i32 0
  %59 = load i32 (%struct.tipc_nl_compat_msg*)*, i32 (%struct.tipc_nl_compat_msg*)** %58, align 8
  %60 = icmp ne i32 (%struct.tipc_nl_compat_msg*)* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.tipc_nl_compat_cmd_dump*, %struct.tipc_nl_compat_cmd_dump** %4, align 8
  %63 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, %struct.tipc_nl_compat_cmd_dump* %62, i32 0, i32 0
  %64 = load i32 (%struct.tipc_nl_compat_msg*)*, i32 (%struct.tipc_nl_compat_msg*)** %63, align 8
  %65 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %66 = call i32 %64(%struct.tipc_nl_compat_msg* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %71 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %70, i32 0, i32 0
  %72 = load %struct.sk_buff*, %struct.sk_buff** %71, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  %74 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %75 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %74, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %75, align 8
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %110

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.sk_buff* @nlmsg_new(i32 0, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %7, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %78
  %84 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %85 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %84, i32 0, i32 0
  %86 = load %struct.sk_buff*, %struct.sk_buff** %85, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  %88 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %89 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %88, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %89, align 8
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %110

92:                                               ; preds = %78
  %93 = load %struct.tipc_nl_compat_cmd_dump*, %struct.tipc_nl_compat_cmd_dump** %4, align 8
  %94 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32 @__tipc_nl_compat_dumpit(%struct.tipc_nl_compat_cmd_dump* %93, %struct.tipc_nl_compat_msg* %94, %struct.sk_buff* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %101 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %100, i32 0, i32 0
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  %104 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %105 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %104, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %105, align 8
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %83, %69, %40, %26
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @TLV_CHECK_TYPE(i32, i64) #1

declare dso_local %struct.sk_buff* @tipc_tlv_alloc(i32) #1

declare dso_local i32 @tipc_tlv_init(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @__tipc_nl_compat_dumpit(%struct.tipc_nl_compat_cmd_dump*, %struct.tipc_nl_compat_msg*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
