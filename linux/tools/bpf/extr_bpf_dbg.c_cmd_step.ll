; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_step.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pcap_pkthdr = type { i32, i32 }

@CMD_ERR = common dso_local global i32 0, align 4
@bpf_image = common dso_local global i32 0, align 4
@bpf_prog_len = common dso_local global i32 0, align 4
@bpf_curr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"(going back to first packet)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(next packet)\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_step(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pcap_pkthdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @bpf_prog_loaded()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 (...) @pcap_loaded()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @CMD_ERR, align 4
  store i32 %13, i32* %2, align 4
  br label %66

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strtol(i8* %15, i32* null, i32 10)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bpf_restore_regs(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @CMD_ERR, align 4
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = call %struct.pcap_pkthdr* (...) @pcap_curr_pkt()
  store %struct.pcap_pkthdr* %35, %struct.pcap_pkthdr** %4, align 8
  %36 = load i32, i32* @bpf_image, align 4
  %37 = load i32, i32* @bpf_prog_len, align 4
  %38 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %39 = bitcast %struct.pcap_pkthdr* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  %41 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %42 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %45 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @bpf_run_stepping(i32 %36, i32 %37, i32* %40, i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bpf_curr, i32 0, i32 0), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51, %34
  %55 = call i32 (...) @bpf_reset()
  %56 = call i32 (...) @pcap_next_pkt()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = call i32 @rl_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 (...) @pcap_reset_pkt()
  br label %63

61:                                               ; preds = %54
  %62 = call i32 @rl_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* @CMD_OK, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %31, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @bpf_prog_loaded(...) #1

declare dso_local i32 @pcap_loaded(...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bpf_restore_regs(i32) #1

declare dso_local %struct.pcap_pkthdr* @pcap_curr_pkt(...) #1

declare dso_local i32 @bpf_run_stepping(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @bpf_reset(...) #1

declare dso_local i32 @pcap_next_pkt(...) #1

declare dso_local i32 @rl_printf(i8*) #1

declare dso_local i32 @pcap_reset_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
