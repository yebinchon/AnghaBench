; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i8*, i8* }
%struct.ipv6_pinfo = type { i32 }
%struct.sockaddr_l2tpip6 = type { i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i8* null, align 8
@l2tp_ip6_lock = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@l2tp_ip6_bind_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @l2tp_ip6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip6_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sockaddr_l2tpip6*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.inet_sock* @inet_sk(%struct.sock* %17)
  store %struct.inet_sock* %18, %struct.inet_sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %19)
  store %struct.ipv6_pinfo* %20, %struct.ipv6_pinfo** %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_l2tpip6*
  store %struct.sockaddr_l2tpip6* %22, %struct.sockaddr_l2tpip6** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call %struct.net* @sock_net(%struct.sock* %23)
  store %struct.net* %24, %struct.net** %11, align 8
  store i8* null, i8** %12, align 8
  %25 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %26 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %183

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 24
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %183

40:                                               ; preds = %33
  %41 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %41, i32 0, i32 3
  %43 = call i32 @ipv6_addr_type(i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EADDRNOTAVAIL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %183

50:                                               ; preds = %40
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EADDRNOTAVAIL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %183

58:                                               ; preds = %50
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = call i32 @lock_sock(%struct.sock* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = load i32, i32* @SOCK_ZAPPED, align 4
  %65 = call i32 @sock_flag(%struct.sock* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %179

68:                                               ; preds = %58
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TCP_CLOSE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %179

75:                                               ; preds = %68
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  %79 = call i32 (...) @rcu_read_lock()
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %125

83:                                               ; preds = %75
  store %struct.net_device* null, %struct.net_device** %16, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %90 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %95 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %177

101:                                              ; preds = %97
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %15, align 4
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = call %struct.net* @sock_net(%struct.sock* %104)
  %106 = load i32, i32* %13, align 4
  %107 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %105, i32 %106)
  store %struct.net_device* %107, %struct.net_device** %16, align 8
  %108 = load %struct.net_device*, %struct.net_device** %16, align 8
  %109 = icmp ne %struct.net_device* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %177

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %83
  %113 = load i8*, i8** @LOOPBACK4_IPV6, align 8
  store i8* %113, i8** %12, align 8
  %114 = load i32, i32* @EADDRNOTAVAIL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %15, align 4
  %116 = load %struct.sock*, %struct.sock** %5, align 8
  %117 = call %struct.net* @sock_net(%struct.sock* %116)
  %118 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %119 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %118, i32 0, i32 3
  %120 = load %struct.net_device*, %struct.net_device** %16, align 8
  %121 = call i32 @ipv6_chk_addr(%struct.net* %117, i32* %119, %struct.net_device* %120, i32 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  br label %177

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %75
  %126 = call i32 (...) @rcu_read_unlock()
  %127 = call i32 @write_lock_bh(i32* @l2tp_ip6_lock)
  %128 = load %struct.net*, %struct.net** %11, align 8
  %129 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %130 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %129, i32 0, i32 3
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %133 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @__l2tp_ip6_bind_lookup(%struct.net* %128, i32* %130, i32* null, i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %125
  %138 = call i32 @write_unlock_bh(i32* @l2tp_ip6_lock)
  %139 = load i32, i32* @EADDRINUSE, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %15, align 4
  br label %179

141:                                              ; preds = %125
  %142 = load i8*, i8** %12, align 8
  %143 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %144 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %147 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.sock*, %struct.sock** %5, align 8
  %150 = getelementptr inbounds %struct.sock, %struct.sock* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %152 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sock*, %struct.sock** %5, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %157 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %160 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %10, align 8
  %162 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sock*, %struct.sock** %5, align 8
  %165 = call %struct.TYPE_2__* @l2tp_ip6_sk(%struct.sock* %164)
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load %struct.sock*, %struct.sock** %5, align 8
  %168 = call i32 @sk_add_bind_node(%struct.sock* %167, i32* @l2tp_ip6_bind_table)
  %169 = load %struct.sock*, %struct.sock** %5, align 8
  %170 = call i32 @sk_del_node_init(%struct.sock* %169)
  %171 = call i32 @write_unlock_bh(i32* @l2tp_ip6_lock)
  %172 = load %struct.sock*, %struct.sock** %5, align 8
  %173 = load i32, i32* @SOCK_ZAPPED, align 4
  %174 = call i32 @sock_reset_flag(%struct.sock* %172, i32 %173)
  %175 = load %struct.sock*, %struct.sock** %5, align 8
  %176 = call i32 @release_sock(%struct.sock* %175)
  store i32 0, i32* %4, align 4
  br label %183

177:                                              ; preds = %123, %110, %100
  %178 = call i32 (...) @rcu_read_unlock()
  br label %179

179:                                              ; preds = %177, %137, %74, %67
  %180 = load %struct.sock*, %struct.sock** %5, align 8
  %181 = call i32 @release_sock(%struct.sock* %180)
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %179, %141, %55, %47, %37, %30
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @ipv6_chk_addr(%struct.net*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @__l2tp_ip6_bind_lookup(%struct.net*, i32*, i32*, i32, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.TYPE_2__* @l2tp_ip6_sk(%struct.sock*) #1

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
