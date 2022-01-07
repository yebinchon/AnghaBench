; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_v4_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_v4_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }

@raw_v4_hashinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.iphdr*, i32)* @raw_v4_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_v4_input(%struct.sk_buff* %0, %struct.iphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.hlist_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @inet_sdif(%struct.sk_buff* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @inet_iif(%struct.sk_buff* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = call i32 @read_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 0))
  %19 = load %struct.hlist_head*, %struct.hlist_head** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 1), align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %19, i64 %21
  store %struct.hlist_head* %22, %struct.hlist_head** %10, align 8
  %23 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %24 = call i64 @hlist_empty(%struct.hlist_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %105

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call %struct.net* @dev_net(%struct.TYPE_4__* %30)
  store %struct.net* %31, %struct.net** %12, align 8
  %32 = load %struct.net*, %struct.net** %12, align 8
  %33 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %34 = call i32 @__sk_head(%struct.hlist_head* %33)
  %35 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.sock* @__raw_v4_lookup(%struct.net* %32, i32 %34, i32 %37, i32 %40, i32 %43, i32 %44, i32 %45)
  store %struct.sock* %46, %struct.sock** %9, align 8
  br label %47

47:                                               ; preds = %88, %27
  %48 = load %struct.sock*, %struct.sock** %9, align 8
  %49 = icmp ne %struct.sock* %48, null
  br i1 %49, label %50, label %104

50:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  %51 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IPPROTO_ICMP, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @icmp_filter(%struct.sock* %57, %struct.sk_buff* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @ip_mc_sf_allow(%struct.sock* %62, i32 %65, i32 %68, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %61
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %13, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.sock*, %struct.sock** %9, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = call i32 @raw_rcv(%struct.sock* %84, %struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %83, %77
  br label %88

88:                                               ; preds = %87, %61, %56
  %89 = load %struct.net*, %struct.net** %12, align 8
  %90 = load %struct.sock*, %struct.sock** %9, align 8
  %91 = call i32 @sk_next(%struct.sock* %90)
  %92 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call %struct.sock* @__raw_v4_lookup(%struct.net* %89, i32 %91, i32 %94, i32 %97, i32 %100, i32 %101, i32 %102)
  store %struct.sock* %103, %struct.sock** %9, align 8
  br label %47

104:                                              ; preds = %47
  br label %105

105:                                              ; preds = %104, %26
  %106 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 0))
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @inet_sdif(%struct.sk_buff*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @hlist_empty(%struct.hlist_head*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local %struct.sock* @__raw_v4_lookup(%struct.net*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__sk_head(%struct.hlist_head*) #1

declare dso_local i32 @icmp_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @ip_mc_sf_allow(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @raw_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_next(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
