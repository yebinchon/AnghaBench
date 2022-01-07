; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_socket.c_socket_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_socket.c_socket_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock*, i32 }
%struct.sock = type { i32 }
%struct.xt_action_param = type { i32 }
%struct.xt_socket_mtinfo1 = type { i32 }
%struct.TYPE_2__ = type { i64 }

@XT_SOCKET_NOWILDCARD = common dso_local global i32 0, align 4
@XT_SOCKET_TRANSPARENT = common dso_local global i32 0, align 4
@XT_SOCKET_RESTORESKMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, %struct.xt_socket_mtinfo1*)* @socket_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_match(%struct.sk_buff* %0, %struct.xt_action_param* %1, %struct.xt_socket_mtinfo1* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_socket_mtinfo1*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  store %struct.xt_socket_mtinfo1* %2, %struct.xt_socket_mtinfo1** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %8, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %19 = call i32 @xt_net(%struct.xt_action_param* %18)
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call i32 @sock_net(%struct.sock* %20)
  %22 = call i32 @net_eq(i32 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store %struct.sock* null, %struct.sock** %8, align 8
  br label %25

25:                                               ; preds = %24, %17, %3
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %30 = call i32 @xt_net(%struct.xt_action_param* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %33 = call i32 @xt_in(%struct.xt_action_param* %32)
  %34 = call %struct.sock* @nf_sk_lookup_slow_v4(i32 %30, %struct.sk_buff* %31, i32 %33)
  store %struct.sock* %34, %struct.sock** %8, align 8
  br label %35

35:                                               ; preds = %28, %25
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = icmp ne %struct.sock* %36, null
  br i1 %37, label %38, label %107

38:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  %39 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %6, align 8
  %40 = getelementptr inbounds %struct.xt_socket_mtinfo1, %struct.xt_socket_mtinfo1* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XT_SOCKET_NOWILDCARD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = call i64 @sk_fullsock(%struct.sock* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.sock*, %struct.sock** %8, align 8
  %51 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br label %55

55:                                               ; preds = %49, %45, %38
  %56 = phi i1 [ false, %45 ], [ false, %38 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %6, align 8
  %59 = getelementptr inbounds %struct.xt_socket_mtinfo1, %struct.xt_socket_mtinfo1* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @XT_SOCKET_TRANSPARENT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = call i32 @inet_sk_transparent(%struct.sock* %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %6, align 8
  %69 = getelementptr inbounds %struct.xt_socket_mtinfo1, %struct.xt_socket_mtinfo1* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XT_SOCKET_RESTORESKMARK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.sock*, %struct.sock** %8, align 8
  %82 = call i64 @sk_fullsock(%struct.sock* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %84, %80, %77, %74, %67
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load %struct.sock*, %struct.sock** %93, align 8
  %95 = icmp ne %struct.sock* %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.sock*, %struct.sock** %8, align 8
  %98 = call i32 @sock_gen_put(%struct.sock* %97)
  br label %99

99:                                               ; preds = %96, %90
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102, %99
  store %struct.sock* null, %struct.sock** %8, align 8
  br label %106

106:                                              ; preds = %105, %102
  br label %107

107:                                              ; preds = %106, %35
  %108 = load %struct.sock*, %struct.sock** %8, align 8
  %109 = icmp ne %struct.sock* %108, null
  %110 = zext i1 %109 to i32
  ret i32 %110
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sock* @nf_sk_lookup_slow_v4(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @xt_in(%struct.xt_action_param*) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @inet_sk_transparent(%struct.sock*) #1

declare dso_local i32 @sock_gen_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
