; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_clear_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_clear_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mc_list = type { i64, i32*, i32, %struct.ip_sf_list*, %struct.ip_sf_list* }
%struct.ip_sf_list = type { i32 }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_mc_list*)* @ip_mc_clear_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_mc_clear_src(%struct.ip_mc_list* %0) #0 {
  %2 = alloca %struct.ip_mc_list*, align 8
  %3 = alloca %struct.ip_sf_list*, align 8
  %4 = alloca %struct.ip_sf_list*, align 8
  store %struct.ip_mc_list* %0, %struct.ip_mc_list** %2, align 8
  %5 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %6 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %9 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %8, i32 0, i32 4
  %10 = load %struct.ip_sf_list*, %struct.ip_sf_list** %9, align 8
  store %struct.ip_sf_list* %10, %struct.ip_sf_list** %3, align 8
  %11 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %12 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %11, i32 0, i32 4
  store %struct.ip_sf_list* null, %struct.ip_sf_list** %12, align 8
  %13 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %14 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %13, i32 0, i32 3
  %15 = load %struct.ip_sf_list*, %struct.ip_sf_list** %14, align 8
  store %struct.ip_sf_list* %15, %struct.ip_sf_list** %4, align 8
  %16 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %17 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %16, i32 0, i32 3
  store %struct.ip_sf_list* null, %struct.ip_sf_list** %17, align 8
  %18 = load i64, i64* @MCAST_EXCLUDE, align 8
  %19 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %20 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %22 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @MCAST_INCLUDE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %27 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @MCAST_EXCLUDE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 1, i32* %30, align 4
  %31 = load %struct.ip_mc_list*, %struct.ip_mc_list** %2, align 8
  %32 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.ip_sf_list*, %struct.ip_sf_list** %3, align 8
  %35 = call i32 @ip_sf_list_clear_all(%struct.ip_sf_list* %34)
  %36 = load %struct.ip_sf_list*, %struct.ip_sf_list** %4, align 8
  %37 = call i32 @ip_sf_list_clear_all(%struct.ip_sf_list* %36)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ip_sf_list_clear_all(%struct.ip_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
