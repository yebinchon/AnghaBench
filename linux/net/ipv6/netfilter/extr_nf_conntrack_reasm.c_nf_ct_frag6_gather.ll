; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_conntrack_reasm.c_nf_ct_frag6_gather.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_conntrack_reasm.c_nf_ct_frag6_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.frag_hdr = type { i32 }
%struct.frag_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipv6hdr = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"payload len = 0\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't find and can't create new queue\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_frag6_gather(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.frag_hdr*, align 8
  %13 = alloca %struct.frag_queue*, align 8
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i64 @find_prev_fhdr(%struct.sk_buff* %27, i32* %15, i32* %10, i32* %9)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %106

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %106

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @skb_set_transport_header(%struct.sk_buff* %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %46)
  store %struct.ipv6hdr* %47, %struct.ipv6hdr** %14, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i64 @skb_transport_header(%struct.sk_buff* %48)
  %50 = inttoptr i64 %49 to %struct.frag_hdr*
  store %struct.frag_hdr* %50, %struct.frag_hdr** %12, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @skb_orphan(%struct.sk_buff* %51)
  %53 = load %struct.net*, %struct.net** %5, align 8
  %54 = load %struct.frag_hdr*, %struct.frag_hdr** %12, align 8
  %55 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %42
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  br label %70

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i32 [ %68, %63 ], [ 0, %69 ]
  %72 = call %struct.frag_queue* @fq_find(%struct.net* %53, i32 %56, i32 %57, %struct.ipv6hdr* %58, i32 %71)
  store %struct.frag_queue* %72, %struct.frag_queue** %13, align 8
  %73 = load %struct.frag_queue*, %struct.frag_queue** %13, align 8
  %74 = icmp eq %struct.frag_queue* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %106

79:                                               ; preds = %70
  %80 = load %struct.frag_queue*, %struct.frag_queue** %13, align 8
  %81 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @spin_lock_bh(i32* %82)
  %84 = load %struct.frag_queue*, %struct.frag_queue** %13, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.frag_hdr*, %struct.frag_hdr** %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @nf_ct_frag6_queue(%struct.frag_queue* %84, %struct.sk_buff* %85, %struct.frag_hdr* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @EPROTO, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %79
  %98 = load %struct.frag_queue*, %struct.frag_queue** %13, align 8
  %99 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock_bh(i32* %100)
  %102 = load %struct.frag_queue*, %struct.frag_queue** %13, align 8
  %103 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %102, i32 0, i32 0
  %104 = call i32 @inet_frag_put(%struct.TYPE_4__* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %97, %75, %39, %30, %24
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @find_prev_fhdr(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local %struct.frag_queue* @fq_find(%struct.net*, i32, i32, %struct.ipv6hdr*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nf_ct_frag6_queue(%struct.frag_queue*, %struct.sk_buff*, %struct.frag_hdr*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @inet_frag_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
