; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_perf_event_attr_fprintf.c_perf_event_attr__fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_perf_event_attr_fprintf.c_perf_event_attr__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@p_unsigned = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@p_hex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"{ sample_period, sample_freq }\00", align 1
@sample_period = common dso_local global i32 0, align 4
@sample_type = common dso_local global i32 0, align 4
@p_sample_type = common dso_local global i32 0, align 4
@read_format = common dso_local global i32 0, align 4
@p_read_format = common dso_local global i32 0, align 4
@disabled = common dso_local global i32 0, align 4
@inherit = common dso_local global i32 0, align 4
@pinned = common dso_local global i32 0, align 4
@exclusive = common dso_local global i32 0, align 4
@exclude_user = common dso_local global i32 0, align 4
@exclude_kernel = common dso_local global i32 0, align 4
@exclude_hv = common dso_local global i32 0, align 4
@exclude_idle = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@comm = common dso_local global i32 0, align 4
@freq = common dso_local global i32 0, align 4
@inherit_stat = common dso_local global i32 0, align 4
@enable_on_exec = common dso_local global i32 0, align 4
@task = common dso_local global i32 0, align 4
@watermark = common dso_local global i32 0, align 4
@precise_ip = common dso_local global i32 0, align 4
@mmap_data = common dso_local global i32 0, align 4
@sample_id_all = common dso_local global i32 0, align 4
@exclude_host = common dso_local global i32 0, align 4
@exclude_guest = common dso_local global i32 0, align 4
@exclude_callchain_kernel = common dso_local global i32 0, align 4
@exclude_callchain_user = common dso_local global i32 0, align 4
@mmap2 = common dso_local global i32 0, align 4
@comm_exec = common dso_local global i32 0, align 4
@use_clockid = common dso_local global i32 0, align 4
@context_switch = common dso_local global i32 0, align 4
@write_backward = common dso_local global i32 0, align 4
@namespaces = common dso_local global i32 0, align 4
@ksymbol = common dso_local global i32 0, align 4
@bpf_event = common dso_local global i32 0, align 4
@aux_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"{ wakeup_events, wakeup_watermark }\00", align 1
@wakeup_events = common dso_local global i32 0, align 4
@bp_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"{ bp_addr, config1 }\00", align 1
@bp_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"{ bp_len, config2 }\00", align 1
@bp_len = common dso_local global i32 0, align 4
@branch_sample_type = common dso_local global i32 0, align 4
@p_branch_sample_type = common dso_local global i32 0, align 4
@sample_regs_user = common dso_local global i32 0, align 4
@sample_stack_user = common dso_local global i32 0, align 4
@clockid = common dso_local global i32 0, align 4
@p_signed = common dso_local global i32 0, align 4
@sample_regs_intr = common dso_local global i32 0, align 4
@aux_watermark = common dso_local global i32 0, align 4
@sample_max_stack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event_attr__fprintf(i32* %0, %struct.perf_event_attr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @BUF_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @type, align 4
  %17 = load i32, i32* @p_unsigned, align 4
  %18 = call i32 @PRINT_ATTRf(i32 %16, i32 %17)
  %19 = load i32, i32* @size, align 4
  %20 = load i32, i32* @p_unsigned, align 4
  %21 = call i32 @PRINT_ATTRf(i32 %19, i32 %20)
  %22 = load i32, i32* @config, align 4
  %23 = load i32, i32* @p_hex, align 4
  %24 = call i32 @PRINT_ATTRf(i32 %22, i32 %23)
  %25 = load i32, i32* @sample_period, align 4
  %26 = load i32, i32* @p_unsigned, align 4
  %27 = call i32 @PRINT_ATTRn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @sample_type, align 4
  %29 = load i32, i32* @p_sample_type, align 4
  %30 = call i32 @PRINT_ATTRf(i32 %28, i32 %29)
  %31 = load i32, i32* @read_format, align 4
  %32 = load i32, i32* @p_read_format, align 4
  %33 = call i32 @PRINT_ATTRf(i32 %31, i32 %32)
  %34 = load i32, i32* @disabled, align 4
  %35 = load i32, i32* @p_unsigned, align 4
  %36 = call i32 @PRINT_ATTRf(i32 %34, i32 %35)
  %37 = load i32, i32* @inherit, align 4
  %38 = load i32, i32* @p_unsigned, align 4
  %39 = call i32 @PRINT_ATTRf(i32 %37, i32 %38)
  %40 = load i32, i32* @pinned, align 4
  %41 = load i32, i32* @p_unsigned, align 4
  %42 = call i32 @PRINT_ATTRf(i32 %40, i32 %41)
  %43 = load i32, i32* @exclusive, align 4
  %44 = load i32, i32* @p_unsigned, align 4
  %45 = call i32 @PRINT_ATTRf(i32 %43, i32 %44)
  %46 = load i32, i32* @exclude_user, align 4
  %47 = load i32, i32* @p_unsigned, align 4
  %48 = call i32 @PRINT_ATTRf(i32 %46, i32 %47)
  %49 = load i32, i32* @exclude_kernel, align 4
  %50 = load i32, i32* @p_unsigned, align 4
  %51 = call i32 @PRINT_ATTRf(i32 %49, i32 %50)
  %52 = load i32, i32* @exclude_hv, align 4
  %53 = load i32, i32* @p_unsigned, align 4
  %54 = call i32 @PRINT_ATTRf(i32 %52, i32 %53)
  %55 = load i32, i32* @exclude_idle, align 4
  %56 = load i32, i32* @p_unsigned, align 4
  %57 = call i32 @PRINT_ATTRf(i32 %55, i32 %56)
  %58 = load i32, i32* @mmap, align 4
  %59 = load i32, i32* @p_unsigned, align 4
  %60 = call i32 @PRINT_ATTRf(i32 %58, i32 %59)
  %61 = load i32, i32* @comm, align 4
  %62 = load i32, i32* @p_unsigned, align 4
  %63 = call i32 @PRINT_ATTRf(i32 %61, i32 %62)
  %64 = load i32, i32* @freq, align 4
  %65 = load i32, i32* @p_unsigned, align 4
  %66 = call i32 @PRINT_ATTRf(i32 %64, i32 %65)
  %67 = load i32, i32* @inherit_stat, align 4
  %68 = load i32, i32* @p_unsigned, align 4
  %69 = call i32 @PRINT_ATTRf(i32 %67, i32 %68)
  %70 = load i32, i32* @enable_on_exec, align 4
  %71 = load i32, i32* @p_unsigned, align 4
  %72 = call i32 @PRINT_ATTRf(i32 %70, i32 %71)
  %73 = load i32, i32* @task, align 4
  %74 = load i32, i32* @p_unsigned, align 4
  %75 = call i32 @PRINT_ATTRf(i32 %73, i32 %74)
  %76 = load i32, i32* @watermark, align 4
  %77 = load i32, i32* @p_unsigned, align 4
  %78 = call i32 @PRINT_ATTRf(i32 %76, i32 %77)
  %79 = load i32, i32* @precise_ip, align 4
  %80 = load i32, i32* @p_unsigned, align 4
  %81 = call i32 @PRINT_ATTRf(i32 %79, i32 %80)
  %82 = load i32, i32* @mmap_data, align 4
  %83 = load i32, i32* @p_unsigned, align 4
  %84 = call i32 @PRINT_ATTRf(i32 %82, i32 %83)
  %85 = load i32, i32* @sample_id_all, align 4
  %86 = load i32, i32* @p_unsigned, align 4
  %87 = call i32 @PRINT_ATTRf(i32 %85, i32 %86)
  %88 = load i32, i32* @exclude_host, align 4
  %89 = load i32, i32* @p_unsigned, align 4
  %90 = call i32 @PRINT_ATTRf(i32 %88, i32 %89)
  %91 = load i32, i32* @exclude_guest, align 4
  %92 = load i32, i32* @p_unsigned, align 4
  %93 = call i32 @PRINT_ATTRf(i32 %91, i32 %92)
  %94 = load i32, i32* @exclude_callchain_kernel, align 4
  %95 = load i32, i32* @p_unsigned, align 4
  %96 = call i32 @PRINT_ATTRf(i32 %94, i32 %95)
  %97 = load i32, i32* @exclude_callchain_user, align 4
  %98 = load i32, i32* @p_unsigned, align 4
  %99 = call i32 @PRINT_ATTRf(i32 %97, i32 %98)
  %100 = load i32, i32* @mmap2, align 4
  %101 = load i32, i32* @p_unsigned, align 4
  %102 = call i32 @PRINT_ATTRf(i32 %100, i32 %101)
  %103 = load i32, i32* @comm_exec, align 4
  %104 = load i32, i32* @p_unsigned, align 4
  %105 = call i32 @PRINT_ATTRf(i32 %103, i32 %104)
  %106 = load i32, i32* @use_clockid, align 4
  %107 = load i32, i32* @p_unsigned, align 4
  %108 = call i32 @PRINT_ATTRf(i32 %106, i32 %107)
  %109 = load i32, i32* @context_switch, align 4
  %110 = load i32, i32* @p_unsigned, align 4
  %111 = call i32 @PRINT_ATTRf(i32 %109, i32 %110)
  %112 = load i32, i32* @write_backward, align 4
  %113 = load i32, i32* @p_unsigned, align 4
  %114 = call i32 @PRINT_ATTRf(i32 %112, i32 %113)
  %115 = load i32, i32* @namespaces, align 4
  %116 = load i32, i32* @p_unsigned, align 4
  %117 = call i32 @PRINT_ATTRf(i32 %115, i32 %116)
  %118 = load i32, i32* @ksymbol, align 4
  %119 = load i32, i32* @p_unsigned, align 4
  %120 = call i32 @PRINT_ATTRf(i32 %118, i32 %119)
  %121 = load i32, i32* @bpf_event, align 4
  %122 = load i32, i32* @p_unsigned, align 4
  %123 = call i32 @PRINT_ATTRf(i32 %121, i32 %122)
  %124 = load i32, i32* @aux_output, align 4
  %125 = load i32, i32* @p_unsigned, align 4
  %126 = call i32 @PRINT_ATTRf(i32 %124, i32 %125)
  %127 = load i32, i32* @wakeup_events, align 4
  %128 = load i32, i32* @p_unsigned, align 4
  %129 = call i32 @PRINT_ATTRn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* @bp_type, align 4
  %131 = load i32, i32* @p_unsigned, align 4
  %132 = call i32 @PRINT_ATTRf(i32 %130, i32 %131)
  %133 = load i32, i32* @bp_addr, align 4
  %134 = load i32, i32* @p_hex, align 4
  %135 = call i32 @PRINT_ATTRn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* @bp_len, align 4
  %137 = load i32, i32* @p_hex, align 4
  %138 = call i32 @PRINT_ATTRn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load i32, i32* @branch_sample_type, align 4
  %140 = load i32, i32* @p_branch_sample_type, align 4
  %141 = call i32 @PRINT_ATTRf(i32 %139, i32 %140)
  %142 = load i32, i32* @sample_regs_user, align 4
  %143 = load i32, i32* @p_hex, align 4
  %144 = call i32 @PRINT_ATTRf(i32 %142, i32 %143)
  %145 = load i32, i32* @sample_stack_user, align 4
  %146 = load i32, i32* @p_unsigned, align 4
  %147 = call i32 @PRINT_ATTRf(i32 %145, i32 %146)
  %148 = load i32, i32* @clockid, align 4
  %149 = load i32, i32* @p_signed, align 4
  %150 = call i32 @PRINT_ATTRf(i32 %148, i32 %149)
  %151 = load i32, i32* @sample_regs_intr, align 4
  %152 = load i32, i32* @p_hex, align 4
  %153 = call i32 @PRINT_ATTRf(i32 %151, i32 %152)
  %154 = load i32, i32* @aux_watermark, align 4
  %155 = load i32, i32* @p_unsigned, align 4
  %156 = call i32 @PRINT_ATTRf(i32 %154, i32 %155)
  %157 = load i32, i32* @sample_max_stack, align 4
  %158 = load i32, i32* @p_unsigned, align 4
  %159 = call i32 @PRINT_ATTRf(i32 %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PRINT_ATTRf(i32, i32) #2

declare dso_local i32 @PRINT_ATTRn(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
