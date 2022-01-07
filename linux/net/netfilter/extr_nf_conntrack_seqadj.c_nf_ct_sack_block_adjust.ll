; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_sack_block_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_sack_block_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tcphdr = type { i32 }
%struct.nf_ct_seqadj = type { i64, i64, i32 }
%struct.tcp_sack_block_wire = type { i8*, i8* }

@.str = private unnamed_addr constant [49 x i8] c"sack_adjust: start_seq: %u->%u, end_seq: %u->%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.tcphdr*, i32, i32, %struct.nf_ct_seqadj*)* @nf_ct_sack_block_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_sack_block_adjust(%struct.sk_buff* %0, %struct.tcphdr* %1, i32 %2, i32 %3, %struct.nf_ct_seqadj* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_ct_seqadj*, align 8
  %11 = alloca %struct.tcp_sack_block_wire*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nf_ct_seqadj* %4, %struct.nf_ct_seqadj** %10, align 8
  br label %14

14:                                               ; preds = %94, %5
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %134

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = bitcast i8* %25 to %struct.tcp_sack_block_wire*
  store %struct.tcp_sack_block_wire* %26, %struct.tcp_sack_block_wire** %11, align 8
  %27 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %28 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @ntohl(i8* %29)
  %31 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %32 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %36 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @after(i64 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %18
  %41 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %42 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @ntohl(i8* %43)
  %45 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %46 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i8* @htonl(i64 %48)
  store i8* %49, i8** %12, align 8
  br label %60

50:                                               ; preds = %18
  %51 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %52 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @ntohl(i8* %53)
  %55 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %56 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = call i8* @htonl(i64 %58)
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %50, %40
  %61 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %62 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @ntohl(i8* %63)
  %65 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %66 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %70 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @after(i64 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %76 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @ntohl(i8* %77)
  %79 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %80 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = call i8* @htonl(i64 %82)
  store i8* %83, i8** %13, align 8
  br label %94

84:                                               ; preds = %60
  %85 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %86 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @ntohl(i8* %87)
  %89 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %90 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = call i8* @htonl(i64 %92)
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %84, %74
  %95 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %96 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @ntohl(i8* %97)
  %99 = load i8*, i8** %12, align 8
  %100 = call i64 @ntohl(i8* %99)
  %101 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %102 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @ntohl(i8* %103)
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @ntohl(i8* %105)
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %100, i64 %104, i64 %106)
  %108 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %109 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %108, i32 0, i32 0
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %112 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @inet_proto_csum_replace4(i32* %109, %struct.sk_buff* %110, i8* %113, i8* %114, i32 0)
  %116 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %117 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %116, i32 0, i32 0
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %120 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @inet_proto_csum_replace4(i32* %117, %struct.sk_buff* %118, i8* %121, i8* %122, i32 0)
  %124 = load i8*, i8** %12, align 8
  %125 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %126 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %129 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = zext i32 %130 to i64
  %132 = add i64 %131, 16
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %8, align 4
  br label %14

134:                                              ; preds = %14
  ret void
}

declare dso_local i64 @after(i64, i32) #1

declare dso_local i64 @ntohl(i8*) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
