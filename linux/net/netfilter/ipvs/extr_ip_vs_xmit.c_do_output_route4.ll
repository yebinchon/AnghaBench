; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_do_output_route4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_do_output_route4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.flowi4 = type { i64, i32, i64 }

@IP_VS_RT_MODE_KNOWN_NH = common dso_local global i32 0, align 4
@FLOWI_FLAG_KNOWN_NH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_VS_RT_MODE_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ip_route_output error, dest: %pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtable* (%struct.net*, i64, i32, i64*)* @do_output_route4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtable* @do_output_route4(%struct.net* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.flowi4, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 @memset(%struct.flowi4* %10, i32 0, i32 24)
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 2
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @IP_VS_RT_MODE_KNOWN_NH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @FLOWI_FLAG_KNOWN_NH, align 4
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %69, %50, %23
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = call %struct.rtable* @ip_route_output_key(%struct.net* %27, %struct.flowi4* %10)
  store %struct.rtable* %28, %struct.rtable** %11, align 8
  %29 = load %struct.rtable*, %struct.rtable** %11, align 8
  %30 = call i64 @IS_ERR(%struct.rtable* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.rtable*, %struct.rtable** %11, align 8
  %34 = call i32 @PTR_ERR(%struct.rtable* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IP_VS_RT_MODE_CONNECT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64*, i64** %9, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @flowi4_update_output(%struct.flowi4* %10, i32 0, i32 0, i64 %52, i64 0)
  br label %26

54:                                               ; preds = %47, %42, %38, %32
  %55 = call i32 @IP_VS_DBG_RL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64* %7)
  store %struct.rtable* null, %struct.rtable** %5, align 8
  br label %85

56:                                               ; preds = %26
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @IP_VS_RT_MODE_CONNECT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.rtable*, %struct.rtable** %11, align 8
  %71 = call i32 @ip_rt_put(%struct.rtable* %70)
  %72 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @flowi4_update_output(%struct.flowi4* %10, i32 0, i32 0, i64 %75, i64 %77)
  store i32 1, i32* %12, align 4
  br label %26

79:                                               ; preds = %65, %60, %56
  br label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  %84 = load %struct.rtable*, %struct.rtable** %11, align 8
  store %struct.rtable* %84, %struct.rtable** %5, align 8
  br label %85

85:                                               ; preds = %80, %54
  %86 = load %struct.rtable*, %struct.rtable** %5, align 8
  ret %struct.rtable* %86
}

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local %struct.rtable* @ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @flowi4_update_output(%struct.flowi4*, i32, i32, i64, i64) #1

declare dso_local i32 @IP_VS_DBG_RL(i8*, i64*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
