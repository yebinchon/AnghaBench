; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_get_extensions.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_get_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }
%struct.nlattr = type { i32 }
%struct.ip_set_ext = type { %struct.TYPE_2__, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IPSET_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_ATTR_PACKETS = common dso_local global i64 0, align 8
@IPSET_ATTR_BYTES = common dso_local global i64 0, align 8
@IPSET_ATTR_SKBMARK = common dso_local global i64 0, align 8
@IPSET_ATTR_SKBPRIO = common dso_local global i64 0, align 8
@IPSET_ATTR_SKBQUEUE = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ERR_TIMEOUT = common dso_local global i32 0, align 4
@IPSET_ERR_COUNTER = common dso_local global i32 0, align 4
@IPSET_ATTR_COMMENT = common dso_local global i64 0, align 8
@IPSET_ERR_COMMENT = common dso_local global i32 0, align 4
@IPSET_ERR_SKBINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_get_extensions(%struct.ip_set* %0, %struct.nlattr** %1, %struct.ip_set_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ip_set_ext*, align 8
  %8 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.ip_set_ext* %2, %struct.ip_set_ext** %7, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %10 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %11 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %15 = load i64, i64* @IPSET_ATTR_PACKETS, align 8
  %16 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %20 = load i64, i64* @IPSET_ATTR_BYTES, align 8
  %21 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %25 = load i64, i64* @IPSET_ATTR_SKBMARK, align 8
  %26 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @IPSET_ATTR_SKBPRIO, align 8
  %31 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %35 = load i64, i64* @IPSET_ATTR_SKBQUEUE, align 8
  %36 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %28, %23, %18, %13, %3
  %40 = phi i1 [ true, %28 ], [ true, %23 ], [ true, %18 ], [ true, %13 ], [ true, %3 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %216

47:                                               ; preds = %39
  %48 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %49 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %55 = call i32 @SET_WITH_TIMEOUT(%struct.ip_set* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @IPSET_ERR_TIMEOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %216

60:                                               ; preds = %53
  %61 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %62 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @ip_set_timeout_uget(%struct.nlattr* %64)
  %66 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %67 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %60, %47
  %69 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %70 = load i64, i64* @IPSET_ATTR_BYTES, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %76 = load i64, i64* @IPSET_ATTR_PACKETS, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %74, %68
  %81 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %82 = call i32 @SET_WITH_COUNTER(%struct.ip_set* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @IPSET_ERR_COUNTER, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %216

87:                                               ; preds = %80
  %88 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %89 = load i64, i64* @IPSET_ATTR_BYTES, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %95 = load i64, i64* @IPSET_ATTR_BYTES, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @nla_get_be64(%struct.nlattr* %97)
  %99 = call i8* @be64_to_cpu(i32 %98)
  %100 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %101 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %93, %87
  %103 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %104 = load i64, i64* @IPSET_ATTR_PACKETS, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = icmp ne %struct.nlattr* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %110 = load i64, i64* @IPSET_ATTR_PACKETS, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i32 @nla_get_be64(%struct.nlattr* %112)
  %114 = call i8* @be64_to_cpu(i32 %113)
  %115 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %116 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %108, %102
  br label %118

118:                                              ; preds = %117, %74
  %119 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %120 = load i64, i64* @IPSET_ATTR_COMMENT, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = icmp ne %struct.nlattr* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %126 = call i32 @SET_WITH_COMMENT(%struct.ip_set* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @IPSET_ERR_COMMENT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %216

131:                                              ; preds = %124
  %132 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %133 = load i64, i64* @IPSET_ATTR_COMMENT, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %132, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = call i32 @ip_set_comment_uget(%struct.nlattr* %135)
  %137 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %138 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %131, %118
  %140 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %141 = load i64, i64* @IPSET_ATTR_SKBMARK, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = icmp ne %struct.nlattr* %143, null
  br i1 %144, label %145, label %169

145:                                              ; preds = %139
  %146 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %147 = call i32 @SET_WITH_SKBINFO(%struct.ip_set* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @IPSET_ERR_SKBINFO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %216

152:                                              ; preds = %145
  %153 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %154 = load i64, i64* @IPSET_ATTR_SKBMARK, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = call i32 @nla_get_be64(%struct.nlattr* %156)
  %158 = call i8* @be64_to_cpu(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = ashr i32 %160, 32
  %162 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %163 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %167 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  br label %169

169:                                              ; preds = %152, %139
  %170 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %171 = load i64, i64* @IPSET_ATTR_SKBPRIO, align 8
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %170, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = icmp ne %struct.nlattr* %173, null
  br i1 %174, label %175, label %192

175:                                              ; preds = %169
  %176 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %177 = call i32 @SET_WITH_SKBINFO(%struct.ip_set* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* @IPSET_ERR_SKBINFO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %216

182:                                              ; preds = %175
  %183 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %184 = load i64, i64* @IPSET_ATTR_SKBPRIO, align 8
  %185 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %183, i64 %184
  %186 = load %struct.nlattr*, %struct.nlattr** %185, align 8
  %187 = call i32 @nla_get_be32(%struct.nlattr* %186)
  %188 = call i32 @be32_to_cpu(i32 %187)
  %189 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %190 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  store i32 %188, i32* %191, align 4
  br label %192

192:                                              ; preds = %182, %169
  %193 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %194 = load i64, i64* @IPSET_ATTR_SKBQUEUE, align 8
  %195 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %193, i64 %194
  %196 = load %struct.nlattr*, %struct.nlattr** %195, align 8
  %197 = icmp ne %struct.nlattr* %196, null
  br i1 %197, label %198, label %215

198:                                              ; preds = %192
  %199 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %200 = call i32 @SET_WITH_SKBINFO(%struct.ip_set* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* @IPSET_ERR_SKBINFO, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %4, align 4
  br label %216

205:                                              ; preds = %198
  %206 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %207 = load i64, i64* @IPSET_ATTR_SKBQUEUE, align 8
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %206, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = call i32 @nla_get_be16(%struct.nlattr* %209)
  %211 = call i32 @be16_to_cpu(i32 %210)
  %212 = load %struct.ip_set_ext*, %struct.ip_set_ext** %7, align 8
  %213 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 2
  store i32 %211, i32* %214, align 8
  br label %215

215:                                              ; preds = %205, %192
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %202, %179, %149, %128, %84, %57, %44
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_optattr_netorder(%struct.nlattr**, i64) #1

declare dso_local i32 @SET_WITH_TIMEOUT(%struct.ip_set*) #1

declare dso_local i32 @ip_set_timeout_uget(%struct.nlattr*) #1

declare dso_local i32 @SET_WITH_COUNTER(%struct.ip_set*) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #1

declare dso_local i32 @SET_WITH_COMMENT(%struct.ip_set*) #1

declare dso_local i32 @ip_set_comment_uget(%struct.nlattr*) #1

declare dso_local i32 @SET_WITH_SKBINFO(%struct.ip_set*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
