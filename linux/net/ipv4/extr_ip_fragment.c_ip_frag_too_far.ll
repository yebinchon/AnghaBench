; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_too_far.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_too_far.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq = type { i32, %struct.TYPE_4__, %struct.inet_peer* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inet_peer = type { i32 }

@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq*)* @ip_frag_too_far to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_frag_too_far(%struct.ipq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipq*, align 8
  %4 = alloca %struct.inet_peer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipq* %0, %struct.ipq** %3, align 8
  %9 = load %struct.ipq*, %struct.ipq** %3, align 8
  %10 = getelementptr inbounds %struct.ipq, %struct.ipq* %9, i32 0, i32 2
  %11 = load %struct.inet_peer*, %struct.inet_peer** %10, align 8
  store %struct.inet_peer* %11, %struct.inet_peer** %4, align 8
  %12 = load %struct.ipq*, %struct.ipq** %3, align 8
  %13 = getelementptr inbounds %struct.ipq, %struct.ipq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %19 = icmp ne %struct.inet_peer* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %61

24:                                               ; preds = %20
  %25 = load %struct.ipq*, %struct.ipq** %3, align 8
  %26 = getelementptr inbounds %struct.ipq, %struct.ipq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %29 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc_return(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ipq*, %struct.ipq** %3, align 8
  %33 = getelementptr inbounds %struct.ipq, %struct.ipq* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ipq*, %struct.ipq** %3, align 8
  %35 = getelementptr inbounds %struct.ipq, %struct.ipq* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp ugt i32 %42, %43
  br label %45

45:                                               ; preds = %39, %24
  %46 = phi i1 [ false, %24 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.ipq*, %struct.ipq** %3, align 8
  %52 = getelementptr inbounds %struct.ipq, %struct.ipq* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %58 = call i32 @__IP_INC_STATS(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @__IP_INC_STATS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
