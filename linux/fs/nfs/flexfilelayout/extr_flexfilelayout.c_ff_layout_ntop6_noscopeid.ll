; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_ntop6_noscopeid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_ntop6_noscopeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }
%struct.in6_addr = type { %struct.in6_addr* }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"::ffff:%pI4\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sockaddr*, i8*, i32)* @ff_layout_ntop6_noscopeid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ff_layout_ntop6_noscopeid(%struct.sockaddr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %11, %struct.sockaddr_in6** %8, align 8
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 0
  store %struct.in6_addr* %13, %struct.in6_addr** %9, align 8
  %14 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %15 = call i64 @ipv6_addr_any(%struct.in6_addr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %20, i64* %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %23 = call i64 @ipv6_addr_loopback(%struct.in6_addr* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %28, i64* %4, align 8
  br label %46

29:                                               ; preds = %21
  %30 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %31 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i32 0, i32 0
  %38 = load %struct.in6_addr*, %struct.in6_addr** %37, align 8
  %39 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %38, i64 3
  %40 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.in6_addr* %39)
  store i64 %40, i64* %4, align 8
  br label %46

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %45 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.in6_addr* %44)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %41, %33, %25, %17
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @ipv6_addr_loopback(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
