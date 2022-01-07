; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_verify_sk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_verify_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rtt_storage = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to read socket storage\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: unexpected bpf_tcp_sock.invoked %d != %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: unexpected bpf_tcp_sock.dsack_dups %d != %d\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: unexpected bpf_tcp_sock.delivered %d != %d\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"%s: unexpected bpf_tcp_sock.delivered_ce %d != %d\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s: unexpected bpf_tcp_sock.icsk_retransmits %d != %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32, i32, i32, i32)* @verify_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_sk(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.tcp_rtt_storage, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @bpf_map_lookup_elem(i32 %20, i32* %11, %struct.tcp_rtt_storage* %19)
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @CHECK_FAIL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %95

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36, i32 %37)
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @log_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 %49, i32 %50)
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %46, %41
  %55 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %62, i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %73, i32 %75, i32 %76)
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %19, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @log_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %86, i32 %88, i32 %89)
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %26
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, %struct.tcp_rtt_storage*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @log_err(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
