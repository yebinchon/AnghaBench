; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i64, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32)* @cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_addr(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %28, %struct.sockaddr_in** %8, align 8
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %30 = bitcast %struct.sockaddr_storage* %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %9, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38, %26
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br label %51

51:                                               ; preds = %41, %38
  %52 = phi i1 [ false, %38 ], [ %50, %41 ]
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %90

55:                                               ; preds = %20
  %56 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %57 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AF_INET6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %63 = bitcast %struct.sockaddr_storage* %62 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %63, %struct.sockaddr_in6** %10, align 8
  %64 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %65 = bitcast %struct.sockaddr_storage* %64 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %65, %struct.sockaddr_in6** %11, align 8
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73, %61
  %77 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %77, i32 0, i32 1
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 1
  %81 = call i32 @memcmp(i32* %78, i32* %80, i32 4)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %76, %73
  %85 = phi i1 [ false, %73 ], [ %83, %76 ]
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %90

88:                                               ; preds = %55
  br label %89

89:                                               ; preds = %88
  store i32 -1, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %84, %51, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
