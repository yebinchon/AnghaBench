; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_caif_connect_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_caif_connect_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.caif_connect_request = type { i32 }
%struct.cflayer = type { i64, i32*, i32* }
%struct.cfcnfg_phyinfo = type { i64, i32, i32, %struct.TYPE_2__*, %struct.cflayer* }
%struct.TYPE_2__ = type { i64 }
%struct.cfctrl_link_param = type { i64, i64 }
%struct.cfcnfg = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"adap_layer is zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"adap_layer->receive is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"adap_layer->ctrlcmd == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Specified PHY type does not exist!\0A\00", align 1
@protohead = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caif_connect_client(%struct.net* %0, %struct.caif_connect_request* %1, %struct.cflayer* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.caif_connect_request*, align 8
  %10 = alloca %struct.cflayer*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cflayer*, align 8
  %15 = alloca %struct.cfcnfg_phyinfo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cfctrl_link_param, align 8
  %18 = alloca %struct.cfcnfg*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.caif_connect_request* %1, %struct.caif_connect_request** %9, align 8
  store %struct.cflayer* %2, %struct.cflayer** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = call %struct.cfcnfg* @get_cfcnfg(%struct.net* %19)
  store %struct.cfcnfg* %20, %struct.cfcnfg** %18, align 8
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.cfcnfg*, %struct.cfcnfg** %18, align 8
  %23 = load %struct.caif_connect_request*, %struct.caif_connect_request** %9, align 8
  %24 = call i32 @caif_connect_req_to_link_param(%struct.cfcnfg* %22, %struct.caif_connect_request* %23, %struct.cfctrl_link_param* %17)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %125

28:                                               ; preds = %6
  %29 = load %struct.cfcnfg*, %struct.cfcnfg** %18, align 8
  %30 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %17, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.cfcnfg_phyinfo* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg* %29, i64 %31)
  store %struct.cfcnfg_phyinfo* %32, %struct.cfcnfg_phyinfo** %15, align 8
  %33 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %34 = icmp ne %struct.cfcnfg_phyinfo* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %16, align 4
  br label %125

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %42 = icmp eq %struct.cflayer* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %125

45:                                               ; preds = %38
  %46 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %47 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %125

52:                                               ; preds = %45
  %53 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %54 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %125

59:                                               ; preds = %52
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  %62 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %63 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %62, i32 0, i32 4
  %64 = load %struct.cflayer*, %struct.cflayer** %63, align 8
  store %struct.cflayer* %64, %struct.cflayer** %14, align 8
  %65 = load %struct.cflayer*, %struct.cflayer** %14, align 8
  %66 = icmp eq %struct.cflayer* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %125

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %17, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %73 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @caif_assert(i32 %76)
  %78 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %79 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %78, i32 0, i32 4
  %80 = load %struct.cflayer*, %struct.cflayer** %79, align 8
  %81 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %17, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @caif_assert(i32 %86)
  %88 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %89 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %17, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @caif_assert(i32 %96)
  %98 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %99 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %13, align 8
  store i32 2, i32* %102, align 4
  %103 = load i32*, i32** @protohead, align 8
  %104 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %17, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %15, align 8
  %109 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = load i32*, i32** %12, align 8
  store i32 %111, i32* %112, align 4
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = load %struct.cfcnfg*, %struct.cfcnfg** %18, align 8
  %115 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %17, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @cfctrl_enum_req(i32 %116, i64 %118)
  %120 = load %struct.cfcnfg*, %struct.cfcnfg** %18, align 8
  %121 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %124 = call i32 @cfctrl_linkup_request(i32 %122, %struct.cfctrl_link_param* %17, %struct.cflayer* %123)
  store i32 %124, i32* %7, align 4
  br label %128

125:                                              ; preds = %67, %57, %50, %43, %35, %27
  %126 = call i32 (...) @rcu_read_unlock()
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %69
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local %struct.cfcnfg* @get_cfcnfg(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @caif_connect_req_to_link_param(%struct.cfcnfg*, %struct.caif_connect_request*, %struct.cfctrl_link_param*) #1

declare dso_local %struct.cfcnfg_phyinfo* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cfctrl_enum_req(i32, i64) #1

declare dso_local i32 @cfctrl_linkup_request(i32, %struct.cfctrl_link_param*, %struct.cflayer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
