; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_link_profile_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_link_profile_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@FIRST_FRAGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_link*)* @link_profile_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_profile_stats(%struct.tipc_link* %0) #0 {
  %2 = alloca %struct.tipc_link*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.tipc_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %2, align 8
  %6 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %7 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %6, i32 0, i32 1
  %8 = call i64 @skb_queue_len(i32* %7)
  %9 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 8
  %16 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %17 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %22 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %21, i32 0, i32 1
  %23 = call %struct.sk_buff* @skb_peek(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %136

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %28)
  store %struct.tipc_msg* %29, %struct.tipc_msg** %4, align 8
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %31 = call i32 @msg_size(%struct.tipc_msg* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %33 = call i64 @msg_user(%struct.tipc_msg* %32)
  %34 = load i64, i64* @MSG_FRAGMENTER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %38 = call i64 @msg_type(%struct.tipc_msg* %37)
  %39 = load i64, i64* @FIRST_FRAGMENT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %136

42:                                               ; preds = %36
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %44 = call %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg* %43)
  %45 = call i32 @msg_size(%struct.tipc_msg* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %27
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %49 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %54 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 64
  br i1 %59, label %60, label %68

60:                                               ; preds = %46
  %61 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %62 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %136

68:                                               ; preds = %46
  %69 = load i32, i32* %5, align 4
  %70 = icmp sle i32 %69, 256
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %73 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %135

79:                                               ; preds = %68
  %80 = load i32, i32* %5, align 4
  %81 = icmp sle i32 %80, 1024
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %84 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %134

90:                                               ; preds = %79
  %91 = load i32, i32* %5, align 4
  %92 = icmp sle i32 %91, 4096
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %95 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %133

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = icmp sle i32 %102, 16384
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %106 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %132

112:                                              ; preds = %101
  %113 = load i32, i32* %5, align 4
  %114 = icmp sle i32 %113, 32768
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %117 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %131

123:                                              ; preds = %112
  %124 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %125 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %123, %115
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132, %93
  br label %134

134:                                              ; preds = %133, %82
  br label %135

135:                                              ; preds = %134, %71
  br label %136

136:                                              ; preds = %26, %41, %135, %60
  ret void
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
