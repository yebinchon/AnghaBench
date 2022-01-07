; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_stream_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_stream_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i8*, i8*, i64, i32*, %struct.sk_buff*, i8*, i32 }
%struct.l2cap_ctrl = type { i8* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"chan %p, control %p, skb %p, state %d\00", align 1
@L2CAP_TXSEQ_EXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"buffer_seq %d->%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Freeing %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*)* @l2cap_stream_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_stream_rx(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.l2cap_ctrl*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %8 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7, %struct.l2cap_ctrl* %8, %struct.sk_buff* %9, i32 %12)
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %15 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @l2cap_classify_txseq(%struct.l2cap_chan* %14, i8* %17)
  %19 = load i64, i64* @L2CAP_TXSEQ_EXPECTED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %23 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %24 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %22, %struct.l2cap_ctrl* %23)
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 5
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.l2cap_chan*
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @__next_seq(%struct.l2cap_chan* %29, i8* %32)
  %34 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %28, i8* %33)
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @__next_seq(%struct.l2cap_chan* %35, i8* %38)
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %45 = call i32 @l2cap_reassemble_sdu(%struct.l2cap_chan* %42, %struct.sk_buff* %43, %struct.l2cap_ctrl* %44)
  br label %72

46:                                               ; preds = %3
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %48 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %47, i32 0, i32 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %57 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %56, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %60 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %62 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = bitcast %struct.sk_buff* %66 to %struct.l2cap_chan*
  %68 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %21
  %73 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %74 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %77 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %79 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %80 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @__next_seq(%struct.l2cap_chan* %78, i8* %81)
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %84 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i64 @l2cap_classify_txseq(%struct.l2cap_chan*, i8*) #1

declare dso_local i32 @l2cap_pass_to_tx(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i8* @__next_seq(%struct.l2cap_chan*, i8*) #1

declare dso_local i32 @l2cap_reassemble_sdu(%struct.l2cap_chan*, %struct.sk_buff*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
