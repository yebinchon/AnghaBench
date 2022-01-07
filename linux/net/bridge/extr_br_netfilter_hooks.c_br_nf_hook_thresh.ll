; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_hook_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_hook_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_hook_entries = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.nf_hook_ops = type { i64 }

@NF_BR_PRI_BRNF = common dso_local global i64 0, align 8
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_nf_hook_thresh(i32 %0, %struct.net* %1, %struct.sock* %2, %struct.sk_buff* %3, %struct.net_device* %4, %struct.net_device* %5, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, align 8
  %16 = alloca %struct.nf_hook_entries*, align 8
  %17 = alloca %struct.nf_hook_state, align 4
  %18 = alloca %struct.nf_hook_ops**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.net* %1, %struct.net** %10, align 8
  store %struct.sock* %2, %struct.sock** %11, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store %struct.net_device* %4, %struct.net_device** %13, align 8
  store %struct.net_device* %5, %struct.net_device** %14, align 8
  store i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %6, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %15, align 8
  %21 = load %struct.net*, %struct.net** %10, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nf_hook_entries* @rcu_dereference(i32 %28)
  store %struct.nf_hook_entries* %29, %struct.nf_hook_entries** %16, align 8
  %30 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %16, align 8
  %31 = icmp ne %struct.nf_hook_entries* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %7
  %33 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %15, align 8
  %34 = load %struct.net*, %struct.net** %10, align 8
  %35 = load %struct.sock*, %struct.sock** %11, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = call i32 %33(%struct.net* %34, %struct.sock* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %8, align 4
  br label %86

38:                                               ; preds = %7
  %39 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %16, align 8
  %40 = call %struct.nf_hook_ops** @nf_hook_entries_get_hook_ops(%struct.nf_hook_entries* %39)
  store %struct.nf_hook_ops** %40, %struct.nf_hook_ops*** %18, align 8
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %60, %38
  %42 = load i32, i32* %19, align 4
  %43 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %16, align 8
  %44 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %48, i64 %50
  %52 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %51, align 8
  %53 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NF_BR_PRI_BRNF, align 8
  %56 = icmp sle i64 %54, %55
  br label %57

57:                                               ; preds = %47, %41
  %58 = phi i1 [ false, %41 ], [ %56, %47 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %19, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %19, align 4
  br label %41

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %66 = load %struct.net_device*, %struct.net_device** %13, align 8
  %67 = load %struct.net_device*, %struct.net_device** %14, align 8
  %68 = load %struct.sock*, %struct.sock** %11, align 8
  %69 = load %struct.net*, %struct.net** %10, align 8
  %70 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %15, align 8
  %71 = call i32 @nf_hook_state_init(%struct.nf_hook_state* %17, i32 %64, i32 %65, %struct.net_device* %66, %struct.net_device* %67, %struct.sock* %68, %struct.net* %69, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %16, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @nf_hook_slow(%struct.sk_buff* %72, %struct.nf_hook_state* %17, %struct.nf_hook_entries* %73, i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %63
  %79 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %15, align 8
  %80 = load %struct.net*, %struct.net** %10, align 8
  %81 = load %struct.sock*, %struct.sock** %11, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = call i32 %79(%struct.net* %80, %struct.sock* %81, %struct.sk_buff* %82)
  store i32 %83, i32* %20, align 4
  br label %84

84:                                               ; preds = %78, %63
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %32
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.nf_hook_entries* @rcu_dereference(i32) #1

declare dso_local %struct.nf_hook_ops** @nf_hook_entries_get_hook_ops(%struct.nf_hook_entries*) #1

declare dso_local i32 @nf_hook_state_init(%struct.nf_hook_state*, i32, i32, %struct.net_device*, %struct.net_device*, %struct.sock*, %struct.net*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*) #1

declare dso_local i32 @nf_hook_slow(%struct.sk_buff*, %struct.nf_hook_state*, %struct.nf_hook_entries*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
