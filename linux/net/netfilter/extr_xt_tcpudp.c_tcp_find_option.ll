; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_tcpudp.c_tcp_find_option.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_tcpudp.c_tcp_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"finding option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, i32, i32, i32, i32*)* @tcp_find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_find_option(i32 %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [56 x i32], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %7, align 4
  br label %80

22:                                               ; preds = %6
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [56 x i32], [56 x i32]* %15, i64 0, i64 0
  %30 = call i32* @skb_header_pointer(%struct.sk_buff* %23, i32 %27, i32 %28, i32* %29)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32*, i32** %13, align 8
  store i32 1, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %80

35:                                               ; preds = %22
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %16, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %80

53:                                               ; preds = %40
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %16, align 4
  br label %77

63:                                               ; preds = %53
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %71
  %74 = phi i32 [ %69, %71 ], [ 1, %72 ]
  %75 = load i32, i32* %16, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %73, %60
  br label %36

78:                                               ; preds = %36
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %48, %33, %20
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
