; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6_hopopts.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6_hopopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6_opt_hdr*, i32, i32*)* @tcf_csum_ipv6_hopopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv6_hopopts(%struct.ipv6_opt_hdr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipv6_opt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ipv6_opt_hdr* %0, %struct.ipv6_opt_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %13 = bitcast %struct.ipv6_opt_hdr* %12 to i8*
  store i8* %13, i8** %11, align 8
  store i32 4, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %71, %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %78

20:                                               ; preds = %17
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %57 [
    i32 128, label %27
    i32 129, label %28
  ]

27:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 6
  br i1 %38, label %46, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 3
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %39, %28
  store i32 0, i32* %4, align 4
  br label %80

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %79

57:                                               ; preds = %20
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %79

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %27
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %17

78:                                               ; preds = %17
  br label %79

79:                                               ; preds = %78, %69, %47
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
