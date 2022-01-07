; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_encap_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_encap_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ip_tunnel_encap = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_encap_setup(%struct.ip_tunnel* %0, %struct.ip_tunnel_encap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.ip_tunnel_encap*, align 8
  %6 = alloca i32, align 4
  store %struct.ip_tunnel* %0, %struct.ip_tunnel** %4, align 8
  store %struct.ip_tunnel_encap* %1, %struct.ip_tunnel_encap** %5, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %8 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %7, i32 0, i32 3
  %9 = call i32 @memset(%struct.TYPE_2__* %8, i32 0, i32 16)
  %10 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %11 = call i32 @ip_encap_hlen(%struct.ip_tunnel_encap* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %21 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %30 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %33 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %36 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %39 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %45 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %48 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %16, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ip_encap_hlen(%struct.ip_tunnel_encap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
