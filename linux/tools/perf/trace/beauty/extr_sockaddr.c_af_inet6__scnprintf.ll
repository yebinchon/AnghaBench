; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_sockaddr.c_af_inet6__scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_sockaddr.c_af_inet6__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c", port: %d, addr: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c", flowinfo: %lu\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c", scope_id: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sockaddr*, i8*, i64)* @af_inet6__scnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @af_inet6__scnprintf(%struct.sockaddr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %12, %struct.sockaddr_in6** %7, align 8
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntohl(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ntohs(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 1
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %30 = call i32 @inet_ntop(i32 %26, i32* %28, i8* %29, i32 512)
  %31 = call i64 (i8*, i64, i8*, i64, ...) @scnprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %3
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %8, align 8
  %42 = call i64 (i8*, i64, i8*, i64, ...) @scnprintf(i8* %37, i64 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %34, %3
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 (i8*, i64, i8*, i64, ...) @scnprintf(i8* %53, i64 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %50, %45
  %64 = load i64, i64* %10, align 8
  ret i64 %64
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
