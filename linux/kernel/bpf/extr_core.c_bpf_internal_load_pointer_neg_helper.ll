; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_internal_load_pointer_neg_helper.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_internal_load_pointer_neg_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }

@SKF_NET_OFF = common dso_local global i32 0, align 4
@SKF_LL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bpf_internal_load_pointer_neg_helper(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SKF_NET_OFF, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @skb_network_header(%struct.sk_buff* %13)
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @SKF_NET_OFF, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %8, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SKF_LL_OFF, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @skb_mac_header(%struct.sk_buff* %26)
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @SKF_LL_OFF, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %25, %21
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp uge i8* %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i8* @skb_tail_pointer(%struct.sk_buff* %46)
  %48 = icmp ule i8* %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %4, align 8
  br label %52

51:                                               ; preds = %41, %35
  store i8* null, i8** %4, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
