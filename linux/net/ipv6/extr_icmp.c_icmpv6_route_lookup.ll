; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_route_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_route_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"icmp6_send: acast source\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@XFRM_LOOKUP_ICMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, %struct.sk_buff*, %struct.sock*, %struct.flowi6*)* @icmpv6_route_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @icmpv6_route_lookup(%struct.net* %0, %struct.sk_buff* %1, %struct.sock* %2, %struct.flowi6* %3) #0 {
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.flowi6*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.flowi6, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sock* %2, %struct.sock** %8, align 8
  store %struct.flowi6* %3, %struct.flowi6** %9, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %8, align 8
  %16 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %17 = call i32 @ip6_dst_lookup(%struct.net* %14, %struct.sock* %15, %struct.dst_entry** %10, %struct.flowi6* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.dst_entry* @ERR_PTR(i32 %21)
  store %struct.dst_entry* %22, %struct.dst_entry** %5, align 8
  br label %114

23:                                               ; preds = %4
  %24 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %25 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %26 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %25, i32 0, i32 0
  %27 = call i64 @ipv6_anycast_destination(%struct.dst_entry* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %32 = call i32 @dst_release(%struct.dst_entry* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dst_entry* @ERR_PTR(i32 %34)
  store %struct.dst_entry* %35, %struct.dst_entry** %5, align 8
  br label %114

36:                                               ; preds = %23
  %37 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %37, %struct.dst_entry** %11, align 8
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %40 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %41 = call i32 @flowi6_to_flowi(%struct.flowi6* %40)
  %42 = load %struct.sock*, %struct.sock** %8, align 8
  %43 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %38, %struct.dst_entry* %39, i32 %41, %struct.sock* %42, i32 0)
  store %struct.dst_entry* %43, %struct.dst_entry** %10, align 8
  %44 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %45 = call i32 @IS_ERR(%struct.dst_entry* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %49 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %50 = icmp ne %struct.dst_entry* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %52, %struct.dst_entry** %5, align 8
  br label %114

53:                                               ; preds = %47
  br label %64

54:                                               ; preds = %36
  %55 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %56 = call i32 @PTR_ERR(%struct.dst_entry* %55)
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store %struct.dst_entry* null, %struct.dst_entry** %10, align 8
  br label %63

61:                                               ; preds = %54
  %62 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %62, %struct.dst_entry** %5, align 8
  br label %114

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @flowi6_to_flowi(%struct.flowi6* %12)
  %67 = load i32, i32* @AF_INET6, align 4
  %68 = call i32 @xfrm_decode_session_reverse(%struct.sk_buff* %65, i32 %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %106

72:                                               ; preds = %64
  %73 = load %struct.net*, %struct.net** %6, align 8
  %74 = load %struct.sock*, %struct.sock** %8, align 8
  %75 = call i32 @ip6_dst_lookup(%struct.net* %73, %struct.sock* %74, %struct.dst_entry** %11, %struct.flowi6* %12)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %106

79:                                               ; preds = %72
  %80 = load %struct.net*, %struct.net** %6, align 8
  %81 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %82 = call i32 @flowi6_to_flowi(%struct.flowi6* %12)
  %83 = load %struct.sock*, %struct.sock** %8, align 8
  %84 = load i32, i32* @XFRM_LOOKUP_ICMP, align 4
  %85 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %80, %struct.dst_entry* %81, i32 %82, %struct.sock* %83, i32 %84)
  store %struct.dst_entry* %85, %struct.dst_entry** %11, align 8
  %86 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %87 = call i32 @IS_ERR(%struct.dst_entry* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %79
  %90 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %91 = call i32 @dst_release(%struct.dst_entry* %90)
  %92 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  store %struct.dst_entry* %92, %struct.dst_entry** %10, align 8
  br label %105

93:                                               ; preds = %79
  %94 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %95 = call i32 @PTR_ERR(%struct.dst_entry* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @EPERM, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %102 = call i32 @dst_release(%struct.dst_entry* %101)
  %103 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  store %struct.dst_entry* %103, %struct.dst_entry** %5, align 8
  br label %114

104:                                              ; preds = %93
  br label %106

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %104, %78, %71
  %107 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %108 = icmp ne %struct.dst_entry* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %110, %struct.dst_entry** %5, align 8
  br label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = call %struct.dst_entry* @ERR_PTR(i32 %112)
  store %struct.dst_entry* %113, %struct.dst_entry** %5, align 8
  br label %114

114:                                              ; preds = %111, %109, %100, %61, %51, %29, %20
  %115 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %115
}

declare dso_local i32 @ip6_dst_lookup(%struct.net*, %struct.sock*, %struct.dst_entry**, %struct.flowi6*) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

declare dso_local i64 @ipv6_anycast_destination(%struct.dst_entry*, i32*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, %struct.dst_entry*, i32, %struct.sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @xfrm_decode_session_reverse(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
