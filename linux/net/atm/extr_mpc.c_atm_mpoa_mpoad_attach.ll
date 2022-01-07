; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_atm_mpoa_mpoad_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_atm_mpoa_mpoad_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32* }
%struct.mpoa_client = type { i32, i32, i32*, %struct.atm_vcc* }
%struct.lec_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mpcs = common dso_local global i32* null, align 8
@mpoa_notifier = common dso_local global i32 0, align 4
@mpc_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"allocating new mpc for itf %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"mpoad is already present for itf %d\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@lane2_assoc_ind = common dso_local global i32 0, align 4
@mpc_dev = common dso_local global i32 0, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @atm_mpoa_mpoad_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_mpoa_mpoad_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpoa_client*, align 8
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** @mpcs, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = call i32 (...) @mpc_timer_refresh()
  %15 = call i32 @register_netdevice_notifier(i32* @mpoa_notifier)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @del_timer(i32* @mpc_timer)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %133

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.mpoa_client* @find_mpc_by_itfnum(i32 %23)
  store %struct.mpoa_client* %24, %struct.mpoa_client** %6, align 8
  %25 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %26 = icmp eq %struct.mpoa_client* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call %struct.mpoa_client* (...) @alloc_mpc()
  store %struct.mpoa_client* %30, %struct.mpoa_client** %6, align 8
  %31 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %32 = icmp eq %struct.mpoa_client* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %133

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %39 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @find_lec_by_itfnum(i32 %40)
  %42 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %43 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %36, %22
  %45 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %46 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %45, i32 0, i32 3
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %46, align 8
  %48 = icmp ne %struct.atm_vcc* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EADDRINUSE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %133

54:                                               ; preds = %44
  %55 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %56 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %61 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call %struct.lec_priv* @netdev_priv(i32* %62)
  store %struct.lec_priv* %63, %struct.lec_priv** %7, align 8
  %64 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %65 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %70 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_put(i32* %71)
  %73 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %74 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  br label %81

75:                                               ; preds = %59
  %76 = load i32, i32* @lane2_assoc_ind, align 4
  %77 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %78 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %84 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %85 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %84, i32 0, i32 3
  store %struct.atm_vcc* %83, %struct.atm_vcc** %85, align 8
  %86 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %87 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %86, i32 0, i32 1
  store i32* @mpc_dev, i32** %87, align 8
  %88 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %89 = call i32 @sk_atm(%struct.atm_vcc* %88)
  %90 = call i32 @vcc_insert_socket(i32 %89)
  %91 = load i32, i32* @ATM_VF_META, align 4
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %93 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %92, i32 0, i32 0
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load i32, i32* @ATM_VF_READY, align 4
  %96 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %97 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %100 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %129

103:                                              ; preds = %82
  %104 = load i32, i32* @ATM_ESA_LEN, align 4
  %105 = zext i32 %104 to i64
  %106 = call i8* @llvm.stacksave()
  store i8* %106, i8** %9, align 8
  %107 = alloca i8, i64 %105, align 16
  store i64 %105, i64* %10, align 8
  %108 = load i32, i32* @ATM_ESA_LEN, align 4
  %109 = call i32 @memset(i8* %107, i32 0, i32 %108)
  %110 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %111 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %112 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @start_mpc(%struct.mpoa_client* %110, i32* %113)
  %115 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %116 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ATM_ESA_LEN, align 4
  %119 = call i64 @memcmp(i32 %117, i8* %107, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %103
  %122 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %123 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %126 = call i32 @send_set_mps_ctrl_addr(i32 %124, %struct.mpoa_client* %125)
  br label %127

127:                                              ; preds = %121, %103
  %128 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %129

129:                                              ; preds = %127, %82
  %130 = load i32, i32* @THIS_MODULE, align 4
  %131 = call i32 @__module_get(i32 %130)
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %49, %33, %18
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @mpc_timer_refresh(...) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_itfnum(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.mpoa_client* @alloc_mpc(...) #1

declare dso_local i32* @find_lec_by_itfnum(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.lec_priv* @netdev_priv(i32*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @start_mpc(%struct.mpoa_client*, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @send_set_mps_ctrl_addr(i32, %struct.mpoa_client*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
