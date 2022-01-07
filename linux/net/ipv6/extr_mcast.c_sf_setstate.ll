; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_sf_setstate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_sf_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32*, %struct.ip6_sf_list*, %struct.ip6_sf_list*, %struct.TYPE_2__* }
%struct.ip6_sf_list = type { i32*, i32, %struct.ip6_sf_list*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*)* @sf_setstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf_setstate(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca %struct.ip6_sf_list*, align 8
  %4 = alloca %struct.ip6_sf_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip6_sf_list*, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %10 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %11 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @MCAST_EXCLUDE, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %17 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %22 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %21, i32 0, i32 2
  %23 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %22, align 8
  store %struct.ip6_sf_list* %23, %struct.ip6_sf_list** %3, align 8
  br label %24

24:                                               ; preds = %179, %1
  %25 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %26 = icmp ne %struct.ip6_sf_list* %25, null
  br i1 %26, label %27, label %183

27:                                               ; preds = %24
  %28 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %29 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @MCAST_EXCLUDE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %38 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @MCAST_EXCLUDE, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %46 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @MCAST_INCLUDE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %44, %35
  %54 = phi i1 [ false, %35 ], [ %52, %44 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %65

56:                                               ; preds = %27
  %57 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %58 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @MCAST_INCLUDE, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %122

68:                                               ; preds = %65
  %69 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %70 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %68
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %9, align 8
  %74 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %75 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %74, i32 0, i32 1
  %76 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %75, align 8
  store %struct.ip6_sf_list* %76, %struct.ip6_sf_list** %4, align 8
  br label %77

77:                                               ; preds = %90, %73
  %78 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %79 = icmp ne %struct.ip6_sf_list* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %82 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %81, i32 0, i32 3
  %83 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %84 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %83, i32 0, i32 3
  %85 = call i64 @ipv6_addr_equal(i32* %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %94

88:                                               ; preds = %80
  %89 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  store %struct.ip6_sf_list* %89, %struct.ip6_sf_list** %9, align 8
  br label %90

90:                                               ; preds = %88
  %91 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %92 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %91, i32 0, i32 2
  %93 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %92, align 8
  store %struct.ip6_sf_list* %93, %struct.ip6_sf_list** %4, align 8
  br label %77

94:                                               ; preds = %87, %77
  %95 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %96 = icmp ne %struct.ip6_sf_list* %95, null
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %9, align 8
  %99 = icmp ne %struct.ip6_sf_list* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %102 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %101, i32 0, i32 2
  %103 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %102, align 8
  %104 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %9, align 8
  %105 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %104, i32 0, i32 2
  store %struct.ip6_sf_list* %103, %struct.ip6_sf_list** %105, align 8
  br label %112

106:                                              ; preds = %97
  %107 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %108 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %107, i32 0, i32 2
  %109 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %108, align 8
  %110 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %111 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %110, i32 0, i32 1
  store %struct.ip6_sf_list* %109, %struct.ip6_sf_list** %111, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %114 = call i32 @kfree(%struct.ip6_sf_list* %113)
  br label %115

115:                                              ; preds = %112, %94
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %118 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %115, %68
  br label %178

122:                                              ; preds = %65
  %123 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %124 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %177

127:                                              ; preds = %122
  %128 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %129 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %131 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %130, i32 0, i32 1
  %132 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %131, align 8
  store %struct.ip6_sf_list* %132, %struct.ip6_sf_list** %4, align 8
  br label %133

133:                                              ; preds = %145, %127
  %134 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %135 = icmp ne %struct.ip6_sf_list* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %138 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %137, i32 0, i32 3
  %139 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %140 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %139, i32 0, i32 3
  %141 = call i64 @ipv6_addr_equal(i32* %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %149

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %147 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %146, i32 0, i32 2
  %148 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %147, align 8
  store %struct.ip6_sf_list* %148, %struct.ip6_sf_list** %4, align 8
  br label %133

149:                                              ; preds = %143, %133
  %150 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %151 = icmp ne %struct.ip6_sf_list* %150, null
  br i1 %151, label %171, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call %struct.ip6_sf_list* @kmalloc(i32 40, i32 %153)
  store %struct.ip6_sf_list* %154, %struct.ip6_sf_list** %4, align 8
  %155 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %156 = icmp ne %struct.ip6_sf_list* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %179

158:                                              ; preds = %152
  %159 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %160 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %161 = bitcast %struct.ip6_sf_list* %159 to i8*
  %162 = bitcast %struct.ip6_sf_list* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 40, i1 false)
  %163 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %164 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %163, i32 0, i32 1
  %165 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %164, align 8
  %166 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %167 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %166, i32 0, i32 2
  store %struct.ip6_sf_list* %165, %struct.ip6_sf_list** %167, align 8
  %168 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %169 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %170 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %169, i32 0, i32 1
  store %struct.ip6_sf_list* %168, %struct.ip6_sf_list** %170, align 8
  br label %171

171:                                              ; preds = %158, %149
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  %174 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %171, %122
  br label %178

178:                                              ; preds = %177, %121
  br label %179

179:                                              ; preds = %178, %157
  %180 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %181 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %180, i32 0, i32 2
  %182 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %181, align 8
  store %struct.ip6_sf_list* %182, %struct.ip6_sf_list** %3, align 8
  br label %24

183:                                              ; preds = %24
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

declare dso_local %struct.ip6_sf_list* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
