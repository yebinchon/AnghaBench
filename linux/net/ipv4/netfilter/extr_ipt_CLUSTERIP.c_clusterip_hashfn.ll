; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_hashfn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_hashfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.clusterip_config = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown protocol %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown mode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.clusterip_config*)* @clusterip_hashfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clusterip_hashfn(%struct.sk_buff* %0, %struct.clusterip_config* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.clusterip_config*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.clusterip_config* %1, %struct.clusterip_config** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %12)
  store %struct.iphdr* %13, %struct.iphdr** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %15 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @proto_ports_offset(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %29 = call i32* @skb_header_pointer(%struct.sk_buff* %21, i32 %27, i32 4, i32* %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %20
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  %47 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %79 [
    i32 130, label %49
    i32 129, label %58
    i32 128, label %68
  ]

49:                                               ; preds = %45
  %50 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohl(i32 %52)
  %54 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  %55 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @jhash_1word(i32 %53, i32 %56)
  store i64 %57, i64* %6, align 8
  br label %85

58:                                               ; preds = %45
  %59 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohl(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  %65 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @jhash_2words(i32 %62, i32 %63, i32 %66)
  store i64 %67, i64* %6, align 8
  br label %85

68:                                               ; preds = %45
  %69 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %70 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  %76 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @jhash_3words(i32 %72, i32 %73, i32 %74, i32 %77)
  store i64 %78, i64* %6, align 8
  br label %85

79:                                               ; preds = %45
  store i64 0, i64* %6, align 8
  %80 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  %81 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = call i32 (...) @BUG()
  br label %85

85:                                               ; preds = %79, %68, %58, %49
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  %88 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @reciprocal_scale(i64 %86, i32 %89)
  %91 = add nsw i64 %90, 1
  ret i64 %91
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @proto_ports_offset(i32) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32) #1

declare dso_local i64 @jhash_1word(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @jhash_2words(i32, i32, i32) #1

declare dso_local i64 @jhash_3words(i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @reciprocal_scale(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
