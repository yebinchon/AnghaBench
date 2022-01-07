; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_tvlv_container_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_tvlv_container_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.batadv_tvlv_gateway_data = type { i8*, i8* }

@BATADV_TVLV_GW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_gw_tvlv_container_update(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.batadv_tvlv_gateway_data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i8* @atomic_read(i32* %9)
  %11 = ptrtoint i8* %10 to i8
  store i8 %11, i8* %6, align 1
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %36 [
    i32 129, label %14
    i32 130, label %14
    i32 128, label %18
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %16 = load i32, i32* @BATADV_TVLV_GW, align 4
  %17 = call i32 @batadv_tvlv_container_unregister(%struct.batadv_priv* %15, i32 %16, i32 1)
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %20 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i8* @atomic_read(i32* %21)
  store i8* %22, i8** %4, align 8
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %24 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i8* @atomic_read(i32* %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @htonl(i8* %27)
  %29 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %3, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @htonl(i8* %30)
  %32 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %3, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %34 = load i32, i32* @BATADV_TVLV_GW, align 4
  %35 = call i32 @batadv_tvlv_container_register(%struct.batadv_priv* %33, i32 %34, i32 1, %struct.batadv_tvlv_gateway_data* %3, i32 16)
  br label %36

36:                                               ; preds = %1, %18, %14
  ret void
}

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @batadv_tvlv_container_unregister(%struct.batadv_priv*, i32, i32) #1

declare dso_local i8* @htonl(i8*) #1

declare dso_local i32 @batadv_tvlv_container_register(%struct.batadv_priv*, i32, i32, %struct.batadv_tvlv_gateway_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
