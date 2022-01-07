; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { {}* }
%struct.cfpkt = type { i32 }
%struct.cfmuxl = type { i32 }
%struct.caif_payload_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Send data on unknown phy ID = %d (0x%x)\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfmuxl_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfmuxl_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca %struct.cfmuxl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cflayer*, align 8
  %10 = alloca %struct.caif_payload_info*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %11 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %12 = call %struct.cfmuxl* @container_obj(%struct.cflayer* %11)
  store %struct.cfmuxl* %12, %struct.cfmuxl** %6, align 8
  %13 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %14 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %13)
  store %struct.caif_payload_info* %14, %struct.caif_payload_info** %10, align 8
  %15 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %16 = icmp ne %struct.caif_payload_info* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.cfmuxl*, %struct.cfmuxl** %6, align 8
  %22 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %23 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call %struct.cflayer* @get_dn(%struct.cfmuxl* %21, %struct.TYPE_2__* %24)
  store %struct.cflayer* %25, %struct.cflayer** %9, align 8
  %26 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %27 = icmp eq %struct.cflayer* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %30 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %35 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %42 = call i32 @cfpkt_destroy(%struct.cfpkt* %41)
  %43 = load i32, i32* @ENOTCONN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %2
  %46 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %47 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %51 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %54 = call i32 @cfpkt_add_head(%struct.cfpkt* %53, i32* %8, i32 1)
  %55 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %56 = call i32 @cffrml_hold(%struct.cflayer* %55)
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %59 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (%struct.cflayer*, %struct.cfpkt*)**
  %61 = load i32 (%struct.cflayer*, %struct.cfpkt*)*, i32 (%struct.cflayer*, %struct.cfpkt*)** %60, align 8
  %62 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %63 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %64 = call i32 %61(%struct.cflayer* %62, %struct.cfpkt* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %66 = call i32 @cffrml_put(%struct.cflayer* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %45, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.cfmuxl* @container_obj(%struct.cflayer*) #1

declare dso_local %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cflayer* @get_dn(%struct.cfmuxl*, %struct.TYPE_2__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @cffrml_hold(%struct.cflayer*) #1

declare dso_local i32 @cffrml_put(%struct.cflayer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
