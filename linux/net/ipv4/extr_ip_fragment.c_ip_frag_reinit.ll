; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32, i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq*)* @ip_frag_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_frag_reinit(%struct.ipq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipq*, align 8
  %4 = alloca i32, align 4
  store %struct.ipq* %0, %struct.ipq** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ipq*, %struct.ipq** %3, align 8
  %6 = getelementptr inbounds %struct.ipq, %struct.ipq* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.ipq*, %struct.ipq** %3, align 8
  %10 = getelementptr inbounds %struct.ipq, %struct.ipq* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %8, %14
  %16 = call i32 @mod_timer(i32* %7, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.ipq*, %struct.ipq** %3, align 8
  %20 = getelementptr inbounds %struct.ipq, %struct.ipq* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  %22 = call i32 @refcount_inc(i32* %21)
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.ipq*, %struct.ipq** %3, align 8
  %27 = getelementptr inbounds %struct.ipq, %struct.ipq* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = call i32 @inet_frag_rbtree_purge(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.ipq*, %struct.ipq** %3, align 8
  %31 = getelementptr inbounds %struct.ipq, %struct.ipq* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @sub_frag_mem_limit(%struct.TYPE_4__* %33, i32 %34)
  %36 = load %struct.ipq*, %struct.ipq** %3, align 8
  %37 = getelementptr inbounds %struct.ipq, %struct.ipq* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.ipq*, %struct.ipq** %3, align 8
  %40 = getelementptr inbounds %struct.ipq, %struct.ipq* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.ipq*, %struct.ipq** %3, align 8
  %43 = getelementptr inbounds %struct.ipq, %struct.ipq* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @RB_ROOT, align 4
  %46 = load %struct.ipq*, %struct.ipq** %3, align 8
  %47 = getelementptr inbounds %struct.ipq, %struct.ipq* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.ipq*, %struct.ipq** %3, align 8
  %50 = getelementptr inbounds %struct.ipq, %struct.ipq* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.ipq*, %struct.ipq** %3, align 8
  %53 = getelementptr inbounds %struct.ipq, %struct.ipq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.ipq*, %struct.ipq** %3, align 8
  %56 = getelementptr inbounds %struct.ipq, %struct.ipq* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.ipq*, %struct.ipq** %3, align 8
  %58 = getelementptr inbounds %struct.ipq, %struct.ipq* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %25, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @inet_frag_rbtree_purge(i32*) #1

declare dso_local i32 @sub_frag_mem_limit(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
