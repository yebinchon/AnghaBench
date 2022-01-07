; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_parse_command_line.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_parse_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opterr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Frtli:q:psSNn:czf:mu\00", align 1
@long_options = common dso_local global i32 0, align 4
@BENCH_RXDROP = common dso_local global i32 0, align 4
@opt_bench = common dso_local global i32 0, align 4
@BENCH_TXONLY = common dso_local global i32 0, align 4
@BENCH_L2FWD = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@opt_if = common dso_local global i8* null, align 8
@opt_queue = common dso_local global i8* null, align 8
@opt_poll = common dso_local global i32 0, align 4
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@opt_xdp_flags = common dso_local global i32 0, align 4
@XDP_COPY = common dso_local global i32 0, align 4
@opt_xdp_bind_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@opt_interval = common dso_local global i8* null, align 8
@XDP_ZEROCOPY = common dso_local global i32 0, align 4
@XDP_UMEM_UNALIGNED_CHUNK_FLAG = common dso_local global i32 0, align 4
@opt_umem_flags = common dso_local global i32 0, align 4
@opt_unaligned_chunks = common dso_local global i32 0, align 4
@MAP_HUGETLB = common dso_local global i32 0, align 4
@opt_mmap_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@opt_xsk_frame_size = common dso_local global i32 0, align 4
@opt_need_wakeup = common dso_local global i32 0, align 4
@XDP_USE_NEED_WAKEUP = common dso_local global i32 0, align 4
@opt_ifindex = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ERROR: interface \22%s\22 does not exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"--frame-size=%d is not a power of two\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_command_line(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* @opterr, align 8
  br label %7

7:                                                ; preds = %76, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* @long_options, align 4
  %11 = call i32 @getopt_long(i32 %8, i8** %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %77

15:                                               ; preds = %7
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %70 [
    i32 114, label %17
    i32 116, label %19
    i32 108, label %21
    i32 105, label %23
    i32 113, label %25
    i32 112, label %28
    i32 83, label %29
    i32 78, label %36
    i32 110, label %40
    i32 122, label %43
    i32 99, label %47
    i32 117, label %51
    i32 70, label %56
    i32 102, label %61
    i32 109, label %65
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @BENCH_RXDROP, align 4
  store i32 %18, i32* @opt_bench, align 4
  br label %76

19:                                               ; preds = %15
  %20 = load i32, i32* @BENCH_TXONLY, align 4
  store i32 %20, i32* @opt_bench, align 4
  br label %76

21:                                               ; preds = %15
  %22 = load i32, i32* @BENCH_L2FWD, align 4
  store i32 %22, i32* @opt_bench, align 4
  br label %76

23:                                               ; preds = %15
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @opt_if, align 8
  br label %76

25:                                               ; preds = %15
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  store i8* %27, i8** @opt_queue, align 8
  br label %76

28:                                               ; preds = %15
  store i32 1, i32* @opt_poll, align 4
  br label %76

29:                                               ; preds = %15
  %30 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %31 = load i32, i32* @opt_xdp_flags, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @opt_xdp_flags, align 4
  %33 = load i32, i32* @XDP_COPY, align 4
  %34 = load i32, i32* @opt_xdp_bind_flags, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @opt_xdp_bind_flags, align 4
  br label %76

36:                                               ; preds = %15
  %37 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %38 = load i32, i32* @opt_xdp_flags, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @opt_xdp_flags, align 4
  br label %76

40:                                               ; preds = %15
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @atoi(i8* %41)
  store i8* %42, i8** @opt_interval, align 8
  br label %76

43:                                               ; preds = %15
  %44 = load i32, i32* @XDP_ZEROCOPY, align 4
  %45 = load i32, i32* @opt_xdp_bind_flags, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @opt_xdp_bind_flags, align 4
  br label %76

47:                                               ; preds = %15
  %48 = load i32, i32* @XDP_COPY, align 4
  %49 = load i32, i32* @opt_xdp_bind_flags, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @opt_xdp_bind_flags, align 4
  br label %76

51:                                               ; preds = %15
  %52 = load i32, i32* @XDP_UMEM_UNALIGNED_CHUNK_FLAG, align 4
  %53 = load i32, i32* @opt_umem_flags, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @opt_umem_flags, align 4
  store i32 1, i32* @opt_unaligned_chunks, align 4
  %55 = load i32, i32* @MAP_HUGETLB, align 4
  store i32 %55, i32* @opt_mmap_flags, align 4
  br label %76

56:                                               ; preds = %15
  %57 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* @opt_xdp_flags, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* @opt_xdp_flags, align 4
  br label %76

61:                                               ; preds = %15
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i8* @atoi(i8* %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* @opt_xsk_frame_size, align 4
  br label %65

65:                                               ; preds = %15, %61
  store i32 0, i32* @opt_need_wakeup, align 4
  %66 = load i32, i32* @XDP_USE_NEED_WAKEUP, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @opt_xdp_bind_flags, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @opt_xdp_bind_flags, align 4
  br label %76

70:                                               ; preds = %15
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @basename(i8* %73)
  %75 = call i32 @usage(i32 %74)
  br label %76

76:                                               ; preds = %70, %65, %56, %51, %47, %43, %40, %36, %29, %28, %25, %23, %21, %19, %17
  br label %7

77:                                               ; preds = %14
  %78 = load i8*, i8** @opt_if, align 8
  %79 = call i32 @if_nametoindex(i8* %78)
  store i32 %79, i32* @opt_ifindex, align 4
  %80 = load i32, i32* @opt_ifindex, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8*, i8** @opt_if, align 8
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load i8**, i8*** %4, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @basename(i8* %88)
  %90 = call i32 @usage(i32 %89)
  br label %91

91:                                               ; preds = %82, %77
  %92 = load i32, i32* @opt_xsk_frame_size, align 4
  %93 = load i32, i32* @opt_xsk_frame_size, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i32, i32* @opt_unaligned_chunks, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @stderr, align 4
  %102 = load i32, i32* @opt_xsk_frame_size, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i8**, i8*** %4, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @basename(i8* %106)
  %108 = call i32 @usage(i32 %107)
  br label %109

109:                                              ; preds = %100, %97, %91
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
