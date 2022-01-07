; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_pcap_next_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_pcap_next_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i64, i64 }

@pcap_ptr_va_curr = common dso_local global i64 0, align 8
@pcap_ptr_va_start = common dso_local global i64 0, align 8
@pcap_map_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcap_next_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_next_pkt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pcap_pkthdr*, align 8
  %3 = call %struct.pcap_pkthdr* (...) @pcap_curr_pkt()
  store %struct.pcap_pkthdr* %3, %struct.pcap_pkthdr** %2, align 8
  %4 = load i64, i64* @pcap_ptr_va_curr, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* @pcap_ptr_va_start, align 8
  %7 = sub i64 %5, %6
  %8 = load i64, i64* @pcap_map_size, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %49

11:                                               ; preds = %0
  %12 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %2, align 8
  %13 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %2, align 8
  %18 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %2, align 8
  %23 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %2, align 8
  %26 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %16, %11
  store i32 0, i32* %1, align 4
  br label %49

30:                                               ; preds = %21
  %31 = load i64, i64* @pcap_ptr_va_curr, align 8
  %32 = add i64 %31, 16
  %33 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %2, align 8
  %34 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = load i64, i64* @pcap_ptr_va_start, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* @pcap_map_size, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %2, align 8
  %44 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 16, %45
  %47 = load i64, i64* @pcap_ptr_va_curr, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* @pcap_ptr_va_curr, align 8
  store i32 1, i32* %1, align 4
  br label %49

49:                                               ; preds = %42, %41, %29, %10
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local %struct.pcap_pkthdr* @pcap_curr_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
