; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_timer.c_br_message_age_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_timer.c_br_message_age_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, %struct.TYPE_3__*, i64, %struct.TYPE_4__, %struct.net_bridge* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.net_bridge = type { i32 }
%struct.timer_list = type { i32 }

@message_age_timer = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"port %u(%s) neighbor %.2x%.2x.%pM lost\0A\00", align 1
@p = common dso_local global %struct.net_bridge_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_message_age_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_message_age_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %8 = ptrtoint %struct.net_bridge_port* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @message_age_timer, align 4
  %11 = call %struct.net_bridge_port* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.net_bridge_port* %11, %struct.net_bridge_port** %3, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 4
  %14 = load %struct.net_bridge*, %struct.net_bridge** %13, align 8
  store %struct.net_bridge* %14, %struct.net_bridge** %4, align 8
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %16 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %15, i32 0, i32 3
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %18 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BR_STATE_DISABLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %79

23:                                               ; preds = %1
  %24 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %30 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @br_info(%struct.net_bridge* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33, i32 %38, i32 %43, i32* %45)
  %47 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %48 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %51 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BR_STATE_DISABLED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %23
  br label %75

56:                                               ; preds = %23
  %57 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %58 = call i32 @br_is_root_bridge(%struct.net_bridge* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %60 = call i32 @br_become_designated_port(%struct.net_bridge_port* %59)
  %61 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %62 = call i32 @br_configuration_update(%struct.net_bridge* %61)
  %63 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %64 = call i32 @br_port_state_selection(%struct.net_bridge* %63)
  %65 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %66 = call i32 @br_is_root_bridge(%struct.net_bridge* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %73 = call i32 @br_become_root_bridge(%struct.net_bridge* %72)
  br label %74

74:                                               ; preds = %71, %68, %56
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %77 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %22
  ret void
}

declare dso_local %struct.net_bridge_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @br_info(%struct.net_bridge*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @br_become_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_configuration_update(%struct.net_bridge*) #1

declare dso_local i32 @br_port_state_selection(%struct.net_bridge*) #1

declare dso_local i32 @br_become_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
