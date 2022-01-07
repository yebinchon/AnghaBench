; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_try_load_pcap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_try_load_pcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_filehdr = type { i64 }
%struct.stat = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@pcap_fd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot open pcap [%s]!\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@CMD_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot fstat pcap file!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"not a regular pcap file, duh!\0A\00", align 1
@pcap_map_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"pcap file too small!\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_LOCKED = common dso_local global i32 0, align 4
@pcap_ptr_va_start = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"mmap of file failed!\00", align 1
@TCPDUMP_MAGIC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"wrong pcap magic!\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @try_load_pcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_load_pcap(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pcap_filehdr*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i64 @open(i8* %7, i32 %8)
  store i64 %9, i64* @pcap_fd, align 8
  %10 = load i64, i64* @pcap_fd, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @CMD_ERR, align 4
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load i64, i64* @pcap_fd, align 8
  %19 = call i32 @fstat(i64 %18, %struct.stat* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @CMD_ERR, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISREG(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @CMD_ERR, align 4
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @pcap_map_size, align 4
  %36 = load i32, i32* @pcap_map_size, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ule i64 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @CMD_ERR, align 4
  store i32 %41, i32* %2, align 4
  br label %71

42:                                               ; preds = %33
  %43 = load i32, i32* @pcap_map_size, align 4
  %44 = load i32, i32* @PROT_READ, align 4
  %45 = load i32, i32* @MAP_SHARED, align 4
  %46 = load i32, i32* @MAP_LOCKED, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* @pcap_fd, align 8
  %49 = call i64 @mmap(i32* null, i32 %43, i32 %44, i32 %47, i64 %48, i32 0)
  store i64 %49, i64* @pcap_ptr_va_start, align 8
  %50 = load i64, i64* @pcap_ptr_va_start, align 8
  %51 = load i64, i64* @MAP_FAILED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @CMD_ERR, align 4
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %42
  %57 = load i64, i64* @pcap_ptr_va_start, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to %struct.pcap_filehdr*
  store %struct.pcap_filehdr* %59, %struct.pcap_filehdr** %4, align 8
  %60 = load %struct.pcap_filehdr*, %struct.pcap_filehdr** %4, align 8
  %61 = getelementptr inbounds %struct.pcap_filehdr, %struct.pcap_filehdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCPDUMP_MAGIC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @CMD_ERR, align 4
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %56
  %69 = call i32 (...) @pcap_reset_pkt()
  %70 = load i32, i32* @CMD_OK, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %65, %53, %39, %30, %22, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @rl_printf(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @pcap_reset_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
