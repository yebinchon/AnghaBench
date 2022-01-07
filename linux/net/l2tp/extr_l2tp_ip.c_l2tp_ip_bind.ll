; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i64 }
%struct.sockaddr_l2tpip = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@l2tp_ip_lock = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@l2tp_ip_bind_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @l2tp_ip_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.sockaddr_l2tpip*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.inet_sock* @inet_sk(%struct.sock* %13)
  store %struct.inet_sock* %14, %struct.inet_sock** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_l2tpip*
  store %struct.sockaddr_l2tpip* %16, %struct.sockaddr_l2tpip** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.net* @sock_net(%struct.sock* %17)
  store %struct.net* %18, %struct.net** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %144

25:                                               ; preds = %3
  %26 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %144

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = load i32, i32* @SOCK_ZAPPED, align 4
  %41 = call i32 @sock_flag(%struct.sock* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %140

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TCP_CLOSE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %140

51:                                               ; preds = %44
  %52 = load %struct.net*, %struct.net** %10, align 8
  %53 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %54 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @inet_addr_type(%struct.net* %52, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @EADDRNOTAVAIL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %61 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %51
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @RTN_LOCAL, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @RTN_MULTICAST, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @RTN_BROADCAST, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %140

78:                                               ; preds = %73, %69, %65, %51
  %79 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %80 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %86 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %90 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %92 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %91, i32 0, i32 1
  store i64 %88, i64* %92, align 8
  br label %93

93:                                               ; preds = %84, %78
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @RTN_MULTICAST, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @RTN_BROADCAST, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %93
  %102 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %103 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = call i32 @write_lock_bh(i32* @l2tp_ip_lock)
  %106 = load %struct.net*, %struct.net** %10, align 8
  %107 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %108 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %115 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @__l2tp_ip_bind_lookup(%struct.net* %106, i64 %110, i32 0, i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %104
  %120 = call i32 @write_unlock_bh(i32* @l2tp_ip_lock)
  %121 = load i32, i32* @EADDRINUSE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %11, align 4
  br label %140

123:                                              ; preds = %104
  %124 = load %struct.sock*, %struct.sock** %5, align 8
  %125 = call i32 @sk_dst_reset(%struct.sock* %124)
  %126 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %9, align 8
  %127 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sock*, %struct.sock** %5, align 8
  %130 = call %struct.TYPE_4__* @l2tp_ip_sk(%struct.sock* %129)
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.sock*, %struct.sock** %5, align 8
  %133 = call i32 @sk_add_bind_node(%struct.sock* %132, i32* @l2tp_ip_bind_table)
  %134 = load %struct.sock*, %struct.sock** %5, align 8
  %135 = call i32 @sk_del_node_init(%struct.sock* %134)
  %136 = call i32 @write_unlock_bh(i32* @l2tp_ip_lock)
  store i32 0, i32* %11, align 4
  %137 = load %struct.sock*, %struct.sock** %5, align 8
  %138 = load i32, i32* @SOCK_ZAPPED, align 4
  %139 = call i32 @sock_reset_flag(%struct.sock* %137, i32 %138)
  br label %140

140:                                              ; preds = %123, %119, %77, %50, %43
  %141 = load %struct.sock*, %struct.sock** %5, align 8
  %142 = call i32 @release_sock(%struct.sock* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %31, %22
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @__l2tp_ip_bind_lookup(%struct.net*, i64, i32, i32, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @l2tp_ip_sk(%struct.sock*) #1

declare dso_local i32 @sk_add_bind_node(%struct.sock*, i32*) #1

declare dso_local i32 @sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
