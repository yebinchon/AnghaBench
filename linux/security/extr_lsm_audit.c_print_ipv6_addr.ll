; ModuleID = '/home/carl/AnghaBench/linux/security/extr_lsm_audit.c_print_ipv6_addr.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_lsm_audit.c_print_ipv6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" %s=%pI6c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, %struct.in6_addr*, i64, i8*, i8*)* @print_ipv6_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ipv6_addr(%struct.audit_buffer* %0, %struct.in6_addr* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.audit_buffer*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %12 = call i32 @ipv6_addr_any(%struct.in6_addr* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %18 = call i32 @audit_log_format(%struct.audit_buffer* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16, %struct.in6_addr* %17)
  br label %19

19:                                               ; preds = %14, %5
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call %struct.in6_addr* @ntohs(i64 %25)
  %27 = call i32 @audit_log_format(%struct.audit_buffer* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %24, %struct.in6_addr* %26)
  br label %28

28:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, %struct.in6_addr*) #1

declare dso_local %struct.in6_addr* @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
