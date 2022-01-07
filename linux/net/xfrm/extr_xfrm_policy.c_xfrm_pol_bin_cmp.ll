; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_pol_bin_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_pol_bin_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.xfrm_pol_inexact_key* }
%struct.xfrm_pol_inexact_key = type { i32, i32, i32, i32, i32 }
%struct.xfrm_pol_inexact_bin = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @xfrm_pol_bin_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_pol_bin_cmp(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable_compare_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xfrm_pol_inexact_key*, align 8
  %7 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %8 = alloca i32, align 4
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %4, align 8
  %10 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %9, i32 0, i32 0
  %11 = load %struct.xfrm_pol_inexact_key*, %struct.xfrm_pol_inexact_key** %10, align 8
  store %struct.xfrm_pol_inexact_key* %11, %struct.xfrm_pol_inexact_key** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.xfrm_pol_inexact_bin*
  store %struct.xfrm_pol_inexact_bin* %13, %struct.xfrm_pol_inexact_bin** %7, align 8
  %14 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %15 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = call i32 @read_pnet(i32* %16)
  %18 = load %struct.xfrm_pol_inexact_key*, %struct.xfrm_pol_inexact_key** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %18, i32 0, i32 4
  %20 = call i32 @read_pnet(i32* %19)
  %21 = call i32 @net_eq(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %26 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfrm_pol_inexact_key*, %struct.xfrm_pol_inexact_key** %6, align 8
  %30 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %24
  %38 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %39 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfrm_pol_inexact_key*, %struct.xfrm_pol_inexact_key** %6, align 8
  %43 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %41, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %72

50:                                               ; preds = %37
  %51 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %52 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xfrm_pol_inexact_key*, %struct.xfrm_pol_inexact_key** %6, align 8
  %56 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %54, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %72

63:                                               ; preds = %50
  %64 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %65 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xfrm_pol_inexact_key*, %struct.xfrm_pol_inexact_key** %6, align 8
  %69 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %67, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %61, %48, %35, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @read_pnet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
