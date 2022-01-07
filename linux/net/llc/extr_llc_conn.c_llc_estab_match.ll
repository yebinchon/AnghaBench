; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_estab_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_estab_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.llc_addr = type { i64, i32 }
%struct.sock = type { i32 }
%struct.llc_sock = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_sap*, %struct.llc_addr*, %struct.llc_addr*, %struct.sock*)* @llc_estab_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_estab_match(%struct.llc_sap* %0, %struct.llc_addr* %1, %struct.llc_addr* %2, %struct.sock* %3) #0 {
  %5 = alloca %struct.llc_sap*, align 8
  %6 = alloca %struct.llc_addr*, align 8
  %7 = alloca %struct.llc_addr*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %5, align 8
  store %struct.llc_addr* %1, %struct.llc_addr** %6, align 8
  store %struct.llc_addr* %2, %struct.llc_addr** %7, align 8
  store %struct.sock* %3, %struct.sock** %8, align 8
  %10 = load %struct.sock*, %struct.sock** %8, align 8
  %11 = call %struct.llc_sock* @llc_sk(%struct.sock* %10)
  store %struct.llc_sock* %11, %struct.llc_sock** %9, align 8
  %12 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %13 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.llc_addr*, %struct.llc_addr** %7, align 8
  %17 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %22 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.llc_addr*, %struct.llc_addr** %6, align 8
  %26 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %20
  %30 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %31 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.llc_addr*, %struct.llc_addr** %7, align 8
  %35 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ether_addr_equal(i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %41 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.llc_addr*, %struct.llc_addr** %6, align 8
  %45 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ether_addr_equal(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %39, %29, %20, %4
  %50 = phi i1 [ false, %29 ], [ false, %20 ], [ false, %4 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
