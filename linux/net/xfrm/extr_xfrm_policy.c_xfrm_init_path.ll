; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_init_path.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_init_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dst_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.rt6_info = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_dst*, %struct.dst_entry*, i32)* @xfrm_init_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_init_path(%struct.xfrm_dst* %0, %struct.dst_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_dst*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt6_info*, align 8
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %17 = bitcast %struct.dst_entry* %16 to %struct.rt6_info*
  store %struct.rt6_info* %17, %struct.rt6_info** %7, align 8
  %18 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %19 = call i32 @rt6_get_cookie(%struct.rt6_info* %18)
  %20 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %21 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %24 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @rt6_get_cookie(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
