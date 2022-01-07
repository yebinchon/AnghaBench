; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { {}* }
%struct.cfpkt = type { i32 }
%struct.cfmuxl = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"erroneous Caif Packet\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Received data on unknown link ID = %d (0x%x) up == NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfmuxl_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfmuxl_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfmuxl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cflayer*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = call %struct.cfmuxl* @container_obj(%struct.cflayer* %10)
  store %struct.cfmuxl* %11, %struct.cfmuxl** %7, align 8
  %12 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %13 = call i64 @cfpkt_extr_head(%struct.cfpkt* %12, i32* %8, i32 1)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %18 = call i32 @cfpkt_destroy(%struct.cfpkt* %17)
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.cfmuxl*, %struct.cfmuxl** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.cflayer* @get_up(%struct.cfmuxl* %23, i32 %24)
  store %struct.cflayer* %25, %struct.cflayer** %9, align 8
  %26 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %27 = icmp eq %struct.cflayer* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %33 = call i32 @cfpkt_destroy(%struct.cfpkt* %32)
  %34 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %49

35:                                               ; preds = %21
  %36 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %37 = call i32 @cfsrvl_get(%struct.cflayer* %36)
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %40 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.cflayer*, %struct.cfpkt*)**
  %42 = load i32 (%struct.cflayer*, %struct.cfpkt*)*, i32 (%struct.cflayer*, %struct.cfpkt*)** %41, align 8
  %43 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %44 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %45 = call i32 %42(%struct.cflayer* %43, %struct.cfpkt* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %47 = call i32 @cfsrvl_put(%struct.cflayer* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %35, %28, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cfmuxl* @container_obj(%struct.cflayer*) #1

declare dso_local i64 @cfpkt_extr_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cflayer* @get_up(%struct.cfmuxl*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cfsrvl_get(%struct.cflayer*) #1

declare dso_local i32 @cfsrvl_put(%struct.cflayer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
