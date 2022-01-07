; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_connlimit.c_nft_connlimit_do_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_connlimit.c_nft_connlimit_do_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_zone = type { i32 }
%struct.nft_connlimit = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nft_regs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.nft_pktinfo = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nf_conntrack_tuple }

@nf_ct_zone_dflt = common dso_local global %struct.nf_conntrack_zone zeroinitializer, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@NF_DROP = common dso_local global i8* null, align 8
@NFT_BREAK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_connlimit*, %struct.nft_regs*, %struct.nft_pktinfo*, %struct.nft_set_ext*)* @nft_connlimit_do_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_connlimit_do_eval(%struct.nft_connlimit* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2, %struct.nft_set_ext* %3) #0 {
  %5 = alloca %struct.nft_connlimit*, align 8
  %6 = alloca %struct.nft_regs*, align 8
  %7 = alloca %struct.nft_pktinfo*, align 8
  %8 = alloca %struct.nft_set_ext*, align 8
  %9 = alloca %struct.nf_conntrack_zone*, align 8
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  store %struct.nft_connlimit* %0, %struct.nft_connlimit** %5, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %6, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %7, align 8
  store %struct.nft_set_ext* %3, %struct.nft_set_ext** %8, align 8
  store %struct.nf_conntrack_zone* @nf_ct_zone_dflt, %struct.nf_conntrack_zone** %9, align 8
  store %struct.nf_conntrack_tuple* %11, %struct.nf_conntrack_tuple** %10, align 8
  %15 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %16 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nf_conn* @nf_ct_get(i32 %17, i32* %12)
  store %struct.nf_conn* %18, %struct.nf_conn** %13, align 8
  %19 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %20 = icmp ne %struct.nf_conn* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %23 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %27, %struct.nf_conntrack_tuple** %10, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %29 = call %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conn* %28)
  store %struct.nf_conntrack_zone* %29, %struct.nf_conntrack_zone** %9, align 8
  br label %50

30:                                               ; preds = %4
  %31 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %32 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %35 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @skb_network_offset(i32 %36)
  %38 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %39 = call i32 @nft_pf(%struct.nft_pktinfo* %38)
  %40 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %41 = call i32 @nft_net(%struct.nft_pktinfo* %40)
  %42 = call i32 @nf_ct_get_tuplepr(i32 %33, i32 %37, i32 %39, i32 %41, %struct.nf_conntrack_tuple* %11)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %30
  %45 = load i8*, i8** @NF_DROP, align 8
  %46 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %47 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %85

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %52 = call i32 @nft_net(%struct.nft_pktinfo* %51)
  %53 = load %struct.nft_connlimit*, %struct.nft_connlimit** %5, align 8
  %54 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %53, i32 0, i32 2
  %55 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %56 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %9, align 8
  %57 = call i64 @nf_conncount_add(i32 %52, %struct.TYPE_6__* %54, %struct.nf_conntrack_tuple* %55, %struct.nf_conntrack_zone* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i8*, i8** @NF_DROP, align 8
  %61 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %62 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %85

64:                                               ; preds = %50
  %65 = load %struct.nft_connlimit*, %struct.nft_connlimit** %5, align 8
  %66 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.nft_connlimit*, %struct.nft_connlimit** %5, align 8
  %71 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ugt i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = load %struct.nft_connlimit*, %struct.nft_connlimit** %5, align 8
  %76 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load i8*, i8** @NFT_BREAK, align 8
  %82 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %83 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  br label %85

85:                                               ; preds = %44, %59, %80, %64
  ret void
}

declare dso_local %struct.nf_conn* @nf_ct_get(i32, i32*) #1

declare dso_local %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_get_tuplepr(i32, i32, i32, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(i32) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i64 @nf_conncount_add(i32, %struct.TYPE_6__*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
