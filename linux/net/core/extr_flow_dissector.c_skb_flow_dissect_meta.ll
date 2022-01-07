; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissect_meta.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissect_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector = type { i32 }
%struct.flow_dissector_key_meta = type { i32 }

@FLOW_DISSECTOR_KEY_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_flow_dissect_meta(%struct.sk_buff* %0, %struct.flow_dissector* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flow_dissector*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flow_dissector_key_meta*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flow_dissector* %1, %struct.flow_dissector** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %9 = load i32, i32* @FLOW_DISSECTOR_KEY_META, align 4
  %10 = call i32 @dissector_uses_key(%struct.flow_dissector* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %23

13:                                               ; preds = %3
  %14 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %15 = load i32, i32* @FLOW_DISSECTOR_KEY_META, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.flow_dissector_key_meta* @skb_flow_dissector_target(%struct.flow_dissector* %14, i32 %15, i8* %16)
  store %struct.flow_dissector_key_meta* %17, %struct.flow_dissector_key_meta** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flow_dissector_key_meta*, %struct.flow_dissector_key_meta** %7, align 8
  %22 = getelementptr inbounds %struct.flow_dissector_key_meta, %struct.flow_dissector_key_meta* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @dissector_uses_key(%struct.flow_dissector*, i32) #1

declare dso_local %struct.flow_dissector_key_meta* @skb_flow_dissector_target(%struct.flow_dissector*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
