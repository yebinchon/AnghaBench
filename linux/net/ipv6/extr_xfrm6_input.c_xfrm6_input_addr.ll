; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_input.c_xfrm6_input_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_input.c_xfrm6_input_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sec_path = type { i64, %struct.xfrm_state** }

@LINUX_MIB_XFRMINERROR = common dso_local global i32 0, align 4
@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINBUFFERERROR = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@XFRM_STATE_WILDRECV = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINNOSTATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_input_addr(%struct.sk_buff* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca %struct.sec_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @dev_net(i32 %18)
  store %struct.net* %19, %struct.net** %10, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %11, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.sec_path* @secpath_set(%struct.sk_buff* %20)
  store %struct.sec_path* %21, %struct.sec_path** %12, align 8
  %22 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %23 = icmp ne %struct.sec_path* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.net*, %struct.net** %10, align 8
  %26 = load i32, i32* @LINUX_MIB_XFRMINERROR, align 4
  %27 = call i32 @XFRM_INC_STATS(%struct.net* %25, i32 %26)
  br label %158

28:                                               ; preds = %4
  %29 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %30 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 1, %31
  %33 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.net*, %struct.net** %10, align 8
  %37 = load i32, i32* @LINUX_MIB_XFRMINBUFFERERROR, align 4
  %38 = call i32 @XFRM_INC_STATS(%struct.net* %36, i32 %37)
  br label %158

39:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %114, %39
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %117

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  switch i32 %44, label %50 [
    i32 0, label %45
    i32 1, label %48
  ]

45:                                               ; preds = %43
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %8, align 8
  store i32* %47, i32** %15, align 8
  br label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  store i32* %49, i32** %14, align 8
  store i32* @in6addr_any, i32** %15, align 8
  br label %51

50:                                               ; preds = %43
  store i32* @in6addr_any, i32** %14, align 8
  store i32* @in6addr_any, i32** %15, align 8
  br label %51

51:                                               ; preds = %50, %48, %45
  %52 = load %struct.net*, %struct.net** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = call %struct.xfrm_state* @xfrm_state_lookup_byaddr(%struct.net* %52, i32 %55, i32* %56, i32* %57, i32 %58, i32 %59)
  store %struct.xfrm_state* %60, %struct.xfrm_state** %11, align 8
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %62 = icmp ne %struct.xfrm_state* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %114

64:                                               ; preds = %51
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @XFRM_STATE_WILDRECV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %70, %64
  %79 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %80 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XFRM_STATE_VALID, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %78
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %90 = call i32 @xfrm_state_check_expire(%struct.xfrm_state* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %88
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %94 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %97 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64 (%struct.xfrm_state*, %struct.sk_buff*)*, i64 (%struct.xfrm_state*, %struct.sk_buff*)** %99, align 8
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i64 %100(%struct.xfrm_state* %101, %struct.sk_buff* %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %117

106:                                              ; preds = %92
  br label %111

107:                                              ; preds = %88, %78, %70
  %108 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %109 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  br label %111

111:                                              ; preds = %107, %106
  %112 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %113 = call i32 @xfrm_state_put(%struct.xfrm_state* %112)
  store %struct.xfrm_state* null, %struct.xfrm_state** %11, align 8
  br label %114

114:                                              ; preds = %111, %63
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %40

117:                                              ; preds = %105, %40
  %118 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %119 = icmp ne %struct.xfrm_state* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load %struct.net*, %struct.net** %10, align 8
  %122 = load i32, i32* @LINUX_MIB_XFRMINNOSTATES, align 4
  %123 = call i32 @XFRM_INC_STATS(%struct.net* %121, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = load i32, i32* @AF_INET6, align 4
  %126 = call i32 @xfrm_audit_state_notfound_simple(%struct.sk_buff* %124, i32 %125)
  br label %158

127:                                              ; preds = %117
  %128 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %129 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %130 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %129, i32 0, i32 1
  %131 = load %struct.xfrm_state**, %struct.xfrm_state*** %130, align 8
  %132 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %133 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %131, i64 %134
  store %struct.xfrm_state* %128, %struct.xfrm_state** %136, align 8
  %137 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %138 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %137, i32 0, i32 0
  %139 = call i32 @spin_lock(i32* %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %144 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %151 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %156 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock(i32* %156)
  store i32 1, i32* %5, align 4
  br label %159

158:                                              ; preds = %120, %35, %24
  store i32 -1, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sec_path* @secpath_set(%struct.sk_buff*) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_byaddr(%struct.net*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_notfound_simple(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
