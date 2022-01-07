; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_next_useropt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_next_useropt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nd_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_opt_hdr* (%struct.net_device*, %struct.nd_opt_hdr*, %struct.nd_opt_hdr*)* @ndisc_next_useropt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_opt_hdr* @ndisc_next_useropt(%struct.net_device* %0, %struct.nd_opt_hdr* %1, %struct.nd_opt_hdr* %2) #0 {
  %4 = alloca %struct.nd_opt_hdr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nd_opt_hdr*, align 8
  %7 = alloca %struct.nd_opt_hdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nd_opt_hdr* %1, %struct.nd_opt_hdr** %6, align 8
  store %struct.nd_opt_hdr* %2, %struct.nd_opt_hdr** %7, align 8
  %8 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %9 = icmp ne %struct.nd_opt_hdr* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %7, align 8
  %12 = icmp ne %struct.nd_opt_hdr* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %15 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %7, align 8
  %16 = icmp uge %struct.nd_opt_hdr* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10, %3
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %4, align 8
  br label %55

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %39, %18
  %20 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %21 = bitcast %struct.nd_opt_hdr* %20 to i8*
  %22 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %23 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %21, i64 %26
  %28 = bitcast i8* %27 to %struct.nd_opt_hdr*
  store %struct.nd_opt_hdr* %28, %struct.nd_opt_hdr** %6, align 8
  br label %29

29:                                               ; preds = %19
  %30 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %31 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %7, align 8
  %32 = icmp ult %struct.nd_opt_hdr* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %36 = call i64 @ndisc_is_useropt(%struct.net_device* %34, %struct.nd_opt_hdr* %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ false, %29 ], [ %38, %33 ]
  br i1 %40, label %19, label %41

41:                                               ; preds = %39
  %42 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %43 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %7, align 8
  %44 = icmp ule %struct.nd_opt_hdr* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  %48 = call i64 @ndisc_is_useropt(%struct.net_device* %46, %struct.nd_opt_hdr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %6, align 8
  br label %53

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi %struct.nd_opt_hdr* [ %51, %50 ], [ null, %52 ]
  store %struct.nd_opt_hdr* %54, %struct.nd_opt_hdr** %4, align 8
  br label %55

55:                                               ; preds = %53, %17
  %56 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  ret %struct.nd_opt_hdr* %56
}

declare dso_local i64 @ndisc_is_useropt(%struct.net_device*, %struct.nd_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
