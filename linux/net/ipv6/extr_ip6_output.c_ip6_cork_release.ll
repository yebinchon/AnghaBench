; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_cork_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_cork_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_cork_full = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.inet6_cork = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@IPCORK_ALLFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_cork_full*, %struct.inet6_cork*)* @ip6_cork_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_cork_release(%struct.inet_cork_full* %0, %struct.inet6_cork* %1) #0 {
  %3 = alloca %struct.inet_cork_full*, align 8
  %4 = alloca %struct.inet6_cork*, align 8
  store %struct.inet_cork_full* %0, %struct.inet_cork_full** %3, align 8
  store %struct.inet6_cork* %1, %struct.inet6_cork** %4, align 8
  %5 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %6 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %11 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @kfree(%struct.TYPE_4__* %14)
  %16 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %17 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @kfree(%struct.TYPE_4__* %20)
  %22 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %23 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @kfree(%struct.TYPE_4__* %26)
  %28 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %29 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @kfree(%struct.TYPE_4__* %32)
  %34 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %35 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @kfree(%struct.TYPE_4__* %36)
  %38 = load %struct.inet6_cork*, %struct.inet6_cork** %4, align 8
  %39 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %38, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %39, align 8
  br label %40

40:                                               ; preds = %9, %2
  %41 = load %struct.inet_cork_full*, %struct.inet_cork_full** %3, align 8
  %42 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.inet_cork_full*, %struct.inet_cork_full** %3, align 8
  %48 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dst_release(i32* %50)
  %52 = load %struct.inet_cork_full*, %struct.inet_cork_full** %3, align 8
  %53 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @IPCORK_ALLFRAG, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.inet_cork_full*, %struct.inet_cork_full** %3, align 8
  %58 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %46, %40
  %63 = load %struct.inet_cork_full*, %struct.inet_cork_full** %3, align 8
  %64 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %63, i32 0, i32 0
  %65 = call i32 @memset(i32* %64, i32 0, i32 4)
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
