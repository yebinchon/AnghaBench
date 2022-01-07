; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_runnable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_runnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i64, i32 }
%struct.sock_fprog = type { i32, %struct.sock_filter* }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot open socket!\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ATTACH_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"program not allowed to run by kernel!\0A\00", align 1
@BPF_LD = common dso_local global i64 0, align 8
@SKF_AD_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"extensions currently not supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_filter*, i32)* @bpf_runnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_runnable(%struct.sock_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock_fprog, align 8
  store %struct.sock_filter* %0, %struct.sock_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %9, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %9, i32 0, i32 1
  %13 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  store %struct.sock_filter* %13, %struct.sock_filter** %12, align 8
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @rl_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SOL_SOCKET, align 4
  %24 = load i32, i32* @SO_ATTACH_FILTER, align 4
  %25 = call i32 @setsockopt(i32 %22, i32 %23, i32 %24, %struct.sock_fprog* %9, i32 16)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @rl_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

32:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %38, i64 %40
  %42 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @BPF_CLASS(i32 %43)
  %45 = load i64, i64* @BPF_LD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %48, i64 %50
  %52 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SKF_AD_OFF, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @rl_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

58:                                               ; preds = %47, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %33

62:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56, %30, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @rl_printf(i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.sock_fprog*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @BPF_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
