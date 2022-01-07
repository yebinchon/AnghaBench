; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_nh_build_from_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_nh_build_from_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_route_config = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.mpls_route = type { i32, %struct.mpls_nh* }
%struct.mpls_nh = type { i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpls_route_config*, %struct.mpls_route*)* @mpls_nh_build_from_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_nh_build_from_cfg(%struct.mpls_route_config* %0, %struct.mpls_route* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpls_route_config*, align 8
  %5 = alloca %struct.mpls_route*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.mpls_nh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mpls_route_config* %0, %struct.mpls_route_config** %4, align 8
  store %struct.mpls_route* %1, %struct.mpls_route** %5, align 8
  %10 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %11 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net*, %struct.net** %12, align 8
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.mpls_route*, %struct.mpls_route** %5, align 8
  %15 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %14, i32 0, i32 1
  %16 = load %struct.mpls_nh*, %struct.mpls_nh** %15, align 8
  store %struct.mpls_nh* %16, %struct.mpls_nh** %7, align 8
  %17 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %18 = icmp ne %struct.mpls_nh* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %24 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %27 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %48, %22
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %31 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %36 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %43 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %53 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %56 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mpls_route*, %struct.mpls_route** %5, align 8
  %58 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %59 = call i32 @__mpls_nh_via(%struct.mpls_route* %57, %struct.mpls_nh* %58)
  %60 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %61 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %64 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memcpy(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %68 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %71 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.net*, %struct.net** %6, align 8
  %73 = load %struct.mpls_route*, %struct.mpls_route** %5, align 8
  %74 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %75 = load %struct.mpls_route_config*, %struct.mpls_route_config** %4, align 8
  %76 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mpls_nh_assign_dev(%struct.net* %72, %struct.mpls_route* %73, %struct.mpls_nh* %74, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %51
  br label %97

82:                                               ; preds = %51
  %83 = load %struct.mpls_nh*, %struct.mpls_nh** %7, align 8
  %84 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RTNH_F_DEAD, align 4
  %87 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.mpls_route*, %struct.mpls_route** %5, align 8
  %93 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %82
  store i32 0, i32* %3, align 4
  br label %99

97:                                               ; preds = %81
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %96, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__mpls_nh_via(%struct.mpls_route*, %struct.mpls_nh*) #1

declare dso_local i32 @mpls_nh_assign_dev(%struct.net*, %struct.mpls_route*, %struct.mpls_nh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
