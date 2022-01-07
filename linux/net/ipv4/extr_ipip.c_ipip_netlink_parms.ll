; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@IPPROTO_IPIP = common dso_local global i8* null, align 8
@IFLA_IPTUN_LINK = common dso_local global i64 0, align 8
@IFLA_IPTUN_LOCAL = common dso_local global i64 0, align 8
@IFLA_IPTUN_REMOTE = common dso_local global i64 0, align 8
@IFLA_IPTUN_TTL = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@IFLA_IPTUN_TOS = common dso_local global i64 0, align 8
@IFLA_IPTUN_PROTO = common dso_local global i64 0, align 8
@IFLA_IPTUN_PMTUDISC = common dso_local global i64 0, align 8
@IFLA_IPTUN_COLLECT_METADATA = common dso_local global i64 0, align 8
@IFLA_IPTUN_FWMARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.ip_tunnel_parm*, i32*, i8**)* @ipip_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip_netlink_parms(%struct.nlattr** %0, %struct.ip_tunnel_parm* %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.ip_tunnel_parm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %10 = call i32 @memset(%struct.ip_tunnel_parm* %9, i32 0, i32 64)
  %11 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load i8*, i8** @IPPROTO_IPIP, align 8
  %15 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i8* %14, i8** %17, align 8
  %18 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 5, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %23 = icmp ne %struct.nlattr** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %166

25:                                               ; preds = %4
  %26 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %27 = load i64, i64* @IFLA_IPTUN_LINK, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %33 = load i64, i64* @IFLA_IPTUN_LINK, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i8* @nla_get_u32(%struct.nlattr* %35)
  %37 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %31, %25
  %40 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %41 = load i64, i64* @IFLA_IPTUN_LOCAL, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %47 = load i64, i64* @IFLA_IPTUN_LOCAL, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i8* @nla_get_in_addr(%struct.nlattr* %49)
  %51 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  store i8* %50, i8** %53, align 8
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %56 = load i64, i64* @IFLA_IPTUN_REMOTE, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %62 = load i64, i64* @IFLA_IPTUN_REMOTE, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i8* @nla_get_in_addr(%struct.nlattr* %64)
  %66 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %67 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %60, %54
  %70 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %71 = load i64, i64* @IFLA_IPTUN_TTL, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %77 = load i64, i64* @IFLA_IPTUN_TTL, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call i8* @nla_get_u8(%struct.nlattr* %79)
  %81 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i8* %80, i8** %83, align 8
  %84 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %85 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load i32, i32* @IP_DF, align 4
  %91 = call i8* @htons(i32 %90)
  %92 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %89, %75
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %98 = load i64, i64* @IFLA_IPTUN_TOS, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %104 = load i64, i64* @IFLA_IPTUN_TOS, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i8* @nla_get_u8(%struct.nlattr* %106)
  %108 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %109 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  store i8* %107, i8** %110, align 8
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %113 = load i64, i64* @IFLA_IPTUN_PROTO, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %112, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %119 = load i64, i64* @IFLA_IPTUN_PROTO, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i8* @nla_get_u8(%struct.nlattr* %121)
  %123 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %124 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %117, %111
  %127 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %128 = load i64, i64* @IFLA_IPTUN_PMTUDISC, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %127, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = icmp ne %struct.nlattr* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %134 = load i64, i64* @IFLA_IPTUN_PMTUDISC, align 8
  %135 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %133, i64 %134
  %136 = load %struct.nlattr*, %struct.nlattr** %135, align 8
  %137 = call i8* @nla_get_u8(%struct.nlattr* %136)
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %132, %126
  %140 = load i32, i32* @IP_DF, align 4
  %141 = call i8* @htons(i32 %140)
  %142 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %143 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %139, %132
  %146 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %147 = load i64, i64* @IFLA_IPTUN_COLLECT_METADATA, align 8
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %146, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = icmp ne %struct.nlattr* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32*, i32** %7, align 8
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %145
  %154 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %155 = load i64, i64* @IFLA_IPTUN_FWMARK, align 8
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %154, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = icmp ne %struct.nlattr* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %161 = load i64, i64* @IFLA_IPTUN_FWMARK, align 8
  %162 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %160, i64 %161
  %163 = load %struct.nlattr*, %struct.nlattr** %162, align 8
  %164 = call i8* @nla_get_u32(%struct.nlattr* %163)
  %165 = load i8**, i8*** %8, align 8
  store i8* %164, i8** %165, align 8
  br label %166

166:                                              ; preds = %24, %159, %153
  ret void
}

declare dso_local i32 @memset(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
