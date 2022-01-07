; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcbase_select_primary.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcbase_select_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bc_base = type { i32, i32, i32*, i32 }

@INVALID_BEARER_ID = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @tipc_bcbase_select_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_bcbase_select_primary(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.tipc_bc_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %8 = load %struct.net*, %struct.net** %2, align 8
  %9 = call %struct.tipc_bc_base* @tipc_bc_base(%struct.net* %8)
  store %struct.tipc_bc_base* %9, %struct.tipc_bc_base** %3, align 8
  %10 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @tipc_link_bc_peers(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @INVALID_BEARER_ID, align 4
  %15 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %16 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %18 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %99

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %83, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MAX_BEARERS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %23
  %28 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %29 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %83

37:                                               ; preds = %27
  %38 = load %struct.net*, %struct.net** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @tipc_bearer_mtu(%struct.net* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %43 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tipc_link_mtu(i32 %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %49 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @tipc_link_set_mtu(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %37
  %54 = load %struct.net*, %struct.net** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @tipc_bearer_bcast_support(%struct.net* %54, i32 %55)
  %57 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %58 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %62 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %83

71:                                               ; preds = %53
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %74 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.net*, %struct.net** %2, align 8
  %77 = call i32 @tipc_own_addr(%struct.net* %76)
  %78 = xor i32 %75, %77
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %70, %36
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %23

86:                                               ; preds = %81, %23
  %87 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %88 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @INVALID_BEARER_ID, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.net*, %struct.net** %2, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @tipc_bearer_bcast_support(%struct.net* %94, i32 %95)
  %97 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %3, align 8
  %98 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %21, %93, %86
  ret void
}

declare dso_local %struct.tipc_bc_base* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @tipc_link_bc_peers(i32) #1

declare dso_local i32 @tipc_bearer_mtu(%struct.net*, i32) #1

declare dso_local i32 @tipc_link_mtu(i32) #1

declare dso_local i32 @tipc_link_set_mtu(i32, i32) #1

declare dso_local i32 @tipc_bearer_bcast_support(%struct.net*, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
