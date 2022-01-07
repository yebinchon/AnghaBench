; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_metrics_nl_cmd_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_metrics_nl_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_metrics_block = type { i32, i32, i32 }
%struct.inetpeer_addr = type { i32 }
%struct.net = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tcp_metrics_nl_family = common dso_local global i32 0, align 4
@tcp_metrics_hash_log = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@tcp_metrics_hash = common dso_local global %struct.TYPE_4__* null, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @tcp_metrics_nl_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_metrics_nl_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.tcp_metrics_block*, align 8
  %7 = alloca %struct.inetpeer_addr, align 4
  %8 = alloca %struct.inetpeer_addr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = call %struct.net* @genl_info_net(%struct.genl_info* %15)
  store %struct.net* %16, %struct.net** %11, align 8
  store i32 1, i32* %14, align 4
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = call i32 @parse_nl_addr(%struct.genl_info* %17, %struct.inetpeer_addr* %8, i32* %9, i32 0)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %3, align 4
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = call i32 @parse_nl_saddr(%struct.genl_info* %24, %struct.inetpeer_addr* %7)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %119

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @genlmsg_put_reply(%struct.sk_buff* %39, %struct.genl_info* %40, i32* @tcp_metrics_nl_family, i32 0, i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %112

50:                                               ; preds = %38
  %51 = load %struct.net*, %struct.net** %11, align 8
  %52 = call i32 @net_hash_mix(%struct.net* %51)
  %53 = load i32, i32* %9, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @tcp_metrics_hash_log, align 4
  %57 = call i32 @hash_32(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @ESRCH, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  %60 = call i32 (...) @rcu_read_lock()
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcp_metrics_hash, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.tcp_metrics_block* @rcu_dereference(i32 %66)
  store %struct.tcp_metrics_block* %67, %struct.tcp_metrics_block** %6, align 8
  br label %68

68:                                               ; preds = %95, %50
  %69 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %70 = icmp ne %struct.tcp_metrics_block* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %73 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %72, i32 0, i32 1
  %74 = call i64 @addr_same(i32* %73, %struct.inetpeer_addr* %8)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %81 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %80, i32 0, i32 0
  %82 = call i64 @addr_same(i32* %81, %struct.inetpeer_addr* %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79, %76
  %85 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %86 = call i32 @tm_net(%struct.tcp_metrics_block* %85)
  %87 = load %struct.net*, %struct.net** %11, align 8
  %88 = call i64 @net_eq(i32 %86, %struct.net* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %93 = call i32 @tcp_metrics_fill_info(%struct.sk_buff* %91, %struct.tcp_metrics_block* %92)
  store i32 %93, i32* %13, align 4
  br label %100

94:                                               ; preds = %84, %79, %71
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %97 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.tcp_metrics_block* @rcu_dereference(i32 %98)
  store %struct.tcp_metrics_block* %99, %struct.tcp_metrics_block** %6, align 8
  br label %68

100:                                              ; preds = %90, %68
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %115

105:                                              ; preds = %100
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @genlmsg_end(%struct.sk_buff* %106, i8* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %111 = call i32 @genlmsg_reply(%struct.sk_buff* %109, %struct.genl_info* %110)
  store i32 %111, i32* %3, align 4
  br label %119

112:                                              ; preds = %49
  %113 = load i32, i32* @EMSGSIZE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %104
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = call i32 @nlmsg_free(%struct.sk_buff* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %105, %35, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @parse_nl_addr(%struct.genl_info*, %struct.inetpeer_addr*, i32*, i32) #1

declare dso_local i32 @parse_nl_saddr(%struct.genl_info*, %struct.inetpeer_addr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @net_hash_mix(%struct.net*) #1

declare dso_local i32 @hash_32(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_metrics_block* @rcu_dereference(i32) #1

declare dso_local i64 @addr_same(i32*, %struct.inetpeer_addr*) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @tm_net(%struct.tcp_metrics_block*) #1

declare dso_local i32 @tcp_metrics_fill_info(%struct.sk_buff*, %struct.tcp_metrics_block*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
