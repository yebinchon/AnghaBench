; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_ctx_get_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_ctx_get_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_iphc_ctx = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.lowpan_iphc_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lowpan_iphc_ctx* (%struct.net_device*, i64)* @lowpan_iphc_ctx_get_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lowpan_iphc_ctx* @lowpan_iphc_ctx_get_by_id(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.lowpan_iphc_ctx*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lowpan_iphc_ctx*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.TYPE_4__* @lowpan_dev(%struct.net_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %11, i64 %12
  store %struct.lowpan_iphc_ctx* %13, %struct.lowpan_iphc_ctx** %6, align 8
  %14 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  %15 = call i32 @lowpan_iphc_ctx_is_active(%struct.lowpan_iphc_ctx* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.lowpan_iphc_ctx* null, %struct.lowpan_iphc_ctx** %3, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  store %struct.lowpan_iphc_ctx* %19, %struct.lowpan_iphc_ctx** %3, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %3, align 8
  ret %struct.lowpan_iphc_ctx* %21
}

declare dso_local %struct.TYPE_4__* @lowpan_dev(%struct.net_device*) #1

declare dso_local i32 @lowpan_iphc_ctx_is_active(%struct.lowpan_iphc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
