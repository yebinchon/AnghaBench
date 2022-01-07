; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_skb_sid_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_skb_sid_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i64 }

@SECSID_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64*, i32)* @selinux_xfrm_skb_sid_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_xfrm_skb_sid_ingress(%struct.sk_buff* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sec_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca %struct.xfrm_sec_ctx*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @SECSID_NULL, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %14)
  store %struct.sec_path* %15, %struct.sec_path** %9, align 8
  %16 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %17 = icmp ne %struct.sec_path* %16, null
  br i1 %17, label %18, label %70

18:                                               ; preds = %3
  %19 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %20 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %66, %18
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %28 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %27, i32 0, i32 1
  %29 = load %struct.xfrm_state**, %struct.xfrm_state*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %29, i64 %31
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %32, align 8
  store %struct.xfrm_state* %33, %struct.xfrm_state** %11, align 8
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %35 = call i64 @selinux_authorizable_xfrm(%struct.xfrm_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %26
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 0
  %40 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %39, align 8
  store %struct.xfrm_sec_ctx* %40, %struct.xfrm_sec_ctx** %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @SECSID_NULL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %12, align 8
  %46 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %71

51:                                               ; preds = %44
  br label %64

52:                                               ; preds = %37
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %12, align 8
  %55 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i64, i64* @SECSID_NULL, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %74

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %23

69:                                               ; preds = %23
  br label %70

70:                                               ; preds = %69, %3
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i64, i64* %8, align 8
  %73 = load i64*, i64** %6, align 8
  store i64 %72, i64* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %58
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i64 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
