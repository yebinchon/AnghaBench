; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_llcp_add_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_llcp_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ptype 0x%x dsap 0x%x ssap 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"header 0x%x 0x%x\0A\00", align 1
@LLCP_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32, i32, i32)* @llcp_add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @llcp_add_header(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 2
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 2
  %18 = or i32 %15, %17
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 6
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %32 = load i32, i32* @LLCP_HEADER_SIZE, align 4
  %33 = call i32 @skb_put_data(%struct.sk_buff* %30, i32* %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %34
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
