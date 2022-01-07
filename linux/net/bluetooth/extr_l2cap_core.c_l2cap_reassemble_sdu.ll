; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_reassemble_sdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_reassemble_sdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, %struct.sk_buff*, %struct.sk_buff*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*, %struct.sk_buff*)* }
%struct.sk_buff = type { i64, i32 }
%struct.l2cap_ctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@L2CAP_SDULEN_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*, %struct.l2cap_ctrl*)* @l2cap_reassemble_sdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_reassemble_sdu(%struct.l2cap_chan* %0, %struct.sk_buff* %1, %struct.l2cap_ctrl* %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.l2cap_ctrl* %2, %struct.l2cap_ctrl** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %11 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %146 [
    i32 128, label %13
    i32 129, label %28
    i32 131, label %76
    i32 130, label %101
  ]

13:                                               ; preds = %3
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %14, i32 0, i32 2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %146

19:                                               ; preds = %13
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.l2cap_chan*, %struct.sk_buff*)*, i32 (%struct.l2cap_chan*, %struct.sk_buff*)** %23, align 8
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 %24(%struct.l2cap_chan* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %7, align 4
  br label %146

28:                                               ; preds = %3
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %146

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @L2CAP_SDULEN_SIZE, align 4
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %146

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @get_unaligned_le16(i32 %43)
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i32, i32* @L2CAP_SDULEN_SIZE, align 4
  %49 = call i32 @skb_pull(%struct.sk_buff* %47, i32 %48)
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load i32, i32* @EMSGSIZE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %146

60:                                               ; preds = %40
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %65 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %146

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 2
  store %struct.sk_buff* %70, %struct.sk_buff** %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %75 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %74, i32 0, i32 1
  store %struct.sk_buff* %73, %struct.sk_buff** %75, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  br label %146

76:                                               ; preds = %3
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %78 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %77, i32 0, i32 2
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %146

82:                                               ; preds = %76
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %84 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %83, i32 0, i32 2
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %88 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %87, i32 0, i32 1
  %89 = call i32 @append_skb_frag(%struct.sk_buff* %85, %struct.sk_buff* %86, %struct.sk_buff** %88)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %90 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %91 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %90, i32 0, i32 2
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %96 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %82
  br label %146

100:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %146

101:                                              ; preds = %3
  %102 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %103 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %102, i32 0, i32 2
  %104 = load %struct.sk_buff*, %struct.sk_buff** %103, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %146

107:                                              ; preds = %101
  %108 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %109 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %108, i32 0, i32 2
  %110 = load %struct.sk_buff*, %struct.sk_buff** %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %113 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %112, i32 0, i32 1
  %114 = call i32 @append_skb_frag(%struct.sk_buff* %110, %struct.sk_buff* %111, %struct.sk_buff** %113)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %115 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %116 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %115, i32 0, i32 2
  %117 = load %struct.sk_buff*, %struct.sk_buff** %116, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %121 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %107
  br label %146

125:                                              ; preds = %107
  %126 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %127 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %126, i32 0, i32 3
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32 (%struct.l2cap_chan*, %struct.sk_buff*)*, i32 (%struct.l2cap_chan*, %struct.sk_buff*)** %129, align 8
  %131 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %132 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %133 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %132, i32 0, i32 2
  %134 = load %struct.sk_buff*, %struct.sk_buff** %133, align 8
  %135 = call i32 %130(%struct.l2cap_chan* %131, %struct.sk_buff* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %125
  %139 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %140 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %139, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %140, align 8
  %141 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %142 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %141, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %142, align 8
  %143 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %144 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %138, %125
  br label %146

146:                                              ; preds = %3, %145, %124, %106, %100, %99, %81, %69, %68, %57, %39, %33, %19, %18
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = call i32 @kfree_skb(%struct.sk_buff* %150)
  %152 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %153 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %152, i32 0, i32 2
  %154 = load %struct.sk_buff*, %struct.sk_buff** %153, align 8
  %155 = call i32 @kfree_skb(%struct.sk_buff* %154)
  %156 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %157 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %156, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %157, align 8
  %158 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %159 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %158, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %159, align 8
  %160 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %161 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %149, %146
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @get_unaligned_le16(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @append_skb_frag(%struct.sk_buff*, %struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
