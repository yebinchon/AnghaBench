; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sctp_tsnmap }
%struct.sctp_tsnmap = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.sctp_ulpevent = type { i32 }
%struct.TYPE_6__ = type { %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_ulpq_renege_list(%struct.sctp_ulpq* %0, %struct.sk_buff_head* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sctp_ulpq*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.sctp_ulpevent*, align 8
  %15 = alloca %struct.sctp_tsnmap*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.sctp_tsnmap* %20, %struct.sctp_tsnmap** %15, align 8
  br label %21

21:                                               ; preds = %93, %3
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %23 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %11, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %26)
  store %struct.sctp_ulpevent* %27, %struct.sctp_ulpevent** %14, align 8
  %28 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %29 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %15, align 8
  %33 = call i32 @sctp_tsnmap_get_ctsn(%struct.sctp_tsnmap* %32)
  %34 = call i64 @TSN_lte(i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %94

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = call i64 @skb_headlen(%struct.sk_buff* %38)
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %12, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %13, align 8
  br label %47

47:                                               ; preds = %56, %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %13, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %53 = call i64 @skb_headlen(%struct.sk_buff* %52)
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %12, align 8
  br label %47

60:                                               ; preds = %47
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %73 = call i32 @__skb_unlink(%struct.sk_buff* %71, %struct.sk_buff_head* %72)
  %74 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %75 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %74)
  br label %76

76:                                               ; preds = %81, %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @TSN_lte(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %15, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @sctp_tsnmap_renege(%struct.sctp_tsnmap* %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %76

87:                                               ; preds = %76
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %4, align 8
  br label %96

93:                                               ; preds = %87
  br label %21

94:                                               ; preds = %36, %21
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i64 @TSN_lte(i32, i32) #1

declare dso_local i32 @sctp_tsnmap_get_ctsn(%struct.sctp_tsnmap*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_tsnmap_renege(%struct.sctp_tsnmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
