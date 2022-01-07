; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_send_iprm.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_send_iprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i32, i8*, i32)* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32 }
%struct.sk_buff = type { i64, i64 }

@pr_iucv = common dso_local global %struct.TYPE_2__* null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_path*, %struct.iucv_message*, %struct.sk_buff*)* @iucv_send_iprm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_send_iprm(%struct.iucv_path* %0, %struct.iucv_message* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.iucv_path*, align 8
  %5 = alloca %struct.iucv_message*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [8 x i64], align 16
  store %struct.iucv_path* %0, %struct.iucv_path** %4, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @memcpy(i64* %8, i8* %12, i64 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 255, %19
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 7
  store i64 %20, i64* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr_iucv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i32, i8*, i32)*, i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i32, i8*, i32)** %23, align 8
  %25 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %26 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %27 = load i32, i32* @IUCV_IPRMDATA, align 4
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %29 = bitcast i64* %28 to i8*
  %30 = call i32 %24(%struct.iucv_path* %25, %struct.iucv_message* %26, i32 %27, i32 0, i8* %29, i32 8)
  ret i32 %30
}

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
