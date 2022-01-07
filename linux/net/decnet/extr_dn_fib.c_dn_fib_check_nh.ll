; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_fib.c_dn_fib_check_nh.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_fib.c_dn_fib_check_nh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmsg = type { i64 }
%struct.dn_fib_info = type { i32 }
%struct.dn_fib_nh = type { i32, i64, %struct.net_device*, i32, i64 }
%struct.net_device = type { i32, i32* }
%struct.flowidn = type { i64, i32, i64 }
%struct.dn_fib_res = type { i64, i64 }

@RTNH_F_ONLINK = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@RTNH_F_PERVASIVE = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmsg*, %struct.dn_fib_info*, %struct.dn_fib_nh*)* @dn_fib_check_nh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_check_nh(%struct.rtmsg* %0, %struct.dn_fib_info* %1, %struct.dn_fib_nh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtmsg*, align 8
  %6 = alloca %struct.dn_fib_info*, align 8
  %7 = alloca %struct.dn_fib_nh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowidn, align 8
  %10 = alloca %struct.dn_fib_res, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  store %struct.rtmsg* %0, %struct.rtmsg** %5, align 8
  store %struct.dn_fib_info* %1, %struct.dn_fib_info** %6, align 8
  store %struct.dn_fib_nh* %2, %struct.dn_fib_nh** %7, align 8
  %13 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %14 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %157

17:                                               ; preds = %3
  %18 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %19 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RTNH_F_ONLINK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load %struct.rtmsg*, %struct.rtmsg** %5, align 8
  %26 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RT_SCOPE_LINK, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %206

33:                                               ; preds = %24
  %34 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %35 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @dnet_addr_type(i64 %36)
  %38 = load i64, i64* @RTN_UNICAST, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %206

43:                                               ; preds = %33
  %44 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %45 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i32 %46)
  store %struct.net_device* %47, %struct.net_device** %11, align 8
  %48 = icmp eq %struct.net_device* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %206

52:                                               ; preds = %43
  %53 = load %struct.net_device*, %struct.net_device** %11, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IFF_UP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ENETDOWN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %206

62:                                               ; preds = %52
  %63 = load %struct.net_device*, %struct.net_device** %11, align 8
  %64 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %65 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %64, i32 0, i32 2
  store %struct.net_device* %63, %struct.net_device** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %11, align 8
  %67 = call i32 @dev_hold(%struct.net_device* %66)
  %68 = load i64, i64* @RT_SCOPE_LINK, align 8
  %69 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %70 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %206

71:                                               ; preds = %17
  %72 = call i32 @memset(%struct.flowidn* %9, i32 0, i32 24)
  %73 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %74 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %9, i32 0, i32 2
  store i64 %75, i64* %76, align 8
  %77 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %78 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = load %struct.rtmsg*, %struct.rtmsg** %5, align 8
  %82 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %9, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %9, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RT_SCOPE_LINK, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load i64, i64* @RT_SCOPE_LINK, align 8
  %92 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %9, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %71
  %94 = call i32 @dn_fib_lookup(%struct.flowidn* %9, %struct.dn_fib_res* %10)
  store i32 %94, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %206

98:                                               ; preds = %93
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  %101 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %10, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @RTN_UNICAST, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @RTN_LOCAL, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %154

111:                                              ; preds = %105, %98
  %112 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %10, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %115 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = bitcast %struct.dn_fib_res* %10 to { i64, i64 }*
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @DN_FIB_RES_OIF(i64 %118, i64 %120)
  %122 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %123 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = bitcast %struct.dn_fib_res* %10 to { i64, i64 }*
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %124, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.net_device* @DN_FIB_RES_DEV(i64 %126, i64 %128)
  %130 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %131 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %130, i32 0, i32 2
  store %struct.net_device* %129, %struct.net_device** %131, align 8
  %132 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %133 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %132, i32 0, i32 2
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = icmp eq %struct.net_device* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %111
  br label %154

137:                                              ; preds = %111
  %138 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %139 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %138, i32 0, i32 2
  %140 = load %struct.net_device*, %struct.net_device** %139, align 8
  %141 = call i32 @dev_hold(%struct.net_device* %140)
  %142 = load i32, i32* @ENETDOWN, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  %144 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %145 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %144, i32 0, i32 2
  %146 = load %struct.net_device*, %struct.net_device** %145, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IFF_UP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %137
  br label %154

153:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %152, %136, %110
  %155 = call i32 @dn_fib_res_put(%struct.dn_fib_res* %10)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %206

157:                                              ; preds = %3
  %158 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %159 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @RTNH_F_PERVASIVE, align 4
  %162 = load i32, i32* @RTNH_F_ONLINK, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %206

169:                                              ; preds = %157
  %170 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %171 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i32 %172)
  store %struct.net_device* %173, %struct.net_device** %12, align 8
  %174 = load %struct.net_device*, %struct.net_device** %12, align 8
  %175 = icmp eq %struct.net_device* %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %169
  %177 = load %struct.net_device*, %struct.net_device** %12, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176, %169
  %182 = load i32, i32* @ENODEV, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %206

184:                                              ; preds = %176
  %185 = load %struct.net_device*, %struct.net_device** %12, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IFF_UP, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* @ENETDOWN, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %206

194:                                              ; preds = %184
  %195 = load %struct.net_device*, %struct.net_device** %12, align 8
  %196 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %197 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %196, i32 0, i32 2
  store %struct.net_device* %195, %struct.net_device** %197, align 8
  %198 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %199 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %198, i32 0, i32 2
  %200 = load %struct.net_device*, %struct.net_device** %199, align 8
  %201 = call i32 @dev_hold(%struct.net_device* %200)
  %202 = load i64, i64* @RT_SCOPE_HOST, align 8
  %203 = load %struct.dn_fib_nh*, %struct.dn_fib_nh** %7, align 8
  %204 = getelementptr inbounds %struct.dn_fib_nh, %struct.dn_fib_nh* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %194
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %191, %181, %166, %154, %96, %62, %59, %49, %40, %30
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i64 @dnet_addr_type(i64) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.flowidn*, i32, i32) #1

declare dso_local i32 @dn_fib_lookup(%struct.flowidn*, %struct.dn_fib_res*) #1

declare dso_local i32 @DN_FIB_RES_OIF(i64, i64) #1

declare dso_local %struct.net_device* @DN_FIB_RES_DEV(i64, i64) #1

declare dso_local i32 @dn_fib_res_put(%struct.dn_fib_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
