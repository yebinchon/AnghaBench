; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i64 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @rawv6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawv6_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %9, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %20, %struct.sockaddr_in6** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %161

27:                                               ; preds = %3
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %161

36:                                               ; preds = %27
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 1
  %39 = call i32 @ipv6_addr_type(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EADDRNOTAVAIL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %161

46:                                               ; preds = %36
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call i32 @lock_sock(%struct.sock* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TCP_CLOSE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %157

57:                                               ; preds = %46
  %58 = call i32 (...) @rcu_read_lock()
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %133

62:                                               ; preds = %57
  store %struct.net_device* null, %struct.net_device** %14, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @__ipv6_addr_needs_scope_id(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp uge i64 %68, 24
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %70, %66
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %155

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %62
  %89 = load %struct.sock*, %struct.sock** %5, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  %96 = load %struct.sock*, %struct.sock** %5, align 8
  %97 = call %struct.TYPE_8__* @sock_net(%struct.sock* %96)
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.net_device* @dev_get_by_index_rcu(%struct.TYPE_8__* %97, i64 %100)
  store %struct.net_device* %101, %struct.net_device** %14, align 8
  %102 = load %struct.net_device*, %struct.net_device** %14, align 8
  %103 = icmp ne %struct.net_device* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  br label %155

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i32, i32* @LOOPBACK4_IPV6, align 4
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %106
  %113 = load %struct.sock*, %struct.sock** %5, align 8
  %114 = call %struct.TYPE_8__* @sock_net(%struct.sock* %113)
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @EADDRNOTAVAIL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %13, align 4
  %123 = load %struct.sock*, %struct.sock** %5, align 8
  %124 = call %struct.TYPE_8__* @sock_net(%struct.sock* %123)
  %125 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %125, i32 0, i32 1
  %127 = load %struct.net_device*, %struct.net_device** %14, align 8
  %128 = call i32 @ipv6_chk_addr(%struct.TYPE_8__* %124, i32* %126, %struct.net_device* %127, i32 0)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %155

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %112, %106
  br label %133

133:                                              ; preds = %132, %57
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %136 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %138 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %140 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sock*, %struct.sock** %5, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %133
  %149 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %150 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %153 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %148, %133
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %154, %130, %104, %86
  %156 = call i32 (...) @rcu_read_unlock()
  br label %157

157:                                              ; preds = %155, %56
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = call i32 @release_sock(%struct.sock* %158)
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %157, %43, %33, %24
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @__ipv6_addr_needs_scope_id(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.TYPE_8__* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_chk_addr(%struct.TYPE_8__*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
