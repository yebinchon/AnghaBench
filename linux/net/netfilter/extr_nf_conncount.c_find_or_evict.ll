; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conncount.c_find_or_evict.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conncount.c_find_or_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.net = type { i32 }
%struct.nf_conncount_list = type { i32 }
%struct.nf_conncount_tuple = type { i64, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conntrack_tuple_hash* (%struct.net*, %struct.nf_conncount_list*, %struct.nf_conncount_tuple*)* @find_or_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conntrack_tuple_hash* @find_or_evict(%struct.net* %0, %struct.nf_conncount_list* %1, %struct.nf_conncount_tuple* %2) #0 {
  %4 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nf_conncount_list*, align 8
  %7 = alloca %struct.nf_conncount_tuple*, align 8
  %8 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nf_conncount_list* %1, %struct.nf_conncount_list** %6, align 8
  store %struct.nf_conncount_tuple* %2, %struct.nf_conncount_tuple** %7, align 8
  %13 = call i32 (...) @raw_smp_processor_id()
  store i32 %13, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %7, align 8
  %16 = getelementptr inbounds %struct.nf_conncount_tuple, %struct.nf_conncount_tuple* %15, i32 0, i32 3
  %17 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %7, align 8
  %18 = getelementptr inbounds %struct.nf_conncount_tuple, %struct.nf_conncount_tuple* %17, i32 0, i32 2
  %19 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %14, i32* %16, i32* %18)
  store %struct.nf_conntrack_tuple_hash* %19, %struct.nf_conntrack_tuple_hash** %8, align 8
  %20 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %8, align 8
  %21 = icmp ne %struct.nf_conntrack_tuple_hash* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %8, align 8
  store %struct.nf_conntrack_tuple_hash* %23, %struct.nf_conntrack_tuple_hash** %4, align 8
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %7, align 8
  %26 = getelementptr inbounds %struct.nf_conncount_tuple, %struct.nf_conncount_tuple* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %7, align 8
  %36 = getelementptr inbounds %struct.nf_conncount_tuple, %struct.nf_conncount_tuple* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %50

43:                                               ; preds = %40, %24
  %44 = load %struct.nf_conncount_list*, %struct.nf_conncount_list** %6, align 8
  %45 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %7, align 8
  %46 = call i32 @conn_free(%struct.nf_conncount_list* %44, %struct.nf_conncount_tuple* %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.nf_conntrack_tuple_hash* @ERR_PTR(i32 %48)
  store %struct.nf_conntrack_tuple_hash* %49, %struct.nf_conntrack_tuple_hash** %4, align 8
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.nf_conntrack_tuple_hash* @ERR_PTR(i32 %52)
  store %struct.nf_conntrack_tuple_hash* %53, %struct.nf_conntrack_tuple_hash** %4, align 8
  br label %54

54:                                               ; preds = %50, %43, %22
  %55 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %4, align 8
  ret %struct.nf_conntrack_tuple_hash* %55
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, i32*, i32*) #1

declare dso_local i32 @conn_free(%struct.nf_conncount_list*, %struct.nf_conncount_tuple*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
