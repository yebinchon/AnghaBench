; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ptype 0x%x dsap 0x%x ssap 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LLCP Rx: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"SYMM\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"UI\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CONNECT\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"DISC\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CC\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DM\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"SNL\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"I frame\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"AGF frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_local*, %struct.sk_buff*)* @nfc_llcp_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_rx_skb(%struct.nfc_llcp_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @nfc_llcp_ptype(%struct.sk_buff* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @nfc_llcp_dsap(%struct.sk_buff* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @nfc_llcp_ssap(%struct.sk_buff* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 129
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 16, i32 1, i32 %24, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %73 [
    i32 129, label %31
    i32 128, label %33
    i32 136, label %38
    i32 135, label %43
    i32 137, label %48
    i32 134, label %53
    i32 130, label %58
    i32 133, label %63
    i32 131, label %63
    i32 132, label %63
    i32 138, label %68
  ]

31:                                               ; preds = %29
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %73

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @nfc_llcp_recv_ui(%struct.nfc_llcp_local* %35, %struct.sk_buff* %36)
  br label %73

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @nfc_llcp_recv_connect(%struct.nfc_llcp_local* %40, %struct.sk_buff* %41)
  br label %73

43:                                               ; preds = %29
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @nfc_llcp_recv_disc(%struct.nfc_llcp_local* %45, %struct.sk_buff* %46)
  br label %73

48:                                               ; preds = %29
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %50 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @nfc_llcp_recv_cc(%struct.nfc_llcp_local* %50, %struct.sk_buff* %51)
  br label %73

53:                                               ; preds = %29
  %54 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %55 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @nfc_llcp_recv_dm(%struct.nfc_llcp_local* %55, %struct.sk_buff* %56)
  br label %73

58:                                               ; preds = %29
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %60 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @nfc_llcp_recv_snl(%struct.nfc_llcp_local* %60, %struct.sk_buff* %61)
  br label %73

63:                                               ; preds = %29, %29, %29
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %65 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @nfc_llcp_recv_hdlc(%struct.nfc_llcp_local* %65, %struct.sk_buff* %66)
  br label %73

68:                                               ; preds = %29
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %70 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @nfc_llcp_recv_agf(%struct.nfc_llcp_local* %70, %struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %29, %68, %63, %58, %53, %48, %43, %38, %33, %31
  ret void
}

declare dso_local i32 @nfc_llcp_ptype(%struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_dsap(%struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_ssap(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfc_llcp_recv_ui(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_connect(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_disc(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_cc(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_dm(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_snl(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_hdlc(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_recv_agf(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
