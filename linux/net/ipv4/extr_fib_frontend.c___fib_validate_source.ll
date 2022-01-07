; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c___fib_validate_source.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c___fib_validate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i64 }
%struct.in_device = type { i32* }
%struct.net = type { %struct.net_device* }
%struct.flow_keys = type { i32 }
%struct.fib_result = type { i64, i32 }
%struct.flowi4 = type { i64, i64, i64, i64, i32, i32, i64, %struct.TYPE_3__, i32, i32, i8*, i8*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@LOOPBACK_IFINDEX = common dso_local global i64 0, align 8
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@RTN_LOCAL = common dso_local global i64 0, align 8
@RT_SCOPE_HOST = common dso_local global i64 0, align 8
@FIB_LOOKUP_IGNORE_LINKSTATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8*, i8*, i32, i32, %struct.net_device*, i32, %struct.in_device*, i64*)* @__fib_validate_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fib_validate_source(%struct.sk_buff* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.net_device* %5, i32 %6, %struct.in_device* %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.in_device*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.net*, align 8
  %21 = alloca %struct.flow_keys, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.fib_result, align 8
  %25 = alloca %struct.flowi4, align 8
  %26 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.net_device* %5, %struct.net_device** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.in_device* %7, %struct.in_device** %18, align 8
  store i64* %8, i64** %19, align 8
  %27 = load %struct.net_device*, %struct.net_device** %16, align 8
  %28 = call %struct.net* @dev_net(%struct.net_device* %27)
  store %struct.net* %28, %struct.net** %20, align 8
  %29 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %16, align 8
  %31 = call i64 @l3mdev_master_ifindex_rcu(%struct.net_device* %30)
  %32 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 12
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %9
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  br label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @LOOPBACK_IFINDEX, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 12
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %9
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 11
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 10
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 9
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %54 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 8
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.net*, %struct.net** %20, align 8
  %59 = call i32 @sock_net_uid(%struct.net* %58, i32* null)
  %60 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 5
  store i32 %59, i32* %60, align 4
  %61 = load %struct.in_device*, %struct.in_device** %18, align 8
  %62 = getelementptr inbounds %struct.in_device, %struct.in_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %23, align 4
  %66 = load %struct.in_device*, %struct.in_device** %18, align 8
  %67 = call i64 @IN_DEV_SRC_VMARK(%struct.in_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %46
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %46
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ 0, %73 ]
  %76 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 4
  store i32 %75, i32* %76, align 8
  %77 = load %struct.net*, %struct.net** %20, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = call i32 @fib4_rules_early_flow_dissect(%struct.net* %77, %struct.sk_buff* %78, %struct.flowi4* %25, %struct.flow_keys* %21)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.net*, %struct.net** %20, align 8
  %87 = call i64 @fib_lookup(%struct.net* %86, %struct.flowi4* %25, %struct.fib_result* %24, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %182

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %24, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RTN_UNICAST, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %24, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RTN_LOCAL, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.in_device*, %struct.in_device** %18, align 8
  %102 = call i32 @IN_DEV_ACCEPT_LOCAL(%struct.in_device* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100, %95
  br label %188

105:                                              ; preds = %100, %90
  %106 = load i64*, i64** %19, align 8
  %107 = call i32 @fib_combine_itag(i64* %106, %struct.fib_result* %24)
  %108 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %24, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.net_device*, %struct.net_device** %16, align 8
  %111 = call i32 @fib_info_nh_uses_dev(i32 %109, %struct.net_device* %110)
  store i32 %111, i32* %26, align 4
  %112 = load i32, i32* %26, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %24, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @RTN_LOCAL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %16, align 8
  %121 = load %struct.net*, %struct.net** %20, align 8
  %122 = getelementptr inbounds %struct.net, %struct.net* %121, i32 0, i32 0
  %123 = load %struct.net_device*, %struct.net_device** %122, align 8
  %124 = icmp eq %struct.net_device* %120, %123
  br label %125

125:                                              ; preds = %119, %114
  %126 = phi i1 [ false, %114 ], [ %124, %119 ]
  br label %127

127:                                              ; preds = %125, %105
  %128 = phi i1 [ true, %105 ], [ %126, %125 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %26, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = bitcast %struct.fib_result* %24 to { i64, i32 }*
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %133, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call %struct.TYPE_4__* @FIB_RES_NHC(i64 %135, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RT_SCOPE_HOST, align 8
  %142 = icmp sge i64 %140, %141
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %22, align 4
  store i32 %144, i32* %10, align 4
  br label %194

145:                                              ; preds = %127
  %146 = load i32, i32* %23, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %182

149:                                              ; preds = %145
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %191

153:                                              ; preds = %149
  %154 = load %struct.net_device*, %struct.net_device** %16, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  store i32 0, i32* %22, align 4
  %158 = load %struct.net*, %struct.net** %20, align 8
  %159 = load i32, i32* @FIB_LOOKUP_IGNORE_LINKSTATE, align 4
  %160 = call i64 @fib_lookup(%struct.net* %158, %struct.flowi4* %25, %struct.fib_result* %24, i32 %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %24, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @RTN_UNICAST, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = bitcast %struct.fib_result* %24 to { i64, i32 }*
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %168, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.TYPE_4__* @FIB_RES_NHC(i64 %170, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @RT_SCOPE_HOST, align 8
  %177 = icmp sge i64 %175, %176
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %167, %162
  br label %180

180:                                              ; preds = %179, %153
  %181 = load i32, i32* %22, align 4
  store i32 %181, i32* %10, align 4
  br label %194

182:                                              ; preds = %148, %89
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %191

186:                                              ; preds = %182
  %187 = load i64*, i64** %19, align 8
  store i64 0, i64* %187, align 8
  store i32 0, i32* %10, align 4
  br label %194

188:                                              ; preds = %104
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %10, align 4
  br label %194

191:                                              ; preds = %185, %152
  %192 = load i32, i32* @EXDEV, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %191, %188, %186, %180, %132
  %195 = load i32, i32* %10, align 4
  ret i32 %195
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i64 @l3mdev_master_ifindex_rcu(%struct.net_device*) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i64 @IN_DEV_SRC_VMARK(%struct.in_device*) #1

declare dso_local i32 @fib4_rules_early_flow_dissect(%struct.net*, %struct.sk_buff*, %struct.flowi4*, %struct.flow_keys*) #1

declare dso_local i64 @fib_lookup(%struct.net*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @IN_DEV_ACCEPT_LOCAL(%struct.in_device*) #1

declare dso_local i32 @fib_combine_itag(i64*, %struct.fib_result*) #1

declare dso_local i32 @fib_info_nh_uses_dev(i32, %struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @FIB_RES_NHC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
