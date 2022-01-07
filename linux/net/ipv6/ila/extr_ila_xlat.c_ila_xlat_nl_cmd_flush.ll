; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_cmd_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_cmd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.net = type { i32 }
%struct.ila_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rhashtable_iter = type { i32 }
%struct.ila_map = type { i32 }

@ila_net_id = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ila_xlat_nl_cmd_flush(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ila_net*, align 8
  %7 = alloca %struct.rhashtable_iter, align 4
  %8 = alloca %struct.ila_map*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %12 = call %struct.net* @genl_info_net(%struct.genl_info* %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load i32, i32* @ila_net_id, align 4
  %15 = call %struct.ila_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.ila_net* %15, %struct.ila_net** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %17 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @rhashtable_walk_enter(i32* %18, %struct.rhashtable_iter* %7)
  %20 = call i32 @rhashtable_walk_start(%struct.rhashtable_iter* %7)
  br label %21

21:                                               ; preds = %65, %32, %2
  %22 = call %struct.ila_map* @rhashtable_walk_next(%struct.rhashtable_iter* %7)
  store %struct.ila_map* %22, %struct.ila_map** %8, align 8
  %23 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %24 = call i64 @IS_ERR(%struct.ila_map* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.ila_map* %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %21

33:                                               ; preds = %26
  %34 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %35 = call i32 @PTR_ERR(%struct.ila_map* %34)
  store i32 %35, i32* %10, align 4
  br label %67

36:                                               ; preds = %21
  %37 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %38 = icmp ne %struct.ila_map* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %66

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %43 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %44 = call i32* @lock_from_ila_map(%struct.ila_net* %42, %struct.ila_map* %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %48 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %51 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %50, i32 0, i32 0
  %52 = load i32, i32* @rht_params, align 4
  %53 = call i32 @rhashtable_remove_fast(i32* %49, i32* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %58 = call i32 @ila_free_node(%struct.ila_map* %57)
  br label %59

59:                                               ; preds = %56, %41
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %59
  br label %21

66:                                               ; preds = %64, %39
  br label %67

67:                                               ; preds = %66, %33
  %68 = call i32 @rhashtable_walk_stop(%struct.rhashtable_iter* %7)
  %69 = call i32 @rhashtable_walk_exit(%struct.rhashtable_iter* %7)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rhashtable_walk_enter(i32*, %struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_start(%struct.rhashtable_iter*) #1

declare dso_local %struct.ila_map* @rhashtable_walk_next(%struct.rhashtable_iter*) #1

declare dso_local i64 @IS_ERR(%struct.ila_map*) #1

declare dso_local i32 @PTR_ERR(%struct.ila_map*) #1

declare dso_local i32* @lock_from_ila_map(%struct.ila_net*, %struct.ila_map*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @ila_free_node(%struct.ila_map*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rhashtable_walk_stop(%struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_exit(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
