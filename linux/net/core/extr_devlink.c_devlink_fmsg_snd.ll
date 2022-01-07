; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_snd.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_snd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }

@GENLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devlink_nl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NLMSG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_fmsg*, %struct.genl_info*, i32, i32)* @devlink_fmsg_snd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_fmsg_snd(%struct.devlink_fmsg* %0, %struct.genl_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_fmsg*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %6, align 8
  store %struct.genl_info* %1, %struct.genl_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %78, %4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @GENLMSG_DEFAULT_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sk_buff* @genlmsg_new(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %114

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NLM_F_MULTI, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @genlmsg_put(%struct.sk_buff* %32, i32 %35, i32 %38, i32* @devlink_nl_family, i32 %41, i32 %42)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %15, align 4
  br label %110

49:                                               ; preds = %31
  %50 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = call i32 @devlink_fmsg_prepare_skb(%struct.devlink_fmsg* %50, %struct.sk_buff* %51, i32* %13)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @EMSGSIZE, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %56
  br label %110

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @genlmsg_end(%struct.sk_buff* %68, i8* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %73 = call i32 @genlmsg_reply(%struct.sk_buff* %71, %struct.genl_info* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %114

78:                                               ; preds = %67
  br label %17

79:                                               ; preds = %17
  %80 = load i32, i32* @GENLMSG_DEFAULT_SIZE, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.sk_buff* @genlmsg_new(i32 %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %11, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %114

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NLMSG_DONE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @NLM_F_MULTI, align 4
  %99 = or i32 %97, %98
  %100 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %89, i32 %92, i32 %95, i32 %96, i32 0, i32 %99)
  store %struct.nlmsghdr* %100, %struct.nlmsghdr** %10, align 8
  %101 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %102 = icmp ne %struct.nlmsghdr* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %88
  %104 = load i32, i32* @EMSGSIZE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %15, align 4
  br label %110

106:                                              ; preds = %88
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %109 = call i32 @genlmsg_reply(%struct.sk_buff* %107, %struct.genl_info* %108)
  store i32 %109, i32* %5, align 4
  br label %114

110:                                              ; preds = %103, %65, %46
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = call i32 @nlmsg_free(%struct.sk_buff* %111)
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %106, %85, %76, %28
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @devlink_fmsg_prepare_skb(%struct.devlink_fmsg*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
