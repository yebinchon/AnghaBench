; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_check_election.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_check_election.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)* }
%struct.batadv_orig_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_gw_check_election(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_orig_node*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %4, align 8
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)*, i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)** %10, align 8
  %12 = icmp ne i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %16 = call %struct.batadv_orig_node* @batadv_gw_get_selected_orig(%struct.batadv_priv* %15)
  store %struct.batadv_orig_node* %16, %struct.batadv_orig_node** %5, align 8
  %17 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %18 = icmp ne %struct.batadv_orig_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %39

20:                                               ; preds = %14
  %21 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %23 = icmp eq %struct.batadv_orig_node* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %42

25:                                               ; preds = %20
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %27 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)*, i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)** %30, align 8
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %33 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %34 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %35 = call i32 %31(%struct.batadv_priv* %32, %struct.batadv_orig_node* %33, %struct.batadv_orig_node* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %41 = call i32 @batadv_gw_reselect(%struct.batadv_priv* %40)
  br label %42

42:                                               ; preds = %39, %37, %24
  %43 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %44 = icmp ne %struct.batadv_orig_node* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %47 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %46)
  br label %48

48:                                               ; preds = %13, %45, %42
  ret void
}

declare dso_local %struct.batadv_orig_node* @batadv_gw_get_selected_orig(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_gw_reselect(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
