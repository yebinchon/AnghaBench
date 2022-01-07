; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { %struct.lwtunnel_state* }
%struct.lwtunnel_state = type { i64 }
%struct.lwtunnel_encap_ops = type { i32 (%struct.sk_buff*)* }

@EINVAL = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@LWTUNNEL_ENCAP_MAX = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@lwtun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.lwtunnel_encap_ops*, align 8
  %6 = alloca %struct.lwtunnel_state*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %13 = icmp ne %struct.dst_entry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 0
  %18 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %17, align 8
  store %struct.lwtunnel_state* %18, %struct.lwtunnel_state** %6, align 8
  %19 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %6, align 8
  %20 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %6, align 8
  %26 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LWTUNNEL_ENCAP_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %15
  store i32 0, i32* %2, align 4
  br label %73

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load i32*, i32** @lwtun_encaps, align 8
  %36 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %6, align 8
  %37 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.lwtunnel_encap_ops* @rcu_dereference(i32 %40)
  store %struct.lwtunnel_encap_ops* %41, %struct.lwtunnel_encap_ops** %5, align 8
  %42 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %5, align 8
  %43 = icmp ne %struct.lwtunnel_encap_ops* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %5, align 8
  %46 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %46, align 8
  %48 = icmp ne i32 (%struct.sk_buff*)* %47, null
  br label %49

49:                                               ; preds = %44, %31
  %50 = phi i1 [ false, %31 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %5, align 8
  %56 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %55, i32 0, i32 0
  %57 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 %57(%struct.sk_buff* %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %66, %14
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %67, %30
  %74 = load i32, i32* %2, align 4
  ret i32 %74
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
