; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_set_mps_mac_addr_rcvd.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_set_mps_mac_addr_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { i32 }
%struct.mpoa_client = type { i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @set_mps_mac_addr_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mps_mac_addr_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %5 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %6 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %11 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @kfree(i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %16 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.k_message*, %struct.k_message** %3, align 8
  %18 = getelementptr inbounds %struct.k_message, %struct.k_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmemdup(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %24 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %26 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %34

31:                                               ; preds = %14
  %32 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %33 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
