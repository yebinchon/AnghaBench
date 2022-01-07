; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_helper.c___nf_nat_mangle_tcp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_helper.c___nf_nat_mangle_tcp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.nf_conn = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nf_nat_mangle_tcp_packet(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tcphdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @skb_ensure_writable(%struct.sk_buff* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %107

30:                                               ; preds = %9
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sub i32 %35, %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = call i32 @skb_tailroom(%struct.sk_buff* %38)
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub i32 %43, %44
  %46 = call i32 @enlarge_skb(%struct.sk_buff* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %107

49:                                               ; preds = %41, %34, %30
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = bitcast i8* %56 to %struct.tcphdr*
  store %struct.tcphdr* %57, %struct.tcphdr** %20, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %21, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 4
  %69 = add i32 %64, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i8*, i8** %17, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @mangle_contents(%struct.sk_buff* %63, i32 %69, i32 %70, i32 %71, i8* %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %22, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %82 = call i32 @nf_ct_l3num(%struct.nf_conn* %81)
  %83 = load i32, i32* @IPPROTO_TCP, align 4
  %84 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %86 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %85, i32 0, i32 2
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @nf_nat_csum_recalc(%struct.sk_buff* %80, i32 %82, i32 %83, %struct.tcphdr* %84, i32* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %49
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %100 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @nf_ct_seqadj_set(%struct.nf_conn* %97, i32 %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %96, %92, %49
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %48, %29
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @enlarge_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @mangle_contents(%struct.sk_buff*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @nf_nat_csum_recalc(%struct.sk_buff*, i32, i32, %struct.tcphdr*, i32*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_seqadj_set(%struct.nf_conn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
