; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ip_clear_mutable_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ip_clear_mutable_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iphdr*, i32*)* @ip_clear_mutable_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_clear_mutable_options(%struct.iphdr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %10 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %9, i64 1
  %11 = bitcast %struct.iphdr* %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %69, %27, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  switch i32 %25, label %32 [
    i32 133, label %26
    i32 131, label %27
  ]

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %78

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %19

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %78

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  switch i32 %49, label %65 [
    i32 129, label %50
    i32 133, label %50
    i32 134, label %50
    i32 130, label %50
    i32 149, label %50
    i32 132, label %51
    i32 128, label %51
  ]

50:                                               ; preds = %46, %46, %46, %46, %46
  br label %69

51:                                               ; preds = %46, %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 -4
  %64 = call i32 @memcpy(i32* %58, i8* %63, i32 4)
  br label %65

65:                                               ; preds = %46, %57
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @memset(i8* %66, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %65, %50
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  br label %19

77:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %54, %43, %26
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
