; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_iptable_mangle.c_ipt_mangle_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_iptable_mangle.c_ipt_mangle_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_hook_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iphdr = type { i64, i64, i64 }

@NF_DROP = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@RTN_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_hook_state*)* @ipt_mangle_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_mangle_out(%struct.sk_buff* %0, %struct.nf_hook_state* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_hook_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %15)
  store %struct.iphdr* %16, %struct.iphdr** %6, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load %struct.nf_hook_state*, %struct.nf_hook_state** %4, align 8
  %28 = load %struct.nf_hook_state*, %struct.nf_hook_state** %4, align 8
  %29 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ipt_do_table(%struct.sk_buff* %26, %struct.nf_hook_state* %27, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NF_DROP, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NF_STOLEN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %43)
  store %struct.iphdr* %44, %struct.iphdr** %6, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %42
  %51 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62, %56, %50, %42
  %69 = load %struct.nf_hook_state*, %struct.nf_hook_state** %4, align 8
  %70 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = load i32, i32* @RTN_UNSPEC, align 4
  %74 = call i32 @ip_route_me_harder(%struct.TYPE_4__* %71, %struct.sk_buff* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @NF_DROP_ERR(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %68
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %38, %2
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipt_do_table(%struct.sk_buff*, %struct.nf_hook_state*, i32) #1

declare dso_local i32 @ip_route_me_harder(%struct.TYPE_4__*, %struct.sk_buff*, i32) #1

declare dso_local i32 @NF_DROP_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
