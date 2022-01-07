; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state_walk = type { i32 }
%struct.xfrm_dump_info = type { i32, i32, %struct.sk_buff*, i32 }
%struct.xfrm_address_filter = type { i32 }
%struct.nlattr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@XFRMA_MAX = common dso_local global i32 0, align 4
@xfrma_policy = common dso_local global i32 0, align 4
@XFRMA_ADDRESS_FILTER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMA_PROTO = common dso_local global i64 0, align 8
@dump_one_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @xfrm_dump_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_dump_sa(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_state_walk*, align 8
  %8 = alloca %struct.xfrm_dump_info, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfrm_address_filter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %6, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = bitcast i32* %22 to %struct.xfrm_state_walk*
  store %struct.xfrm_state_walk* %23, %struct.xfrm_state_walk** %7, align 8
  %24 = call i32 @BUILD_BUG_ON(i32 0)
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 2
  store %struct.sk_buff* %29, %struct.sk_buff** %30, align 8
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @NLM_F_MULTI, align 4
  %38 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %105, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @XFRMA_MAX, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %9, align 8
  %50 = alloca %struct.nlattr*, i64 %48, align 16
  store i64 %48, i64* %10, align 8
  store %struct.xfrm_address_filter* null, %struct.xfrm_address_filter** %11, align 8
  store i32 0, i32* %12, align 4
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %52 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* @XFRMA_MAX, align 4
  %55 = load i32, i32* @xfrma_policy, align 4
  %56 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %57 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @nlmsg_parse_deprecated(%struct.TYPE_2__* %53, i32 0, %struct.nlattr** %50, i32 %54, i32 %55, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

64:                                               ; preds = %45
  %65 = load i64, i64* @XFRMA_ADDRESS_FILTER, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i64, i64* @XFRMA_ADDRESS_FILTER, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call i32 @nla_data(%struct.nlattr* %72)
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.xfrm_address_filter* @kmemdup(i32 %73, i32 4, i32 %74)
  store %struct.xfrm_address_filter* %75, %struct.xfrm_address_filter** %11, align 8
  %76 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %77 = icmp eq %struct.xfrm_address_filter* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i64, i64* @XFRMA_PROTO, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i64, i64* @XFRMA_PROTO, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @nla_get_u8(%struct.nlattr* %90)
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %96 = call i32 @xfrm_state_walk_init(%struct.xfrm_state_walk* %93, i32 %94, %struct.xfrm_address_filter* %95)
  %97 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %98 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 1, i32* %100, align 4
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %92, %78, %62
  %102 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %14, align 4
  switch i32 %103, label %115 [
    i32 0, label %104
    i32 1, label %113
  ]

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.net*, %struct.net** %6, align 8
  %107 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %7, align 8
  %108 = load i32, i32* @dump_one_state, align 4
  %109 = call i32 @xfrm_state_walk(%struct.net* %106, %struct.xfrm_state_walk* %107, i32 %108, %struct.xfrm_dump_info* %8)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i32, i32* %3, align 4
  ret i32 %114

115:                                              ; preds = %101
  unreachable
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.TYPE_2__*, i32, %struct.nlattr**, i32, i32, i32) #1

declare dso_local %struct.xfrm_address_filter* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @xfrm_state_walk_init(%struct.xfrm_state_walk*, i32, %struct.xfrm_address_filter*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @xfrm_state_walk(%struct.net*, %struct.xfrm_state_walk*, i32, %struct.xfrm_dump_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
