; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_make_reassembled_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_make_reassembled_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { %struct.sk_buff*, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_MIB_REASMUSRMSGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_make_reassembled_event(%struct.net* %0, %struct.sk_buff_head* %1, %struct.sk_buff* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sctp_ulpevent*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp eq %struct.sk_buff* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %10, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %14, align 8
  br label %30

30:                                               ; preds = %34, %28
  %31 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %14, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %15, align 8
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store %struct.sk_buff* %43, %struct.sk_buff** %45, align 8
  br label %73

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i64 @skb_cloned(%struct.sk_buff* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %11, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %5, align 8
  br label %126

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sctp_skb_set_owner_r(%struct.sk_buff* %58, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store %struct.sk_buff* %63, %struct.sk_buff** %66, align 8
  br label %72

67:                                               ; preds = %46
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store %struct.sk_buff* %68, %struct.sk_buff** %71, align 8
  br label %72

72:                                               ; preds = %67, %57
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %76 = call i32 @__skb_unlink(%struct.sk_buff* %74, %struct.sk_buff_head* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %8, align 8
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %114, %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %13, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %109 = call i32 @__skb_unlink(%struct.sk_buff* %107, %struct.sk_buff_head* %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = icmp eq %struct.sk_buff* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %87
  br label %119

114:                                              ; preds = %87
  %115 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  store %struct.sk_buff* %115, %struct.sk_buff** %117, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %118, %struct.sk_buff** %10, align 8
  br label %84

119:                                              ; preds = %113, %84
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %120)
  store %struct.sctp_ulpevent* %121, %struct.sctp_ulpevent** %12, align 8
  %122 = load %struct.net*, %struct.net** %6, align 8
  %123 = load i32, i32* @SCTP_MIB_REASMUSRMSGS, align 4
  %124 = call i32 @SCTP_INC_STATS(%struct.net* %122, i32 %123)
  %125 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  store %struct.sctp_ulpevent* %125, %struct.sctp_ulpevent** %5, align 8
  br label %126

126:                                              ; preds = %119, %56
  %127 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  ret %struct.sctp_ulpevent* %127
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_skb_set_owner_r(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
