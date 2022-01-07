; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_app = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.ip_vs_app*, i32 }
%struct.ip_vs_protocol = type { i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)*, i32, i32 }
%struct.ip_vs_app.0 = type opaque

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s App %s:%u registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.ip_vs_app*, i32, i32)* @ip_vs_app_inc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_app_inc_new(%struct.netns_ipvs* %0, %struct.ip_vs_app* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca %struct.ip_vs_app*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_vs_protocol*, align 8
  %11 = alloca %struct.ip_vs_app*, align 8
  %12 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %6, align 8
  store %struct.ip_vs_app* %1, %struct.ip_vs_app** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %13)
  store %struct.ip_vs_protocol* %14, %struct.ip_vs_protocol** %10, align 8
  %15 = icmp ne %struct.ip_vs_protocol* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EPROTONOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %107

19:                                               ; preds = %4
  %20 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %21 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %107

27:                                               ; preds = %19
  %28 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ip_vs_app* @kmemdup(%struct.ip_vs_app* %28, i32 56, i32 %29)
  store %struct.ip_vs_app* %30, %struct.ip_vs_app** %11, align 8
  %31 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %32 = icmp ne %struct.ip_vs_app* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %107

36:                                               ; preds = %27
  %37 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %38 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %37, i32 0, i32 9
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %41 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %40, i32 0, i32 2
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %44 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %45 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %44, i32 0, i32 8
  store %struct.ip_vs_app* %43, %struct.ip_vs_app** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %49 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %51 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %50, i32 0, i32 7
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %54 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %36
  %58 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %59 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %62 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ip_vs_create_timeout_table(i64 %60, i32 %63)
  %65 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %66 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %68 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %57
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %103

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %36
  %76 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %77 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %76, i32 0, i32 0
  %78 = load i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)*, i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)** %77, align 8
  %79 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %80 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %81 = bitcast %struct.ip_vs_app* %80 to %struct.ip_vs_app.0*
  %82 = call i32 %78(%struct.netns_ipvs* %79, %struct.ip_vs_app.0* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %103

86:                                               ; preds = %75
  %87 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %88 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %87, i32 0, i32 3
  %89 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %90 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %89, i32 0, i32 2
  %91 = call i32 @list_add(i32* %88, i32* %90)
  %92 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %93 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %96 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %99 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ntohs(i32 %100)
  %102 = call i32 @IP_VS_DBG(i32 9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %101)
  store i32 0, i32* %5, align 4
  br label %107

103:                                              ; preds = %85, %71
  %104 = load %struct.ip_vs_app*, %struct.ip_vs_app** %11, align 8
  %105 = call i32 @ip_vs_app_inc_destroy(%struct.ip_vs_app* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %86, %33, %24, %16
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local %struct.ip_vs_app* @kmemdup(%struct.ip_vs_app*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ip_vs_create_timeout_table(i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip_vs_app_inc_destroy(%struct.ip_vs_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
