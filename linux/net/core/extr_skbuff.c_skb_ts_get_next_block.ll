; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_ts_get_next_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_ts_get_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32 }
%struct.ts_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, %struct.ts_config*, %struct.ts_state*)* @skb_ts_get_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_ts_get_next_block(i32 %0, i32** %1, %struct.ts_config* %2, %struct.ts_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.ts_config*, align 8
  %8 = alloca %struct.ts_state*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store %struct.ts_config* %2, %struct.ts_config** %7, align 8
  store %struct.ts_state* %3, %struct.ts_state** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = load %struct.ts_state*, %struct.ts_state** %8, align 8
  %12 = call i32 @TS_SKB_CB(%struct.ts_state* %11)
  %13 = call i32 @skb_seq_read(i32 %9, i32** %10, i32 %12)
  ret i32 %13
}

declare dso_local i32 @skb_seq_read(i32, i32**, i32) #1

declare dso_local i32 @TS_SKB_CB(%struct.ts_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
