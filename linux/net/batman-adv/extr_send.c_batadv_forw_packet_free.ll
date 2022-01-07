; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_forw_packet_free(%struct.batadv_forw_packet* %0, i32 %1) #0 {
  %3 = alloca %struct.batadv_forw_packet*, align 8
  %4 = alloca i32, align 4
  store %struct.batadv_forw_packet* %0, %struct.batadv_forw_packet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %9 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @kfree_skb(i32 %10)
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %14 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @consume_skb(i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %19 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %24 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @batadv_hardif_put(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %29 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %34 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @batadv_hardif_put(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %39 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %44 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @atomic_inc(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %49 = call i32 @kfree(%struct.batadv_forw_packet* %48)
  ret void
}

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @consume_skb(i32) #1

declare dso_local i32 @batadv_hardif_put(i64) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i32 @kfree(%struct.batadv_forw_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
