; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_select_xmit_method.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_select_xmit_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_mc_method = type { i64, i32, i64 }
%struct.tipc_bc_base = type { i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TIPC_METHOD_EXPIRE = common dso_local global i64 0, align 8
@TIPC_MCAST_RBCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32, %struct.tipc_mc_method*)* @tipc_bcast_select_xmit_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_bcast_select_xmit_method(%struct.net* %0, i32 %1, %struct.tipc_mc_method* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_mc_method*, align 8
  %7 = alloca %struct.tipc_bc_base*, align 8
  %8 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tipc_mc_method* %2, %struct.tipc_mc_method** %6, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = call %struct.tipc_bc_base* @tipc_bc_base(%struct.net* %9)
  store %struct.tipc_bc_base* %10, %struct.tipc_bc_base** %7, align 8
  %11 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %12 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %7, align 8
  %15 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %20 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  br label %79

21:                                               ; preds = %3
  %22 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %7, align 8
  %23 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %28 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  br label %79

29:                                               ; preds = %21
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @TIPC_METHOD_EXPIRE, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %34 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %36 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %79

40:                                               ; preds = %29
  %41 = load %struct.net*, %struct.net** %4, align 8
  %42 = call %struct.TYPE_2__* @tipc_net(%struct.net* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TIPC_MCAST_RBCTL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @time_before(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %79

54:                                               ; preds = %48, %40
  %55 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %7, align 8
  %56 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %61 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  br label %79

62:                                               ; preds = %54
  %63 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %7, align 8
  %64 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %69 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  br label %79

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %7, align 8
  %73 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %6, align 8
  %78 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %70, %67, %59, %53, %39, %26, %18
  ret void
}

declare dso_local %struct.tipc_bc_base* @tipc_bc_base(%struct.net*) #1

declare dso_local %struct.TYPE_2__* @tipc_net(%struct.net*) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
