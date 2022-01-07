; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_rs_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_rs_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32* }
%struct.ip_vs_dest = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_dest*)* @ip_vs_rs_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_rs_hash(%struct.netns_ipvs* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.ip_vs_dest*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %4, align 8
  %7 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %8 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %14 = call i32 @IP_VS_DFWD_METHOD(%struct.ip_vs_dest* %13)
  switch i32 %14, label %30 [
    i32 132, label %15
    i32 131, label %19
  ]

15:                                               ; preds = %12
  %16 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %17 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  br label %31

19:                                               ; preds = %12
  %20 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %21 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %28 [
    i32 129, label %23
    i32 128, label %27
    i32 130, label %27
  ]

23:                                               ; preds = %19
  %24 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %25 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %19, %19
  store i32 0, i32* %6, align 4
  br label %29

28:                                               ; preds = %19
  br label %50

29:                                               ; preds = %27, %23
  br label %31

30:                                               ; preds = %12
  br label %50

31:                                               ; preds = %29, %15
  %32 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %33 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %36 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %35, i32 0, i32 2
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ip_vs_rs_hashkey(i32 %34, i32* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %40 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %39, i32 0, i32 1
  %41 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %42 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @hlist_add_head_rcu(i32* %40, i32* %46)
  %48 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %49 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %31, %30, %28, %11
  ret void
}

declare dso_local i32 @IP_VS_DFWD_METHOD(%struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_rs_hashkey(i32, i32*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
