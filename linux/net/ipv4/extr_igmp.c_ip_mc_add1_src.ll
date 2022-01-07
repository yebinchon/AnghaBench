; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_add1_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_add1_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mc_list = type { i32, %struct.ip_sf_list* }
%struct.ip_sf_list = type { i64, i32*, %struct.ip_sf_list* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_mc_list*, i32, i64*)* @ip_mc_add1_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_add1_src(%struct.ip_mc_list* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ip_sf_list*, align 8
  %9 = alloca %struct.ip_sf_list*, align 8
  store %struct.ip_mc_list* %0, %struct.ip_mc_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store %struct.ip_sf_list* null, %struct.ip_sf_list** %9, align 8
  %10 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %11 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %10, i32 0, i32 1
  %12 = load %struct.ip_sf_list*, %struct.ip_sf_list** %11, align 8
  store %struct.ip_sf_list* %12, %struct.ip_sf_list** %8, align 8
  br label %13

13:                                               ; preds = %26, %3
  %14 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %15 = icmp ne %struct.ip_sf_list* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %18 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  store %struct.ip_sf_list* %25, %struct.ip_sf_list** %9, align 8
  br label %26

26:                                               ; preds = %24
  %27 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %28 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %27, i32 0, i32 2
  %29 = load %struct.ip_sf_list*, %struct.ip_sf_list** %28, align 8
  store %struct.ip_sf_list* %29, %struct.ip_sf_list** %8, align 8
  br label %13

30:                                               ; preds = %23, %13
  %31 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %32 = icmp ne %struct.ip_sf_list* %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.ip_sf_list* @kzalloc(i32 24, i32 %34)
  store %struct.ip_sf_list* %35, %struct.ip_sf_list** %8, align 8
  %36 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %37 = icmp ne %struct.ip_sf_list* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOBUFS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %33
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %45 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ip_sf_list*, %struct.ip_sf_list** %9, align 8
  %47 = icmp ne %struct.ip_sf_list* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %50 = load %struct.ip_sf_list*, %struct.ip_sf_list** %9, align 8
  %51 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %50, i32 0, i32 2
  store %struct.ip_sf_list* %49, %struct.ip_sf_list** %51, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %54 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %55 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %54, i32 0, i32 1
  store %struct.ip_sf_list* %53, %struct.ip_sf_list** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %59 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %67 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %76 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ip_rt_multicast_event(i32 %77)
  br label %79

79:                                               ; preds = %74, %57
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %38
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.ip_sf_list* @kzalloc(i32, i32) #1

declare dso_local i32 @ip_rt_multicast_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
