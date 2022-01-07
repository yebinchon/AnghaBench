; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { %struct.lwtunnel_state* }
%struct.lwtunnel_state = type { i64 }
%struct.lwtunnel_encap_ops = type { i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* }

@EINVAL = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@LWTUNNEL_ENCAP_MAX = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@lwtun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.lwtunnel_encap_ops*, align 8
  %10 = alloca %struct.lwtunnel_state*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %12)
  store %struct.dst_entry* %13, %struct.dst_entry** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %17 = icmp ne %struct.dst_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %75

19:                                               ; preds = %3
  %20 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 0
  %22 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %21, align 8
  store %struct.lwtunnel_state* %22, %struct.lwtunnel_state** %10, align 8
  %23 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %10, align 8
  %24 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %10, align 8
  %30 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LWTUNNEL_ENCAP_MAX, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %19
  store i32 0, i32* %4, align 4
  br label %79

35:                                               ; preds = %28
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load i32*, i32** @lwtun_encaps, align 8
  %40 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %10, align 8
  %41 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.lwtunnel_encap_ops* @rcu_dereference(i32 %44)
  store %struct.lwtunnel_encap_ops* %45, %struct.lwtunnel_encap_ops** %9, align 8
  %46 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %9, align 8
  %47 = icmp ne %struct.lwtunnel_encap_ops* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %9, align 8
  %50 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %50, align 8
  %52 = icmp ne i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %51, null
  br label %53

53:                                               ; preds = %48, %35
  %54 = phi i1 [ false, %35 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %9, align 8
  %60 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %59, i32 0, i32 0
  %61 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %60, align 8
  %62 = load %struct.net*, %struct.net** %5, align 8
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 %61(%struct.net* %62, %struct.sock* %63, %struct.sk_buff* %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %58, %53
  %67 = call i32 (...) @rcu_read_unlock()
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %72, %18
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i32 @kfree_skb(%struct.sk_buff* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %73, %34
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.lwtunnel_encap_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
