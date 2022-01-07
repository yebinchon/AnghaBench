; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_del_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_del_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64*, i64, i32, i32, %struct.ip6_sf_list*, i32, i32, %struct.ifmcaddr6* }
%struct.ip6_sf_list = type { i64, %struct.ip6_sf_list* }
%struct.in6_addr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32)* @ip6_mc_del_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_del_src(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2, i32 %3, %struct.in6_addr* %4, i32 %5) #0 {
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
  store i32 0, i32* %15, align 4
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %21 = icmp ne %struct.inet6_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %195

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
  %38 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %37, i32 0, i32 6
  %39 = call i64 @ipv6_addr_equal(%struct.in6_addr* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %45 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %44, i32 0, i32 7
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
  br label %195

56:                                               ; preds = %47
  %57 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %58 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %61 = call i32 @sf_markstate(%struct.ifmcaddr6* %60)
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %91, label %64

64:                                               ; preds = %56
  %65 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %66 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %75 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %78 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %77, i32 0, i32 0
  %79 = call i32 @read_unlock_bh(i32* %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %195

82:                                               ; preds = %64
  %83 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %84 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %82, %56
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %117, %91
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %99, i64 %101
  %103 = call i32 @ip6_mc_del1_src(%struct.ifmcaddr6* %97, i32 %98, %struct.in6_addr* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp sgt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %96
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %111, %96
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %92

120:                                              ; preds = %92
  %121 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %122 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MCAST_EXCLUDE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %174

126:                                              ; preds = %120
  %127 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %128 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @MCAST_EXCLUDE, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %174

134:                                              ; preds = %126
  %135 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %136 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @MCAST_INCLUDE, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %174

142:                                              ; preds = %134
  %143 = load i64, i64* @MCAST_INCLUDE, align 8
  %144 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %145 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %147 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %150 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %152 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %155 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %157 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %156, i32 0, i32 4
  %158 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %157, align 8
  store %struct.ip6_sf_list* %158, %struct.ip6_sf_list** %19, align 8
  br label %159

159:                                              ; preds = %165, %142
  %160 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %161 = icmp ne %struct.ip6_sf_list* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %164 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %162
  %166 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %167 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %166, i32 0, i32 1
  %168 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %167, align 8
  store %struct.ip6_sf_list* %168, %struct.ip6_sf_list** %19, align 8
  br label %159

169:                                              ; preds = %159
  %170 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %171 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mld_ifc_event(i32 %172)
  br label %187

174:                                              ; preds = %134, %126, %120
  %175 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %176 = call i64 @sf_setstate(%struct.ifmcaddr6* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178, %174
  %182 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %183 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @mld_ifc_event(i32 %184)
  br label %186

186:                                              ; preds = %181, %178
  br label %187

187:                                              ; preds = %186, %169
  %188 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %189 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %188, i32 0, i32 2
  %190 = call i32 @spin_unlock_bh(i32* %189)
  %191 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %192 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %191, i32 0, i32 0
  %193 = call i32 @read_unlock_bh(i32* %192)
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %187, %73, %50, %22
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sf_markstate(%struct.ifmcaddr6*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ip6_mc_del1_src(%struct.ifmcaddr6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @mld_ifc_event(i32) #1

declare dso_local i64 @sf_setstate(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
