; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_orig_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_orig_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32, i32 }
%struct.batadv_priv = type { i32 }

@batadv_compare_orig = common dso_local global i32 0, align 4
@batadv_choose_orig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_orig_node* @batadv_v_ogm_orig_get(%struct.batadv_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.batadv_orig_node*, align 8
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %8, i32* %9)
  store %struct.batadv_orig_node* %10, %struct.batadv_orig_node** %6, align 8
  %11 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %12 = icmp ne %struct.batadv_orig_node* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  store %struct.batadv_orig_node* %14, %struct.batadv_orig_node** %3, align 8
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.batadv_orig_node* @batadv_orig_node_new(%struct.batadv_priv* %16, i32* %17)
  store %struct.batadv_orig_node* %18, %struct.batadv_orig_node** %6, align 8
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %20 = icmp ne %struct.batadv_orig_node* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %3, align 8
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %24 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %23, i32 0, i32 1
  %25 = call i32 @kref_get(i32* %24)
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %27 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @batadv_compare_orig, align 4
  %30 = load i32, i32* @batadv_choose_orig, align 4
  %31 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %32 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %33 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %32, i32 0, i32 0
  %34 = call i32 @batadv_hash_add(i32 %28, i32 %29, i32 %30, %struct.batadv_orig_node* %31, i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %39 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %38)
  %40 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %41 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %40)
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  br label %42

42:                                               ; preds = %37, %22
  %43 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  store %struct.batadv_orig_node* %43, %struct.batadv_orig_node** %3, align 8
  br label %44

44:                                               ; preds = %42, %21, %13
  %45 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  ret %struct.batadv_orig_node* %45
}

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32*) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_node_new(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @batadv_hash_add(i32, i32, i32, %struct.batadv_orig_node*, i32*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
