; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.xsk_umem_info = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ERROR: setrlimit(RLIMIT_MEMLOCK) \22%s\22\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@NUM_FRAMES = common dso_local global i32 0, align 4
@opt_xsk_frame_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@opt_mmap_flags = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ERROR: mmap failed\0A\00", align 1
@xsks = common dso_local global i32* null, align 8
@num_socks = common dso_local global i32 0, align 4
@opt_bench = common dso_local global i64 0, align 8
@BENCH_TXONLY = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@poller = common dso_local global i32 0, align 4
@prev_time = common dso_local global i32 0, align 4
@BENCH_RXDROP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca %struct.xsk_umem_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %13 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %15 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @parse_command_line(i32 %16, i8** %17)
  %19 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %20 = call i64 @setrlimit(i32 %19, %struct.rlimit* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i8* @strerror(i32 %24)
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %2
  %30 = load i32, i32* @NUM_FRAMES, align 4
  %31 = load i32, i32* @opt_xsk_frame_size, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* @PROT_READ, align 4
  %34 = load i32, i32* @PROT_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MAP_PRIVATE, align 4
  %37 = load i32, i32* @MAP_ANONYMOUS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @opt_mmap_flags, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @mmap(i32* null, i32 %32, i32 %35, i32 %40, i32 -1, i32 0)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %29
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @NUM_FRAMES, align 4
  %52 = load i32, i32* @opt_xsk_frame_size, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call %struct.xsk_umem_info* @xsk_configure_umem(i8* %50, i32 %53)
  store %struct.xsk_umem_info* %54, %struct.xsk_umem_info** %7, align 8
  %55 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %7, align 8
  %56 = call i32 @xsk_configure_socket(%struct.xsk_umem_info* %55)
  %57 = load i32*, i32** @xsks, align 8
  %58 = load i32, i32* @num_socks, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @num_socks, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load i64, i64* @opt_bench, align 8
  %63 = load i64, i64* @BENCH_TXONLY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %76, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @NUM_FRAMES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @opt_xsk_frame_size, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @gen_eth_frame(%struct.xsk_umem_info* %71, i32 %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %66

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %49
  %81 = load i32, i32* @SIGINT, align 4
  %82 = load i32, i32* @int_exit, align 4
  %83 = call i32 @signal(i32 %81, i32 %82)
  %84 = load i32, i32* @SIGTERM, align 4
  %85 = load i32, i32* @int_exit, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  %87 = load i32, i32* @SIGABRT, align 4
  %88 = load i32, i32* @int_exit, align 4
  %89 = call i32 @signal(i32 %87, i32 %88)
  %90 = load i32, i32* @LC_ALL, align 4
  %91 = call i32 @setlocale(i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @poller, align 4
  %93 = call i32 @pthread_create(i32* %8, i32* null, i32 %92, i32* null)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @exit_with_error(i32 %97)
  br label %99

99:                                               ; preds = %96, %80
  %100 = call i32 (...) @get_nsecs()
  store i32 %100, i32* @prev_time, align 4
  %101 = load i64, i64* @opt_bench, align 8
  %102 = load i64, i64* @BENCH_RXDROP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (...) @rx_drop_all()
  br label %115

106:                                              ; preds = %99
  %107 = load i64, i64* @opt_bench, align 8
  %108 = load i64, i64* @BENCH_TXONLY, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (...) @tx_only_all()
  br label %114

112:                                              ; preds = %106
  %113 = call i32 (...) @l2fwd_all()
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %104
  ret i32 0
}

declare dso_local i32 @parse_command_line(i32, i8**) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.xsk_umem_info* @xsk_configure_umem(i8*, i32) #1

declare dso_local i32 @xsk_configure_socket(%struct.xsk_umem_info*) #1

declare dso_local i32 @gen_eth_frame(%struct.xsk_umem_info*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @exit_with_error(i32) #1

declare dso_local i32 @get_nsecs(...) #1

declare dso_local i32 @rx_drop_all(...) #1

declare dso_local i32 @tx_only_all(...) #1

declare dso_local i32 @l2fwd_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
