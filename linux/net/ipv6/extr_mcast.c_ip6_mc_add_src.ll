; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_add_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_add_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64, i64*, i32, %struct.ip6_sf_list*, i32, i32, %struct.ifmcaddr6* }
%struct.ip6_sf_list = type { i64, %struct.ip6_sf_list* }
%struct.in6_addr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32)* @ip6_mc_add_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_add_src(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2, i32 %3, %struct.in6_addr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifmcaddr6*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ip6_sf_list*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %8, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.in6_addr* %4, %struct.in6_addr** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %21 = icmp ne %struct.inet6_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %211

25:                                               ; preds = %6
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 0
  %28 = call i32 @read_lock_bh(i32* %27)
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 3
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %30, align 8
  store %struct.ifmcaddr6* %31, %struct.ifmcaddr6** %14, align 8
  br label %32

32:                                               ; preds = %43, %25
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %34 = icmp ne %struct.ifmcaddr6* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %38 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %37, i32 0, i32 5
  %39 = call i64 @ipv6_addr_equal(%struct.in6_addr* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %45 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %44, i32 0, i32 6
  %46 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %45, align 8
  store %struct.ifmcaddr6* %46, %struct.ifmcaddr6** %14, align 8
  br label %32

47:                                               ; preds = %41, %32
  %48 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %49 = icmp ne %struct.ifmcaddr6* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %52 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %51, i32 0, i32 0
  %53 = call i32 @read_unlock_bh(i32* %52)
  %54 = load i32, i32* @ESRCH, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %211

56:                                               ; preds = %47
  %57 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %58 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %61 = call i32 @sf_markstate(%struct.ifmcaddr6* %60)
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %63 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MCAST_EXCLUDE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %56
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %72 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %70, %56
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %87, i64 %89
  %91 = call i32 @ip6_mc_add1_src(%struct.ifmcaddr6* %85, i32 %86, %struct.in6_addr* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %80

99:                                               ; preds = %94, %80
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %107 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %105, %102
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %127, %114
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %122, i64 %124
  %126 = call i32 @ip6_mc_del1_src(%struct.ifmcaddr6* %120, i32 %121, %struct.in6_addr* %125)
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %115

130:                                              ; preds = %115
  br label %203

131:                                              ; preds = %99
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %134 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @MCAST_EXCLUDE, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = icmp ne i32 %132, %140
  br i1 %141, label %142, label %194

142:                                              ; preds = %131
  %143 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %144 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @MCAST_EXCLUDE, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i64, i64* @MCAST_EXCLUDE, align 8
  %152 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %153 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %167

154:                                              ; preds = %142
  %155 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %156 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @MCAST_INCLUDE, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i64, i64* @MCAST_INCLUDE, align 8
  %164 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %165 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %154
  br label %167

167:                                              ; preds = %166, %150
  %168 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %169 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %172 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %174 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %177 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %179 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %178, i32 0, i32 3
  %180 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %179, align 8
  store %struct.ip6_sf_list* %180, %struct.ip6_sf_list** %19, align 8
  br label %181

181:                                              ; preds = %187, %167
  %182 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %183 = icmp ne %struct.ip6_sf_list* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %186 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %184
  %188 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %189 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %188, i32 0, i32 1
  %190 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %189, align 8
  store %struct.ip6_sf_list* %190, %struct.ip6_sf_list** %19, align 8
  br label %181

191:                                              ; preds = %181
  %192 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %193 = call i32 @mld_ifc_event(%struct.inet6_dev* %192)
  br label %202

194:                                              ; preds = %131
  %195 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %196 = call i64 @sf_setstate(%struct.ifmcaddr6* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %200 = call i32 @mld_ifc_event(%struct.inet6_dev* %199)
  br label %201

201:                                              ; preds = %198, %194
  br label %202

202:                                              ; preds = %201, %191
  br label %203

203:                                              ; preds = %202, %130
  %204 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %205 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %204, i32 0, i32 2
  %206 = call i32 @spin_unlock_bh(i32* %205)
  %207 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %208 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %207, i32 0, i32 0
  %209 = call i32 @read_unlock_bh(i32* %208)
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %203, %50, %22
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sf_markstate(%struct.ifmcaddr6*) #1

declare dso_local i32 @ip6_mc_add1_src(%struct.ifmcaddr6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @ip6_mc_del1_src(%struct.ifmcaddr6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @mld_ifc_event(%struct.inet6_dev*) #1

declare dso_local i64 @sf_setstate(%struct.ifmcaddr6*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
