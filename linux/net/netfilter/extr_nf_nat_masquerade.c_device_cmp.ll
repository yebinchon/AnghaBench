; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_device_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_device_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_nat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*)* @device_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_cmp(%struct.nf_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nf_conn_nat*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %8 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %7)
  store %struct.nf_conn_nat* %8, %struct.nf_conn_nat** %6, align 8
  %9 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %6, align 8
  %10 = icmp ne %struct.nf_conn_nat* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %6, align 8
  %14 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %15, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
