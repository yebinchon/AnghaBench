; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_proto_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_proto_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_nat_proto_clean = type { i64, i64 }

@IPS_NAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*)* @nf_nat_proto_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_proto_remove(%struct.nf_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nf_nat_proto_clean*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.nf_nat_proto_clean*
  store %struct.nf_nat_proto_clean* %8, %struct.nf_nat_proto_clean** %6, align 8
  %9 = load %struct.nf_nat_proto_clean*, %struct.nf_nat_proto_clean** %6, align 8
  %10 = getelementptr inbounds %struct.nf_nat_proto_clean, %struct.nf_nat_proto_clean* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %15 = call i64 @nf_ct_l3num(%struct.nf_conn* %14)
  %16 = load %struct.nf_nat_proto_clean*, %struct.nf_nat_proto_clean** %6, align 8
  %17 = getelementptr inbounds %struct.nf_nat_proto_clean, %struct.nf_nat_proto_clean* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.nf_nat_proto_clean*, %struct.nf_nat_proto_clean** %6, align 8
  %22 = getelementptr inbounds %struct.nf_nat_proto_clean, %struct.nf_nat_proto_clean* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %27 = call i64 @nf_ct_protonum(%struct.nf_conn* %26)
  %28 = load %struct.nf_nat_proto_clean*, %struct.nf_nat_proto_clean** %6, align 8
  %29 = getelementptr inbounds %struct.nf_nat_proto_clean, %struct.nf_nat_proto_clean* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %13
  store i32 0, i32* %3, align 4
  br label %42

33:                                               ; preds = %25, %20
  %34 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IPS_NAT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
