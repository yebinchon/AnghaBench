; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_rcv_created.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_rcv_created.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i64, i64 }
%struct.pnpipehdr = type { i64 }

@PN_LEGACY_FLOW_CONTROL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_rcv_created to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_rcv_created(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.pep_sock* @pep_sk(%struct.sock* %13)
  store %struct.pep_sock* %14, %struct.pep_sock** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %15)
  store %struct.pnpipehdr* %16, %struct.pnpipehdr** %7, align 8
  %17 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %18 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @PN_LEGACY_FLOW_CONTROL, align 8
  %21 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %22 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %24 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @__skb_pull(%struct.sk_buff* %25, i32 8)
  br label %27

27:                                               ; preds = %67, %2
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %27
  store i64 16, i64* %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %33 = call i64* @pep_get_sb(%struct.sk_buff* %31, i64* %9, i64* %11, i64* %32)
  store i64* %33, i64** %12, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %30
  %40 = load i64, i64* %9, align 8
  switch i64 %40, label %67 [
    i64 128, label %41
  ]

41:                                               ; preds = %39
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %42, 2
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i64*, i64** %12, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %47, %50
  %52 = icmp sgt i64 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %41
  br label %67

54:                                               ; preds = %44
  %55 = load i64*, i64** %12, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %57, 3
  %59 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %60 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, 3
  %65 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %66 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %39, %54, %53
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %8, align 8
  br label %27

70:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64* @pep_get_sb(%struct.sk_buff*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
