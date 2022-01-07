; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.__ip6_tnl_parm = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@IFLA_GRE_LINK = common dso_local global i64 0, align 8
@IFLA_GRE_IFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_OFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_IKEY = common dso_local global i64 0, align 8
@IFLA_GRE_OKEY = common dso_local global i64 0, align 8
@IFLA_GRE_LOCAL = common dso_local global i64 0, align 8
@IFLA_GRE_REMOTE = common dso_local global i64 0, align 8
@IFLA_GRE_TTL = common dso_local global i64 0, align 8
@IFLA_GRE_ENCAP_LIMIT = common dso_local global i64 0, align 8
@IFLA_GRE_FLOWINFO = common dso_local global i64 0, align 8
@IFLA_GRE_FLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_FWMARK = common dso_local global i64 0, align 8
@IFLA_GRE_COLLECT_METADATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.__ip6_tnl_parm*)* @ip6gre_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6gre_netlink_parms(%struct.nlattr** %0, %struct.__ip6_tnl_parm* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.__ip6_tnl_parm*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.__ip6_tnl_parm* %1, %struct.__ip6_tnl_parm** %4, align 8
  %5 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %6 = call i32 @memset(%struct.__ip6_tnl_parm* %5, i32 0, i32 104)
  %7 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %8 = icmp ne %struct.nlattr** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %189

10:                                               ; preds = %2
  %11 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %12 = load i64, i64* @IFLA_GRE_LINK, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %18 = load i64, i64* @IFLA_GRE_LINK, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i8* @nla_get_u32(%struct.nlattr* %20)
  %22 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %23 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %22, i32 0, i32 12
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %16, %10
  %25 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %26 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %32 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_be16(%struct.nlattr* %34)
  %36 = call i8* @gre_flags_to_tnl_flags(i32 %35)
  %37 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %38 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %41 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %47 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @nla_get_be16(%struct.nlattr* %49)
  %51 = call i8* @gre_flags_to_tnl_flags(i32 %50)
  %52 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %53 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %56 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %62 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i8* @nla_get_be32(%struct.nlattr* %64)
  %66 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %67 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %54
  %69 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %70 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %76 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i8* @nla_get_be32(%struct.nlattr* %78)
  %80 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %81 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %84 = load i64, i64* @IFLA_GRE_LOCAL, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %90 = load i64, i64* @IFLA_GRE_LOCAL, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i8* @nla_get_in6_addr(%struct.nlattr* %92)
  %94 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %95 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %98 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %104 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i8* @nla_get_in6_addr(%struct.nlattr* %106)
  %108 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %109 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %96
  %111 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %112 = load i64, i64* @IFLA_GRE_TTL, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %111, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = icmp ne %struct.nlattr* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %118 = load i64, i64* @IFLA_GRE_TTL, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %117, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i8* @nla_get_u8(%struct.nlattr* %120)
  %122 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %123 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %116, %110
  %125 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %126 = load i64, i64* @IFLA_GRE_ENCAP_LIMIT, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %125, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %132 = load i64, i64* @IFLA_GRE_ENCAP_LIMIT, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %131, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = call i8* @nla_get_u8(%struct.nlattr* %134)
  %136 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %137 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %130, %124
  %139 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %140 = load i64, i64* @IFLA_GRE_FLOWINFO, align 8
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %139, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = icmp ne %struct.nlattr* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %146 = load i64, i64* @IFLA_GRE_FLOWINFO, align 8
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %145, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = call i8* @nla_get_be32(%struct.nlattr* %148)
  %150 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %151 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %144, %138
  %153 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %154 = load i64, i64* @IFLA_GRE_FLAGS, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %160 = load i64, i64* @IFLA_GRE_FLAGS, align 8
  %161 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %159, i64 %160
  %162 = load %struct.nlattr*, %struct.nlattr** %161, align 8
  %163 = call i8* @nla_get_u32(%struct.nlattr* %162)
  %164 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %165 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %158, %152
  %167 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %168 = load i64, i64* @IFLA_GRE_FWMARK, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %167, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = icmp ne %struct.nlattr* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %174 = load i64, i64* @IFLA_GRE_FWMARK, align 8
  %175 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %173, i64 %174
  %176 = load %struct.nlattr*, %struct.nlattr** %175, align 8
  %177 = call i8* @nla_get_u32(%struct.nlattr* %176)
  %178 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %179 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %172, %166
  %181 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %182 = load i64, i64* @IFLA_GRE_COLLECT_METADATA, align 8
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %181, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = icmp ne %struct.nlattr* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %188 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %9, %186, %180
  ret void
}

declare dso_local i32 @memset(%struct.__ip6_tnl_parm*, i32, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i8* @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_in6_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
