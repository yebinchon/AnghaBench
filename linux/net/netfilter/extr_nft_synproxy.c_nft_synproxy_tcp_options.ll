; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_tcp_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_tcp_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synproxy_options = type { i32, i32, i32 }
%struct.tcphdr = type { i64, i64 }
%struct.synproxy_net = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nf_synproxy_info = type { i32 }
%struct.nft_synproxy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NF_SYNPROXY_OPT_ECN = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_TIMESTAMP = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synproxy_options*, %struct.tcphdr*, %struct.synproxy_net*, %struct.nf_synproxy_info*, %struct.nft_synproxy*)* @nft_synproxy_tcp_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_synproxy_tcp_options(%struct.synproxy_options* %0, %struct.tcphdr* %1, %struct.synproxy_net* %2, %struct.nf_synproxy_info* %3, %struct.nft_synproxy* %4) #0 {
  %6 = alloca %struct.synproxy_options*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.synproxy_net*, align 8
  %9 = alloca %struct.nf_synproxy_info*, align 8
  %10 = alloca %struct.nft_synproxy*, align 8
  store %struct.synproxy_options* %0, %struct.synproxy_options** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store %struct.synproxy_net* %2, %struct.synproxy_net** %8, align 8
  store %struct.nf_synproxy_info* %3, %struct.nf_synproxy_info** %9, align 8
  store %struct.nft_synproxy* %4, %struct.nft_synproxy** %10, align 8
  %11 = load %struct.synproxy_net*, %struct.synproxy_net** %8, align 8
  %12 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @this_cpu_inc(i32 %15)
  %17 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %18 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @NF_SYNPROXY_OPT_ECN, align 4
  %28 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %29 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %21, %5
  %33 = load %struct.nft_synproxy*, %struct.nft_synproxy** %10, align 8
  %34 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %38 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %42 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %45 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nf_synproxy_info*, %struct.nf_synproxy_info** %9, align 8
  %47 = getelementptr inbounds %struct.nf_synproxy_info, %struct.nf_synproxy_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %50 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %52 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NF_SYNPROXY_OPT_TIMESTAMP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %32
  %58 = load %struct.nf_synproxy_info*, %struct.nf_synproxy_info** %9, align 8
  %59 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %60 = call i32 @synproxy_init_timestamp_cookie(%struct.nf_synproxy_info* %58, %struct.synproxy_options* %59)
  br label %72

61:                                               ; preds = %32
  %62 = load i32, i32* @NF_SYNPROXY_OPT_WSCALE, align 4
  %63 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NF_SYNPROXY_OPT_ECN, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.synproxy_options*, %struct.synproxy_options** %6, align 8
  %69 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61, %57
  ret void
}

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @synproxy_init_timestamp_cookie(%struct.nf_synproxy_info*, %struct.synproxy_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
