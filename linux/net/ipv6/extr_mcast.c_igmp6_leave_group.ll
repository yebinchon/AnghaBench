; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_leave_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_leave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@MAF_LAST_REPORTER = common dso_local global i32 0, align 4
@ICMPV6_MGM_REDUCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @igmp6_leave_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_leave_group(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %3 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %4 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i64 @mld_in_v1_mode(%struct.TYPE_4__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %10 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAF_LAST_REPORTER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %17 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %16, i32 0, i32 2
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %19 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ICMPV6_MGM_REDUCTION, align 4
  %24 = call i32 @igmp6_send(i32* %17, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %15, %8
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %31 = call i32 @mld_add_delrec(%struct.TYPE_4__* %29, %struct.ifmcaddr6* %30)
  %32 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %33 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @mld_ifc_event(%struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @mld_in_v1_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @igmp6_send(i32*, i32, i32) #1

declare dso_local i32 @mld_add_delrec(%struct.TYPE_4__*, %struct.ifmcaddr6*) #1

declare dso_local i32 @mld_ifc_event(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
