; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_encap_hlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_encap_hlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel_encap = type { i32 }

@TUNNEL_ENCAP_FLAG_REMCSUM = common dso_local global i32 0, align 4
@GUE_PLEN_REMCSUM = common dso_local global i64 0, align 8
@GUE_LEN_PRIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gue_encap_hlen(%struct.ip_tunnel_encap* %0) #0 {
  %2 = alloca %struct.ip_tunnel_encap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ip_tunnel_encap* %0, %struct.ip_tunnel_encap** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 8, i64* %3, align 8
  %5 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %2, align 8
  %6 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i64, i64* @GUE_PLEN_REMCSUM, align 8
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %3, align 8
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, i64* @GUE_LEN_PRIV, align 8
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %20 ]
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
