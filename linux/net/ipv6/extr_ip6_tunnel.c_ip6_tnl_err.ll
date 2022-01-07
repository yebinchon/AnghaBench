; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipv6_tlv_tnl_enc_lim = type { i32 }

@ICMPV6_ADDR_UNREACH = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: Path to destination invalid or inactive!\0A\00", align 1
@ICMPV6_EXC_HOPLIMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: Too small hop limit or routing loop in tunnel!\0A\00", align 1
@ICMPV6_HDR_FIELD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"%s: Too small encapsulation limit or routing loop in tunnel!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: Recipient unable to parse tunneled packet!\0A\00", align 1
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, %struct.inet6_skb_parm*, i64*, i64*, i32*, i64*, i32)* @ip6_tnl_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_err(%struct.sk_buff* %0, i64 %1, %struct.inet6_skb_parm* %2, i64* %3, i64* %4, i32* %5, i64* %6, i32 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inet6_skb_parm*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ipv6hdr*, align 8
  %18 = alloca %struct.net*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ip6_tnl*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.ipv6_tlv_tnl_enc_lim*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.inet6_skb_parm* %2, %struct.inet6_skb_parm** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 %7, i32* %16, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %33, %struct.ipv6hdr** %17, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call %struct.net* @dev_net(%struct.TYPE_4__* %36)
  store %struct.net* %37, %struct.net** %18, align 8
  store i64 132, i64* %19, align 8
  %38 = load i64, i64* @ICMPV6_ADDR_UNREACH, align 8
  store i64 %38, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call %struct.net* @dev_net(%struct.TYPE_4__* %44)
  %46 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %47 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %46, i32 0, i32 2
  %48 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %49 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %48, i32 0, i32 1
  %50 = call %struct.ip6_tnl* @ip6_tnl_lookup(%struct.net* %45, i32* %47, i32* %49)
  store %struct.ip6_tnl* %50, %struct.ip6_tnl** %22, align 8
  %51 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %52 = icmp ne %struct.ip6_tnl* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %8
  br label %185

54:                                               ; preds = %8
  %55 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %56 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @READ_ONCE(i32 %58)
  store i64 %59, i64* %25, align 8
  %60 = load i64, i64* %25, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i64, i64* %25, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %185

67:                                               ; preds = %63, %54
  store i32 0, i32* %23, align 4
  %68 = load i64*, i64** %12, align 8
  %69 = load i64, i64* %68, align 8
  switch i64 %69, label %176 [
    i64 132, label %70
    i64 129, label %76
    i64 131, label %88
    i64 130, label %133
    i64 128, label %165
  ]

70:                                               ; preds = %67
  %71 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %72 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 1, i32* %24, align 4
  br label %176

76:                                               ; preds = %67
  %77 = load i64*, i64** %13, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ICMPV6_EXC_HOPLIMIT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %83 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 1, i32* %24, align 4
  br label %87

87:                                               ; preds = %81, %76
  br label %176

88:                                               ; preds = %67
  store i64 0, i64* %29, align 8
  %89 = load i64*, i64** %13, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ICMPV6_HDR_FIELD, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @ip6_tnl_parse_tlv_enc_lim(%struct.sk_buff* %94, i32* %97)
  store i64 %98, i64* %29, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i64, i64* %29, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load i64, i64* %29, align 8
  %104 = load i64*, i64** %15, align 8
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 2
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %29, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = bitcast i32* %113 to %struct.ipv6_tlv_tnl_enc_lim*
  store %struct.ipv6_tlv_tnl_enc_lim* %114, %struct.ipv6_tlv_tnl_enc_lim** %27, align 8
  %115 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %27, align 8
  %116 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %108
  %120 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %121 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  store i32 1, i32* %24, align 4
  br label %125

125:                                              ; preds = %119, %108
  br label %132

126:                                              ; preds = %102, %99
  %127 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %128 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %126, %125
  br label %176

133:                                              ; preds = %67
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = load %struct.net*, %struct.net** %18, align 8
  %136 = load i64*, i64** %15, align 8
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @htonl(i64 %137)
  %139 = load %struct.net*, %struct.net** %18, align 8
  %140 = call i32 @sock_net_uid(%struct.net* %139, i32* null)
  %141 = call i32 @ip6_update_pmtu(%struct.sk_buff* %134, %struct.net* %135, i32 %138, i32 0, i32 0, i32 %140)
  %142 = load i64*, i64** %15, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 %143, %145
  store i64 %146, i64* %28, align 8
  %147 = load i64, i64* %28, align 8
  %148 = load i64, i64* @IPV6_MIN_MTU, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %133
  %151 = load i64, i64* @IPV6_MIN_MTU, align 8
  store i64 %151, i64* %28, align 8
  br label %152

152:                                              ; preds = %150, %133
  %153 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %154 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ntohs(i32 %155)
  %157 = sext i32 %156 to i64
  %158 = add i64 12, %157
  store i64 %158, i64* %26, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %28, align 8
  %161 = icmp ugt i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  store i64 130, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %163 = load i64, i64* %28, align 8
  store i64 %163, i64* %21, align 8
  store i32 1, i32* %24, align 4
  br label %164

164:                                              ; preds = %162, %152
  br label %176

165:                                              ; preds = %67
  %166 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %167 = load %struct.net*, %struct.net** %18, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.net*, %struct.net** %18, align 8
  %174 = call i32 @sock_net_uid(%struct.net* %173, i32* null)
  %175 = call i32 @ip6_redirect(%struct.sk_buff* %166, %struct.net* %167, i32 %172, i32 0, i32 %174)
  br label %176

176:                                              ; preds = %67, %165, %164, %132, %87, %70
  %177 = load i64, i64* %19, align 8
  %178 = load i64*, i64** %12, align 8
  store i64 %177, i64* %178, align 8
  %179 = load i64, i64* %20, align 8
  %180 = load i64*, i64** %13, align 8
  store i64 %179, i64* %180, align 8
  %181 = load i64, i64* %21, align 8
  %182 = load i64*, i64** %15, align 8
  store i64 %181, i64* %182, align 8
  %183 = load i32, i32* %24, align 4
  %184 = load i32*, i32** %14, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %176, %66, %53
  %186 = call i32 (...) @rcu_read_unlock()
  %187 = load i32, i32* %23, align 4
  ret i32 %187
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip6_tnl* @ip6_tnl_lookup(%struct.net*, i32*, i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32) #1

declare dso_local i64 @ip6_tnl_parse_tlv_enc_lim(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ip6_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip6_redirect(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
