; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32 }

@cmd_run.pass = internal global i64 0, align 8
@cmd_run.fail = internal global i64 0, align 8
@CMD_ERR = common dso_local global i32 0, align 4
@bpf_image = common dso_local global i32 0, align 4
@bpf_prog_len = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"bpf passes:%u fails:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_run(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcap_pkthdr*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @bpf_prog_loaded()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 (...) @pcap_loaded()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @CMD_ERR, align 4
  store i32 %15, i32* %2, align 4
  br label %84

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strtol(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %21
  br label %27

27:                                               ; preds = %75, %26
  %28 = call %struct.pcap_pkthdr* (...) @pcap_curr_pkt()
  store %struct.pcap_pkthdr* %28, %struct.pcap_pkthdr** %7, align 8
  %29 = load i32, i32* @bpf_image, align 4
  %30 = load i32, i32* @bpf_prog_len, align 4
  %31 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %7, align 8
  %32 = bitcast %struct.pcap_pkthdr* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %7, align 8
  %35 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %7, align 8
  %38 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bpf_run_all(i32 %29, i32 %30, i32* %33, i32 %36, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i64, i64* @cmd_run.pass, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @cmd_run.pass, align 8
  br label %55

46:                                               ; preds = %27
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @cmd_run.fail, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @cmd_run.fail, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @CMD_OK, align 4
  store i32 %53, i32* %2, align 4
  br label %84

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %43
  %56 = call i32 (...) @bpf_reset()
  br label %57

57:                                               ; preds = %55
  %58 = call i64 (...) @pcap_next_pkt()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i1 [ false, %63 ], [ %70, %66 ]
  br label %73

73:                                               ; preds = %71, %60
  %74 = phi i1 [ true, %60 ], [ %72, %71 ]
  br label %75

75:                                               ; preds = %73, %57
  %76 = phi i1 [ false, %57 ], [ %74, %73 ]
  br i1 %76, label %27, label %77

77:                                               ; preds = %75
  %78 = load i64, i64* @cmd_run.pass, align 8
  %79 = load i64, i64* @cmd_run.fail, align 8
  %80 = call i32 @rl_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %79)
  %81 = call i32 (...) @pcap_reset_pkt()
  %82 = call i32 (...) @bpf_reset()
  store i64 0, i64* @cmd_run.fail, align 8
  store i64 0, i64* @cmd_run.pass, align 8
  %83 = load i32, i32* @CMD_OK, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %52, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @bpf_prog_loaded(...) #1

declare dso_local i32 @pcap_loaded(...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.pcap_pkthdr* @pcap_curr_pkt(...) #1

declare dso_local i32 @bpf_run_all(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @bpf_reset(...) #1

declare dso_local i64 @pcap_next_pkt(...) #1

declare dso_local i32 @rl_printf(i8*, i64, i64) #1

declare dso_local i32 @pcap_reset_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
