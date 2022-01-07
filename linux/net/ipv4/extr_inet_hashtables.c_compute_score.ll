; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i16, i64, i64, i32, i32 }
%struct.net = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i16, i64, i32, i32, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i16 zeroext %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.net* %1, %struct.net** %10, align 8
  store i16 %2, i16* %11, align 2
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load %struct.net*, %struct.net** %10, align 8
  %20 = call i64 @net_eq(i32 %18, %struct.net* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %7
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %11, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %22
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = call i32 @ipv6_only_sock(%struct.sock* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %69, label %34

34:                                               ; preds = %30
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %8, align 4
  br label %71

41:                                               ; preds = %34
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = load %struct.sock*, %struct.sock** %9, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @inet_sk_bound_dev_eq(%struct.net* %42, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 -1, i32* %8, align 4
  br label %71

51:                                               ; preds = %41
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PF_INET, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 1
  store i32 %58, i32* %16, align 4
  %59 = load %struct.sock*, %struct.sock** %9, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @READ_ONCE(i32 %61)
  %63 = call i64 (...) @raw_smp_processor_id()
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %65, %51
  br label %69

69:                                               ; preds = %68, %30, %22, %7
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %50, %40
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_only_sock(%struct.sock*) #1

declare dso_local i32 @inet_sk_bound_dev_eq(%struct.net*, i32, i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
