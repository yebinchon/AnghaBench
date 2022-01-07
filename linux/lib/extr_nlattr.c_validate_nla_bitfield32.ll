; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c_validate_nla_bitfield32.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c_validate_nla_bitfield32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nla_bitfield32 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32*)* @validate_nla_bitfield32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_nla_bitfield32(%struct.nlattr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nla_bitfield32*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %8 = call %struct.nla_bitfield32* @nla_data(%struct.nlattr* %7)
  store %struct.nla_bitfield32* %8, %struct.nla_bitfield32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.nla_bitfield32*, %struct.nla_bitfield32** %6, align 8
  %16 = getelementptr inbounds %struct.nla_bitfield32, %struct.nla_bitfield32* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %14
  %27 = load %struct.nla_bitfield32*, %struct.nla_bitfield32** %6, align 8
  %28 = getelementptr inbounds %struct.nla_bitfield32, %struct.nla_bitfield32* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %26
  %39 = load %struct.nla_bitfield32*, %struct.nla_bitfield32** %6, align 8
  %40 = getelementptr inbounds %struct.nla_bitfield32, %struct.nla_bitfield32* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nla_bitfield32*, %struct.nla_bitfield32** %6, align 8
  %43 = getelementptr inbounds %struct.nla_bitfield32, %struct.nla_bitfield32* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %35, %23, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.nla_bitfield32* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
