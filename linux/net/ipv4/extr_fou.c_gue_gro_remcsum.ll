; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_gro_remcsum.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_gro_remcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.guehdr = type { i32 }
%struct.gro_remcsum = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.guehdr* (%struct.sk_buff*, i32, %struct.guehdr*, i8*, i64, %struct.gro_remcsum*, i32)* @gue_gro_remcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.guehdr* @gue_gro_remcsum(%struct.sk_buff* %0, i32 %1, %struct.guehdr* %2, i8* %3, i64 %4, %struct.gro_remcsum* %5, i32 %6) #0 {
  %8 = alloca %struct.guehdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.guehdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.gro_remcsum*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.guehdr* %2, %struct.guehdr** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.gro_remcsum* %5, %struct.gro_remcsum** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohs(i32 %23)
  store i64 %24, i64* %17, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntohs(i32 %27)
  store i64 %28, i64* %18, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load %struct.guehdr*, %struct.guehdr** %11, align 8
  store %struct.guehdr* %34, %struct.guehdr** %8, align 8
  br label %56

35:                                               ; preds = %7
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store %struct.guehdr* null, %struct.guehdr** %8, align 8
  br label %56

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load %struct.guehdr*, %struct.guehdr** %11, align 8
  %45 = bitcast %struct.guehdr* %44 to i8*
  %46 = load i32, i32* %10, align 4
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load %struct.gro_remcsum*, %struct.gro_remcsum** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call %struct.guehdr* @skb_gro_remcsum_process(%struct.sk_buff* %43, i8* %45, i32 %46, i64 %47, i64 %48, i64 %49, %struct.gro_remcsum* %50, i32 %51)
  store %struct.guehdr* %52, %struct.guehdr** %11, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.guehdr*, %struct.guehdr** %11, align 8
  store %struct.guehdr* %55, %struct.guehdr** %8, align 8
  br label %56

56:                                               ; preds = %42, %41, %33
  %57 = load %struct.guehdr*, %struct.guehdr** %8, align 8
  ret %struct.guehdr* %57
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local %struct.guehdr* @skb_gro_remcsum_process(%struct.sk_buff*, i8*, i32, i64, i64, i64, %struct.gro_remcsum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
