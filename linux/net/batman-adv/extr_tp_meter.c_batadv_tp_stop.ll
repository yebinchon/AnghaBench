; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tp_vars = type { i32 }

@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Meter: stopping test towards %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Meter: trying to interrupt an already over connection\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tp_stop(%struct.batadv_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca %struct.batadv_tp_vars*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %9, %struct.batadv_priv* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %13, i32* %14)
  store %struct.batadv_orig_node* %15, %struct.batadv_orig_node** %7, align 8
  %16 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %17 = icmp ne %struct.batadv_orig_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %21 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %22 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.batadv_tp_vars* @batadv_tp_list_find(%struct.batadv_priv* %20, i32 %23)
  store %struct.batadv_tp_vars* %24, %struct.batadv_tp_vars** %8, align 8
  %25 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %26 = icmp ne %struct.batadv_tp_vars* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %30 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %28, %struct.batadv_priv* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %37

31:                                               ; preds = %19
  %32 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @batadv_tp_sender_shutdown(%struct.batadv_tp_vars* %32, i32 %33)
  %35 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %36 = call i32 @batadv_tp_vars_put(%struct.batadv_tp_vars* %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %39 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %38)
  br label %40

40:                                               ; preds = %37, %18
  ret void
}

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, ...) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32*) #1

declare dso_local %struct.batadv_tp_vars* @batadv_tp_list_find(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_tp_sender_shutdown(%struct.batadv_tp_vars*, i32) #1

declare dso_local i32 @batadv_tp_vars_put(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
