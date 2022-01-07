; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_aggregate.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_forw_packet*, i8*, i32, i32)* @batadv_iv_ogm_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_aggregate(%struct.batadv_forw_packet* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.batadv_forw_packet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.batadv_forw_packet* %0, %struct.batadv_forw_packet** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %11 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @skb_put_data(i32 %12, i8* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %18 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %22 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %29 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @BIT(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %5, align 8
  %34 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %27, %4
  ret void
}

declare dso_local i32 @skb_put_data(i32, i8*, i32) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
