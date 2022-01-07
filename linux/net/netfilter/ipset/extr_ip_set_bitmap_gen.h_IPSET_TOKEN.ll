; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_gen.h_IPSET_TOKEN.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_gen.h_IPSET_TOKEN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtype = type { i64, %struct.TYPE_2__, i32, %struct.ip_set* }
%struct.TYPE_2__ = type { i64 }
%struct.ip_set = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@gc = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@map = common dso_local global %struct.mtype* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mtype_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtype_gc(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mtype*, align 8
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.mtype*, %struct.mtype** %3, align 8
  %8 = ptrtoint %struct.mtype* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @gc, align 4
  %11 = call %struct.mtype* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.mtype* %11, %struct.mtype** %3, align 8
  %12 = load %struct.mtype*, %struct.mtype** %3, align 8
  %13 = getelementptr inbounds %struct.mtype, %struct.mtype* %12, i32 0, i32 3
  %14 = load %struct.ip_set*, %struct.ip_set** %13, align 8
  store %struct.ip_set* %14, %struct.ip_set** %4, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %57, %1
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mtype*, %struct.mtype** %3, align 8
  %21 = getelementptr inbounds %struct.mtype, %struct.mtype* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.mtype*, %struct.mtype** %3, align 8
  %27 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %28 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mtype_gc_test(i64 %25, %struct.mtype* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %24
  %33 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %34 = load %struct.mtype*, %struct.mtype** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i8* @get_ext(%struct.ip_set* %33, %struct.mtype* %34, i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %39 = call i32 @ext_timeout(i8* %37, %struct.ip_set* %38)
  %40 = call i64 @ip_set_timeout_expired(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.mtype*, %struct.mtype** %3, align 8
  %45 = getelementptr inbounds %struct.mtype, %struct.mtype* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clear_bit(i64 %43, i32 %46)
  %48 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @ip_set_ext_destroy(%struct.ip_set* %48, i8* %49)
  %51 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %52 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %42, %32
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %18

60:                                               ; preds = %18
  %61 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %62 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load i64, i64* @jiffies, align 8
  %65 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %66 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IPSET_GC_PERIOD(i32 %67)
  %69 = load i32, i32* @HZ, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %64, %71
  %73 = load %struct.mtype*, %struct.mtype** %3, align 8
  %74 = getelementptr inbounds %struct.mtype, %struct.mtype* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.mtype*, %struct.mtype** %3, align 8
  %77 = getelementptr inbounds %struct.mtype, %struct.mtype* %76, i32 0, i32 1
  %78 = call i32 @add_timer(%struct.TYPE_2__* %77)
  ret void
}

declare dso_local %struct.mtype* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @mtype_gc_test(i64, %struct.mtype*, i32) #1

declare dso_local i8* @get_ext(%struct.ip_set*, %struct.mtype*, i64) #1

declare dso_local i64 @ip_set_timeout_expired(i32) #1

declare dso_local i32 @ext_timeout(i8*, %struct.ip_set*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @ip_set_ext_destroy(%struct.ip_set*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
