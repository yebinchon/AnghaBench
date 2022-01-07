; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.ip_tunnel_net = type { %struct.hlist_head* }
%struct.ip_tunnel_parm = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@VTI_ISVTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.ip_tunnel_net*, %struct.ip_tunnel_parm*)* @ip_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @ip_bucket(%struct.ip_tunnel_net* %0, %struct.ip_tunnel_parm* %1) #0 {
  %3 = alloca %struct.ip_tunnel_net*, align 8
  %4 = alloca %struct.ip_tunnel_parm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ip_tunnel_net* %0, %struct.ip_tunnel_net** %3, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %4, align 8
  %8 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %4, align 8
  %9 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %4, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %4, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ipv4_is_multicast(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %4, align 8
  %25 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  br label %29

28:                                               ; preds = %16, %2
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %4, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TUNNEL_KEY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %4, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VTI_ISVTI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %43, %36, %29
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @ip_tunnel_hash(i64 %45, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %3, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %48, i32 0, i32 0
  %50 = load %struct.hlist_head*, %struct.hlist_head** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %50, i64 %52
  ret %struct.hlist_head* %53
}

declare dso_local i32 @ipv4_is_multicast(i64) #1

declare dso_local i32 @ip_tunnel_hash(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
