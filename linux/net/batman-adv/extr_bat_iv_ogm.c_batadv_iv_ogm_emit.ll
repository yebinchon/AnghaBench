; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_emit.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.net_device* }

@.str = private unnamed_addr constant [60 x i8] c"Error - can't forward packet: incoming iface not specified\0A\00", align 1
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_forw_packet*)* @batadv_iv_ogm_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_emit(%struct.batadv_forw_packet* %0) #0 {
  %2 = alloca %struct.batadv_forw_packet*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.batadv_forw_packet* %0, %struct.batadv_forw_packet** %2, align 8
  %4 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %12 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %3, align 8
  %16 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %17 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  br label %52

25:                                               ; preds = %10
  %26 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %27 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = icmp ne %struct.net_device* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %52

37:                                               ; preds = %25
  %38 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %39 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %52

46:                                               ; preds = %37
  %47 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %48 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %2, align 8
  %49 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @batadv_iv_ogm_send_to_if(%struct.batadv_forw_packet* %47, %struct.TYPE_4__* %50)
  br label %52

52:                                               ; preds = %46, %45, %36, %24, %8
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @batadv_iv_ogm_send_to_if(%struct.batadv_forw_packet*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
