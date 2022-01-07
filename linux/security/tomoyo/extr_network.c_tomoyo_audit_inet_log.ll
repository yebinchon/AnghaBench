; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_audit_inet_log.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_audit_inet_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32* }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_request_info*)* @tomoyo_audit_inet_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_audit_inet_log(%struct.tomoyo_request_info* %0) #0 {
  %2 = alloca %struct.tomoyo_request_info*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %2, align 8
  %6 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %7 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %12 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.in6_addr*
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.in6_addr*
  %23 = call i32 @tomoyo_print_ipv6(i8* %18, i32 128, %struct.in6_addr* %20, %struct.in6_addr* %22)
  br label %29

24:                                               ; preds = %1
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @tomoyo_print_ipv4(i8* %25, i32 128, i32* %26, i32* %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 128, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %41 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @snprintf(i8* %35, i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %47 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %48 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %53 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %58 = call i32 @tomoyo_audit_net_log(%struct.tomoyo_request_info* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56, i8* %57)
  ret i32 %58
}

declare dso_local i32 @tomoyo_print_ipv6(i8*, i32, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @tomoyo_print_ipv4(i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @tomoyo_audit_net_log(%struct.tomoyo_request_info*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
