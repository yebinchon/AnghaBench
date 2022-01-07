; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_nl_publ_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_nl_publ_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, i32 }
%struct.net = type { i32 }
%struct.tipc_sock = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_SOCK_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_sock_policy = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_publ_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tipc_sock*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %27 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.net* @sock_net(i32 %33)
  store %struct.net* %34, %struct.net** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %89, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @TIPC_NLA_SOCK_MAX, align 4
  %39 = add nsw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %13, align 8
  %42 = alloca %struct.nlattr*, i64 %40, align 16
  store i64 %40, i64* %14, align 8
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @tipc_nlmsg_parse(i32 %45, %struct.nlattr*** %12)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %85

51:                                               ; preds = %37
  %52 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %53 = load i64, i64* @TIPC_NLA_SOCK, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %85

60:                                               ; preds = %51
  %61 = load i32, i32* @TIPC_NLA_SOCK_MAX, align 4
  %62 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %63 = load i64, i64* @TIPC_NLA_SOCK, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = load i32, i32* @tipc_nl_sock_policy, align 4
  %67 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %42, i32 %61, %struct.nlattr* %65, i32 %66, i32* null)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %85

72:                                               ; preds = %60
  %73 = load i64, i64* @TIPC_NLA_SOCK_REF, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load i64, i64* @TIPC_NLA_SOCK_REF, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32 @nla_get_u32(%struct.nlattr* %83)
  store i32 %84, i32* %7, align 4
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %80, %77, %70, %57, %49
  %86 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %15, align 4
  switch i32 %87, label %140 [
    i32 0, label %88
    i32 1, label %138
  ]

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %138

93:                                               ; preds = %89
  %94 = load %struct.net*, %struct.net** %10, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call %struct.tipc_sock* @tipc_sk_lookup(%struct.net* %94, i32 %95)
  store %struct.tipc_sock* %96, %struct.tipc_sock** %11, align 8
  %97 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %98 = icmp ne %struct.tipc_sock* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %138

102:                                              ; preds = %93
  %103 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %104 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %103, i32 0, i32 0
  %105 = call i32 @lock_sock(i32* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %108 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %109 = call i32 @__tipc_nl_list_sk_publ(%struct.sk_buff* %106, %struct.netlink_callback* %107, %struct.tipc_sock* %108, i32* %8)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  store i32 1, i32* %9, align 4
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %115 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %114, i32 0, i32 0
  %116 = call i32 @release_sock(i32* %115)
  %117 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %118 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %117, i32 0, i32 0
  %119 = call i32 @sock_put(i32* %118)
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %122 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %127 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %132 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %130, i32* %134, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %113, %99, %92, %85
  %139 = load i32, i32* %3, align 4
  ret i32 %139

140:                                              ; preds = %85
  unreachable
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tipc_nlmsg_parse(i32, %struct.nlattr***) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.tipc_sock* @tipc_sk_lookup(%struct.net*, i32) #1

declare dso_local i32 @lock_sock(i32*) #1

declare dso_local i32 @__tipc_nl_list_sk_publ(%struct.sk_buff*, %struct.netlink_callback*, %struct.tipc_sock*, i32*) #1

declare dso_local i32 @release_sock(i32*) #1

declare dso_local i32 @sock_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
