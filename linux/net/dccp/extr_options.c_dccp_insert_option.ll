; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_option.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DCCP_MAX_OPT_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_insert_option(%struct.sk_buff* %0, i8 zeroext %1, i8* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = add nsw i64 %17, 2
  %19 = load i64, i64* @DCCP_MAX_OPT_LEN, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %51

22:                                               ; preds = %4
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %26
  store i64 %31, i64* %29, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, 2
  %36 = trunc i32 %35 to i8
  %37 = call i8* @skb_push(%struct.sk_buff* %32, i8 zeroext %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8, i8* %7, align 1
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, 2
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %9, align 1
  %50 = call i32 @memcpy(i8* %47, i8* %48, i8 zeroext %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %22, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
