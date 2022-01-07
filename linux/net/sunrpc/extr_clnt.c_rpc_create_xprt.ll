; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_create_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_create_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, i32, i32, i32, i32 }
%struct.rpc_create_args = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rpc_xprt_switch* }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rpc_xprt_switch* }

@XPRT_TRANSPORT_BC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_HARDRTRY = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_SOFTERR = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_AUTOBIND = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NO_RETRANS_TIMEOUT = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_DISCRTRY = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.rpc_create_args*, %struct.rpc_xprt*)* @rpc_create_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @rpc_create_xprt(%struct.rpc_create_args* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca %struct.rpc_create_args*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.rpc_xprt_switch*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_create_args* %0, %struct.rpc_create_args** %4, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %6, align 8
  %9 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %17, align 8
  %19 = icmp ne %struct.rpc_xprt_switch* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %22 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XPRT_TRANSPORT_BC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %31 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %33, align 8
  store %struct.rpc_xprt_switch* %34, %struct.rpc_xprt_switch** %7, align 8
  %35 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %36 = call i32 @xprt_switch_get(%struct.rpc_xprt_switch* %35)
  br label %63

37:                                               ; preds = %13, %2
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.rpc_xprt_switch* @xprt_switch_alloc(%struct.rpc_xprt* %38, i32 %39)
  store %struct.rpc_xprt_switch* %40, %struct.rpc_xprt_switch** %7, align 8
  %41 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %42 = icmp eq %struct.rpc_xprt_switch* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %45 = call i32 @xprt_put(%struct.rpc_xprt* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.rpc_clnt* @ERR_PTR(i32 %47)
  store %struct.rpc_clnt* %48, %struct.rpc_clnt** %3, align 8
  br label %157

49:                                               ; preds = %37
  %50 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %51 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %56 = call i32 @xprt_switch_get(%struct.rpc_xprt_switch* %55)
  %57 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %58 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %59 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.rpc_xprt_switch* %57, %struct.rpc_xprt_switch** %61, align 8
  br label %62

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62, %20
  %64 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %65 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %66 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %67 = call %struct.rpc_clnt* @rpc_new_client(%struct.rpc_create_args* %64, %struct.rpc_xprt_switch* %65, %struct.rpc_xprt* %66, i32* null)
  store %struct.rpc_clnt* %67, %struct.rpc_clnt** %6, align 8
  %68 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %69 = call i64 @IS_ERR(%struct.rpc_clnt* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_clnt* %72, %struct.rpc_clnt** %3, align 8
  br label %157

73:                                               ; preds = %63
  %74 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %75 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %73
  %81 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %82 = call i32 @rpc_ping(%struct.rpc_clnt* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %87 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %86)
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.rpc_clnt* @ERR_PTR(i32 %88)
  store %struct.rpc_clnt* %89, %struct.rpc_clnt** %3, align 8
  br label %157

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %93 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %95 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RPC_CLNT_CREATE_HARDRTRY, align 4
  %98 = load i32, i32* @RPC_CLNT_CREATE_SOFTERR, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %104 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %106 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RPC_CLNT_CREATE_SOFTERR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %113 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %102
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %117 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RPC_CLNT_CREATE_AUTOBIND, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %124 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %115
  %126 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %127 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @RPC_CLNT_CREATE_NO_RETRANS_TIMEOUT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %134 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %137 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RPC_CLNT_CREATE_DISCRTRY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %144 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %143, i32 0, i32 4
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %135
  %146 = load %struct.rpc_create_args*, %struct.rpc_create_args** %4, align 8
  %147 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RPC_CLNT_CREATE_QUIET, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %154 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %153, i32 0, i32 5
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %145
  %156 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_clnt* %156, %struct.rpc_clnt** %3, align 8
  br label %157

157:                                              ; preds = %155, %85, %71, %43
  %158 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  ret %struct.rpc_clnt* %158
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xprt_switch_get(%struct.rpc_xprt_switch*) #1

declare dso_local %struct.rpc_xprt_switch* @xprt_switch_alloc(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_new_client(%struct.rpc_create_args*, %struct.rpc_xprt_switch*, %struct.rpc_xprt*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_ping(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
