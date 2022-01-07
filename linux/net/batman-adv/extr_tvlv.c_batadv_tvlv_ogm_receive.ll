; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_ogm_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_ogm_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_ogm_packet = type { i32 }
%struct.batadv_orig_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tvlv_ogm_receive(%struct.batadv_priv* %0, %struct.batadv_ogm_packet* %1, %struct.batadv_orig_node* %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_ogm_packet*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_ogm_packet* %1, %struct.batadv_ogm_packet** %5, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %6, align 8
  %9 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %5, align 8
  %10 = icmp ne %struct.batadv_ogm_packet* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %29

12:                                               ; preds = %3
  %13 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %5, align 8
  %14 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %29

20:                                               ; preds = %12
  %21 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %5, align 8
  %22 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %21, i64 1
  %23 = bitcast %struct.batadv_ogm_packet* %22 to i8*
  store i8* %23, i8** %7, align 8
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %25 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @batadv_tvlv_containers_process(%struct.batadv_priv* %24, i32 1, %struct.batadv_orig_node* %25, i32* null, i32* null, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %19, %11
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_tvlv_containers_process(%struct.batadv_priv*, i32, %struct.batadv_orig_node*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
