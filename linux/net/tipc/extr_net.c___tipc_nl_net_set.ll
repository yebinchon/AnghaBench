; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_net.c___tipc_nl_net_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_net.c___tipc_nl_net_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.net = type { i32 }
%struct.tipc_net = type { i32, i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_NET_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_NET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_net_policy = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TIPC_NLA_NET_ID = common dso_local global i64 0, align 8
@TIPC_NLA_NET_ADDR = common dso_local global i64 0, align 8
@TIPC_NLA_NET_NODEID = common dso_local global i64 0, align 8
@NODE_ID_LEN = common dso_local global i32 0, align 4
@TIPC_NLA_NET_NODEID_W1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_nl_net_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tipc_net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %18 = load i32, i32* @TIPC_NLA_NET_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %8, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = call %struct.tipc_net* @tipc_net(%struct.net* %27)
  store %struct.tipc_net* %28, %struct.tipc_net** %9, align 8
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @TIPC_NLA_NET, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %143

39:                                               ; preds = %2
  %40 = load i32, i32* @TIPC_NLA_NET_MAX, align 4
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @TIPC_NLA_NET, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @tipc_nl_net_policy, align 4
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %40, i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %143

56:                                               ; preds = %39
  %57 = load %struct.net*, %struct.net** %8, align 8
  %58 = call i64 @tipc_own_addr(%struct.net* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %143

63:                                               ; preds = %56
  %64 = load i64, i64* @TIPC_NLA_NET_ID, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i64, i64* @TIPC_NLA_NET_ID, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @nla_get_u32(%struct.nlattr* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 9999
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %143

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.tipc_net*, %struct.tipc_net** %9, align 8
  %84 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %63
  %86 = load i64, i64* @TIPC_NLA_NET_ADDR, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load i64, i64* @TIPC_NLA_NET_ADDR, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i32 @nla_get_u32(%struct.nlattr* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %143

100:                                              ; preds = %90
  %101 = load %struct.tipc_net*, %struct.tipc_net** %9, align 8
  %102 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.net*, %struct.net** %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @tipc_net_init(%struct.net* %103, i32* null, i32 %104)
  br label %106

106:                                              ; preds = %100, %85
  %107 = load i64, i64* @TIPC_NLA_NET_NODEID, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %142

111:                                              ; preds = %106
  %112 = load i32, i32* @NODE_ID_LEN, align 4
  %113 = zext i32 %112 to i64
  %114 = call i8* @llvm.stacksave()
  store i8* %114, i8** %14, align 8
  %115 = alloca i32, i64 %113, align 16
  store i64 %113, i64* %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32* %116, i32** %16, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 8
  store i32* %117, i32** %17, align 8
  %118 = load i64, i64* @TIPC_NLA_NET_NODEID_W1, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = icmp ne %struct.nlattr* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %111
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %138

125:                                              ; preds = %111
  %126 = load i64, i64* @TIPC_NLA_NET_NODEID, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = call i32 @nla_get_u64(%struct.nlattr* %128)
  %130 = load i32*, i32** %16, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i64, i64* @TIPC_NLA_NET_NODEID_W1, align 8
  %132 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %131
  %133 = load %struct.nlattr*, %struct.nlattr** %132, align 8
  %134 = call i32 @nla_get_u64(%struct.nlattr* %133)
  %135 = load i32*, i32** %17, align 8
  store i32 %134, i32* %135, align 4
  %136 = load %struct.net*, %struct.net** %8, align 8
  %137 = call i32 @tipc_net_init(%struct.net* %136, i32* %115, i32 0)
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %125, %122
  %139 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %11, align 4
  switch i32 %140, label %143 [
    i32 0, label %141
  ]

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141, %106
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %143

143:                                              ; preds = %142, %138, %97, %78, %60, %54, %36
  %144 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @sock_net(i32) #2

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i64 @tipc_own_addr(%struct.net*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_net_init(%struct.net*, i32*, i32) #2

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
