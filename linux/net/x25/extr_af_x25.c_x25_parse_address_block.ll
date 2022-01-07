; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_parse_address_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_parse_address_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.x25_address = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_parse_address_block(%struct.sk_buff* %0, %struct.x25_address* %1, %struct.x25_address* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.x25_address*, align 8
  %7 = alloca %struct.x25_address*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.x25_address* %1, %struct.x25_address** %6, align 8
  store %struct.x25_address* %2, %struct.x25_address** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 4
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 15
  %26 = add nsw i32 %22, %25
  %27 = add nsw i32 %26, 1
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pskb_may_pull(%struct.sk_buff* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %15
  store i32 -1, i32* %10, align 4
  br label %42

35:                                               ; preds = %15
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.x25_address*, %struct.x25_address** %6, align 8
  %40 = load %struct.x25_address*, %struct.x25_address** %7, align 8
  %41 = call i32 @x25_addr_ntoa(i8* %38, %struct.x25_address* %39, %struct.x25_address* %40)
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %34, %14
  %43 = load %struct.x25_address*, %struct.x25_address** %6, align 8
  %44 = getelementptr inbounds %struct.x25_address, %struct.x25_address* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.x25_address*, %struct.x25_address** %7, align 8
  %47 = getelementptr inbounds %struct.x25_address, %struct.x25_address* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %35
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_addr_ntoa(i8*, %struct.x25_address*, %struct.x25_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
