; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_alloc_userspi.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_alloc_userspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_userspi_info = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.xfrm_mark = type { i32 }
%struct.TYPE_10__ = type { i32 }

@XFRMA_IF_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_alloc_userspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_alloc_userspi(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.xfrm_userspi_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfrm_mark, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %7, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %23 = call %struct.xfrm_userspi_info* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.xfrm_userspi_info* %23, %struct.xfrm_userspi_info** %9, align 8
  %24 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %25 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %30 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %33 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @verify_spi_info(i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %160

39:                                               ; preds = %3
  %40 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %41 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %12, align 4
  %44 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %45 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32* %47, i32** %11, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %8, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %49 = call i32 @xfrm_mark_get(%struct.nlattr** %48, %struct.xfrm_mark* %15)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %51 = load i64, i64* @XFRMA_IF_ID, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %39
  %56 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %57 = load i64, i64* @XFRMA_IF_ID, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_u32(%struct.nlattr* %59)
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %55, %39
  %62 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %63 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load %struct.net*, %struct.net** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %71 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net* %68, i32 %69, i64 %73)
  store %struct.xfrm_state* %74, %struct.xfrm_state** %8, align 8
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %76 = icmp ne %struct.xfrm_state* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @xfrm_addr_equal(i32* %80, i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %87 = call i32 @xfrm_state_put(%struct.xfrm_state* %86)
  store %struct.xfrm_state* null, %struct.xfrm_state** %8, align 8
  br label %88

88:                                               ; preds = %85, %77, %67
  br label %89

89:                                               ; preds = %88, %61
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %91 = icmp ne %struct.xfrm_state* %90, null
  br i1 %91, label %114, label %92

92:                                               ; preds = %89
  %93 = load %struct.net*, %struct.net** %7, align 8
  %94 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %95 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %99 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %104 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %110 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %12, align 4
  %113 = call %struct.xfrm_state* @xfrm_find_acq(%struct.net* %93, %struct.xfrm_mark* %15, i32 %97, i32 %101, i32 %102, i32 %107, i32* %108, i32* %111, i32 1, i32 %112)
  store %struct.xfrm_state* %113, %struct.xfrm_state** %8, align 8
  br label %114

114:                                              ; preds = %92, %89
  %115 = load i32, i32* @ENOENT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %118 = icmp eq %struct.xfrm_state* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %160

120:                                              ; preds = %114
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %122 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %123 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %126 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @xfrm_alloc_spi(%struct.xfrm_state* %121, i32 %124, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %157

132:                                              ; preds = %120
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %135 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %136 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.sk_buff* @xfrm_state_netlink(%struct.sk_buff* %133, %struct.xfrm_state* %134, i32 %137)
  store %struct.sk_buff* %138, %struct.sk_buff** %10, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %140 = call i64 @IS_ERR(%struct.sk_buff* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %132
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = call i32 @PTR_ERR(%struct.sk_buff* %143)
  store i32 %144, i32* %13, align 4
  br label %157

145:                                              ; preds = %132
  %146 = load %struct.net*, %struct.net** %7, align 8
  %147 = getelementptr inbounds %struct.net, %struct.net* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = call i32 @NETLINK_CB(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @nlmsg_unicast(i32 %149, %struct.sk_buff* %150, i32 %155)
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %145, %142, %131
  %158 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %159 = call i32 @xfrm_state_put(%struct.xfrm_state* %158)
  br label %160

160:                                              ; preds = %157, %119, %38
  %161 = load i32, i32* %13, align 4
  ret i32 %161
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_userspi_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @verify_spi_info(i32, i32, i32) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net*, i32, i64) #1

declare dso_local i32 @xfrm_addr_equal(i32*, i32*, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq(%struct.net*, %struct.xfrm_mark*, i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @xfrm_alloc_spi(%struct.xfrm_state*, i32, i32) #1

declare dso_local %struct.sk_buff* @xfrm_state_netlink(%struct.sk_buff*, %struct.xfrm_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
