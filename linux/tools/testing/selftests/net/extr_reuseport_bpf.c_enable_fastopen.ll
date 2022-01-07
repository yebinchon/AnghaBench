; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_enable_fastopen.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_enable_fastopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"/proc/sys/net/ipv4/tcp_fastopen\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to open tcp_fastopen sysctl\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to read tcp_fastopen sysctl\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Unable to open tcp_fastopen sysctl for writing\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to write tcp_fastopen sysctl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_fastopen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = call i32 @open(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %6, i32* %1, align 4
  store i32 3, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @error(i32 1, i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* %1, align 4
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %15 = call i64 @read(i32 %13, i8* %14, i32 16)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @error(i32 1, i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @close(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %20
  %31 = load i32, i32* @O_RDWR, align 4
  %32 = call i32 @open(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @error(i32 1, i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @snprintf(i8* %42, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %1, align 4
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @write(i32 %45, i8* %46, i32 %47)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @error(i32 1, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @close(i32 %54)
  br label %56

56:                                               ; preds = %53, %20
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
