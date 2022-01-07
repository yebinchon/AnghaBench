; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_cmpfn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_cmpfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { i64 }
%struct.seg6_hmac_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @seg6_hmac_cmpfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_hmac_cmpfn(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca %struct.rhashtable_compare_arg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seg6_hmac_info*, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.seg6_hmac_info*
  store %struct.seg6_hmac_info* %7, %struct.seg6_hmac_info** %5, align 8
  %8 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %5, align 8
  %9 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %3, align 8
  %12 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %10, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
