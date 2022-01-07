; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_send_initial_cr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_send_initial_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i32, i64*, %struct.ifmcaddr6* }
%struct.sk_buff = type { i32 }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MLD2_CHANGE_TO_EXCLUDE = common dso_local global i32 0, align 4
@MLD2_ALLOW_NEW_SOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*)* @mld_send_initial_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_send_initial_cr(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %7 = call i64 @mld_in_v1_mode(%struct.inet6_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %56

10:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 0
  %13 = call i32 @read_lock_bh(i32* %12)
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 1
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %15, align 8
  store %struct.ifmcaddr6* %16, %struct.ifmcaddr6** %4, align 8
  br label %17

17:                                               ; preds = %43, %10
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %19 = icmp ne %struct.ifmcaddr6* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %22 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %25 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @MCAST_EXCLUDE, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @MLD2_CHANGE_TO_EXCLUDE, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %20
  %34 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %36, %struct.ifmcaddr6* %37, i32 %38, i32 0, i32 0, i32 1)
  store %struct.sk_buff* %39, %struct.sk_buff** %3, align 8
  %40 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %41 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %45 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %44, i32 0, i32 2
  %46 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %45, align 8
  store %struct.ifmcaddr6* %46, %struct.ifmcaddr6** %4, align 8
  br label %17

47:                                               ; preds = %17
  %48 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %49 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %48, i32 0, i32 0
  %50 = call i32 @read_unlock_bh(i32* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @mld_sendpack(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %9, %53, %47
  ret void
}

declare dso_local i64 @mld_in_v1_mode(%struct.inet6_dev*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @add_grec(%struct.sk_buff*, %struct.ifmcaddr6*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @mld_sendpack(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
