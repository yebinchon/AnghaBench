; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_mpoa_event_listener.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_mpoa_event_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.mpoa_client = type { i32*, %struct.net_device*, i32 }
%struct.lec_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lec\00", align 1
@lane2_assoc_ind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"allocating new mpc for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"no new mpc\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(%s) was initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"device (%s) was deallocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @mpoa_event_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpoa_event_listener(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mpoa_client*, align 8
  %10 = alloca %struct.lec_priv*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = call i32 @dev_net(%struct.net_device* %13)
  %15 = call i32 @net_eq(i32 %14, i32* @init_net)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %129

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strncmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %26, i32* %4, align 4
  br label %129

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  switch i64 %28, label %126 [
    i64 130, label %29
    i64 129, label %75
    i64 128, label %94
    i64 133, label %110
    i64 131, label %125
    i64 136, label %125
    i64 134, label %125
    i64 135, label %125
    i64 132, label %125
  ]

29:                                               ; preds = %27
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call %struct.lec_priv* @netdev_priv(%struct.net_device* %30)
  store %struct.lec_priv* %31, %struct.lec_priv** %10, align 8
  %32 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %33 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %127

37:                                               ; preds = %29
  %38 = load i32, i32* @lane2_assoc_ind, align 4
  %39 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %40 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %44 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.mpoa_client* @find_mpc_by_itfnum(i32 %45)
  store %struct.mpoa_client* %46, %struct.mpoa_client** %9, align 8
  %47 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %48 = icmp eq %struct.mpoa_client* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = call %struct.mpoa_client* (...) @alloc_mpc()
  store %struct.mpoa_client* %54, %struct.mpoa_client** %9, align 8
  %55 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %56 = icmp eq %struct.mpoa_client* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %127

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %62 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %65 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %68 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %67, i32 0, i32 1
  store %struct.net_device* %66, %struct.net_device** %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = call i32 @dev_hold(%struct.net_device* %69)
  %71 = load %struct.net_device*, %struct.net_device** %8, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %127

75:                                               ; preds = %27
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %76)
  store %struct.mpoa_client* %77, %struct.mpoa_client** %9, align 8
  %78 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %79 = icmp eq %struct.mpoa_client* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %127

81:                                               ; preds = %75
  %82 = load %struct.net_device*, %struct.net_device** %8, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %87 = call i32 @stop_mpc(%struct.mpoa_client* %86)
  %88 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %89 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %88, i32 0, i32 1
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = call i32 @dev_put(%struct.net_device* %90)
  %92 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %93 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %92, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %93, align 8
  br label %127

94:                                               ; preds = %27
  %95 = load %struct.net_device*, %struct.net_device** %8, align 8
  %96 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %95)
  store %struct.mpoa_client* %96, %struct.mpoa_client** %9, align 8
  %97 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %98 = icmp eq %struct.mpoa_client* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %127

100:                                              ; preds = %94
  %101 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %102 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %107 = load %struct.net_device*, %struct.net_device** %8, align 8
  %108 = call i32 @start_mpc(%struct.mpoa_client* %106, %struct.net_device* %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %127

110:                                              ; preds = %27
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %111)
  store %struct.mpoa_client* %112, %struct.mpoa_client** %9, align 8
  %113 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %114 = icmp eq %struct.mpoa_client* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %127

116:                                              ; preds = %110
  %117 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %118 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %123 = call i32 @stop_mpc(%struct.mpoa_client* %122)
  br label %124

124:                                              ; preds = %121, %116
  br label %127

125:                                              ; preds = %27, %27, %27, %27, %27
  br label %127

126:                                              ; preds = %27
  br label %127

127:                                              ; preds = %126, %125, %124, %115, %109, %99, %81, %80, %60, %57, %36
  %128 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %25, %17
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.lec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_itfnum(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.mpoa_client* @alloc_mpc(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device*) #1

declare dso_local i32 @stop_mpc(%struct.mpoa_client*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @start_mpc(%struct.mpoa_client*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
