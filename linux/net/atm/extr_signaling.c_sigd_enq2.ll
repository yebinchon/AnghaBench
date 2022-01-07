; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_sigd_enq2.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_sigd_enq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32 }
%struct.sockaddr_atmpvc = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }
%struct.atm_qos = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atmsvc_msg = type { i32, i32, i32, %struct.sockaddr_atmpvc, i32, %struct.sockaddr_atmsvc, i32, %struct.atm_qos, i32, i32 }

@sigd_enq2.session = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%d (0x%p)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@as_connect = common dso_local global i32 0, align 4
@ATM_VF_SESSION = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigd_enq2(%struct.atm_vcc* %0, i32 %1, %struct.atm_vcc* %2, %struct.sockaddr_atmpvc* %3, %struct.sockaddr_atmsvc* %4, %struct.atm_qos* %5, i32 %6) #0 {
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca %struct.sockaddr_atmpvc*, align 8
  %12 = alloca %struct.sockaddr_atmsvc*, align 8
  %13 = alloca %struct.atm_qos*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.atmsvc_msg*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.atm_vcc* %2, %struct.atm_vcc** %10, align 8
  store %struct.sockaddr_atmpvc* %3, %struct.sockaddr_atmpvc** %11, align 8
  store %struct.sockaddr_atmsvc* %4, %struct.sockaddr_atmsvc** %12, align 8
  store %struct.atm_qos* %5, %struct.atm_qos** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.atm_vcc* %18)
  br label %20

20:                                               ; preds = %25, %7
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 40, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %15, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @schedule()
  br label %20

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %29 = call %struct.atmsvc_msg* @skb_put_zero(%struct.sk_buff* %28, i32 40)
  store %struct.atmsvc_msg* %29, %struct.atmsvc_msg** %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %32 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %34 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %35 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %34, i32 0, i32 9
  %36 = bitcast i32* %35 to %struct.atm_vcc**
  store %struct.atm_vcc* %33, %struct.atm_vcc** %36, align 4
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %38 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %39 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %38, i32 0, i32 8
  %40 = bitcast i32* %39 to %struct.atm_vcc**
  store %struct.atm_vcc* %37, %struct.atm_vcc** %40, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %43 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.atm_qos*, %struct.atm_qos** %13, align 8
  %45 = icmp ne %struct.atm_qos* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %48 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %47, i32 0, i32 7
  %49 = load %struct.atm_qos*, %struct.atm_qos** %13, align 8
  %50 = bitcast %struct.atm_qos* %48 to i8*
  %51 = bitcast %struct.atm_qos* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %52

52:                                               ; preds = %46, %27
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %54 = icmp ne %struct.atm_vcc* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %57 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %60 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %12, align 8
  %63 = icmp ne %struct.sockaddr_atmsvc* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %66 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %65, i32 0, i32 5
  %67 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %12, align 8
  %68 = bitcast %struct.sockaddr_atmsvc* %66 to i8*
  %69 = bitcast %struct.sockaddr_atmsvc* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %72 = icmp ne %struct.atm_vcc* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %75 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %78 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %70
  %80 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %11, align 8
  %81 = icmp ne %struct.sockaddr_atmpvc* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %84 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %83, i32 0, i32 3
  %85 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %11, align 8
  %86 = bitcast %struct.sockaddr_atmpvc* %84 to i8*
  %87 = bitcast %struct.sockaddr_atmpvc* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %90 = icmp ne %struct.atm_vcc* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @as_connect, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32, i32* @ATM_VF_SESSION, align 4
  %97 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %98 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %97, i32 0, i32 0
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32, i32* @sigd_enq2.session, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* @sigd_enq2.session, align 4
  %104 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %105 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %95, %91
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %109 = call i32 @sigd_put_skb(%struct.sk_buff* %108)
  %110 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %111 = icmp ne %struct.atm_vcc* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @ATM_VF_REGIS, align 4
  %114 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %115 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %114, i32 0, i32 0
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %112, %107
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.atm_vcc*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local %struct.atmsvc_msg* @skb_put_zero(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sigd_put_skb(%struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
