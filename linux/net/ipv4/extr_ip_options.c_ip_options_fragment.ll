; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_options = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.ip_options }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_options_fragment(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ip_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call i8* @skb_network_header(%struct.sk_buff* %7)
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  store i8* %9, i8** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ip_options* %12, %struct.ip_options** %4, align 8
  %13 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %14 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %50, %24, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %24
  ]

23:                                               ; preds = %19
  br label %69

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  br label %16

29:                                               ; preds = %19
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %29
  br label %69

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @IPOPT_COPIED(i8 zeroext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @memset(i8* %47, i32 128, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %3, align 8
  br label %16

58:                                               ; preds = %16
  %59 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %60 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %62 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %64 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %66 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %68 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %58, %40, %23
  ret void
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @IPOPT_COPIED(i8 zeroext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
