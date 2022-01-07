; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_cmd_get_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_cmd_get_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.ila_net = type { i32 }
%struct.ila_xlat_params = type { i32 }
%struct.ila_map = type { i32 }

@ila_net_id = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ila_xlat_nl_cmd_get_mapping(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ila_net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ila_xlat_params, align 4
  %10 = alloca %struct.ila_map*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = call %struct.net* @genl_info_net(%struct.genl_info* %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = load i32, i32* @ila_net_id, align 4
  %16 = call %struct.ila_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.ila_net* %16, %struct.ila_net** %7, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = call i32 @parse_nl_config(%struct.genl_info* %17, %struct.ila_xlat_params* %9)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %23
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.ila_net*, %struct.ila_net** %7, align 8
  %35 = call %struct.ila_map* @ila_lookup_by_params(%struct.ila_xlat_params* %9, %struct.ila_net* %34)
  store %struct.ila_map* %35, %struct.ila_map** %10, align 8
  %36 = load %struct.ila_map*, %struct.ila_map** %10, align 8
  %37 = icmp ne %struct.ila_map* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.ila_map*, %struct.ila_map** %10, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ila_dump_info(%struct.ila_map* %39, i32 %42, i32 %45, i32 0, %struct.sk_buff* %46, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %38, %32
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %62

58:                                               ; preds = %53
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = call i32 @genlmsg_reply(%struct.sk_buff* %59, %struct.genl_info* %60)
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %57
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @nlmsg_free(%struct.sk_buff* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %58, %29, %21
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @parse_nl_config(%struct.genl_info*, %struct.ila_xlat_params*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ila_map* @ila_lookup_by_params(%struct.ila_xlat_params*, %struct.ila_net*) #1

declare dso_local i32 @ila_dump_info(%struct.ila_map*, i32, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
