; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-version.c_library_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-version.c_library_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAVE_DWARF_SUPPORT = common dso_local global i32 0, align 4
@dwarf = common dso_local global i64 0, align 8
@HAVE_DWARF_GETLOCATIONS_SUPPORT = common dso_local global i32 0, align 4
@dwarf_getlocations = common dso_local global i64 0, align 8
@HAVE_GLIBC_SUPPORT = common dso_local global i32 0, align 4
@glibc = common dso_local global i64 0, align 8
@HAVE_GTK2_SUPPORT = common dso_local global i32 0, align 4
@gtk2 = common dso_local global i64 0, align 8
@HAVE_LIBAUDIT_SUPPORT = common dso_local global i32 0, align 4
@libaudit = common dso_local global i64 0, align 8
@HAVE_SYSCALL_TABLE_SUPPORT = common dso_local global i32 0, align 4
@syscall_table = common dso_local global i64 0, align 8
@HAVE_LIBBFD_SUPPORT = common dso_local global i32 0, align 4
@libbfd = common dso_local global i64 0, align 8
@HAVE_LIBELF_SUPPORT = common dso_local global i32 0, align 4
@libelf = common dso_local global i64 0, align 8
@HAVE_LIBNUMA_SUPPORT = common dso_local global i32 0, align 4
@libnuma = common dso_local global i64 0, align 8
@numa_num_possible_cpus = common dso_local global i64 0, align 8
@HAVE_LIBPERL_SUPPORT = common dso_local global i32 0, align 4
@libperl = common dso_local global i64 0, align 8
@HAVE_LIBPYTHON_SUPPORT = common dso_local global i32 0, align 4
@libpython = common dso_local global i64 0, align 8
@HAVE_SLANG_SUPPORT = common dso_local global i32 0, align 4
@libslang = common dso_local global i64 0, align 8
@HAVE_LIBCRYPTO_SUPPORT = common dso_local global i32 0, align 4
@libcrypto = common dso_local global i64 0, align 8
@HAVE_LIBUNWIND_SUPPORT = common dso_local global i32 0, align 4
@libunwind = common dso_local global i64 0, align 8
@libdw = common dso_local global i64 0, align 8
@unwind = common dso_local global i64 0, align 8
@HAVE_ZLIB_SUPPORT = common dso_local global i32 0, align 4
@zlib = common dso_local global i64 0, align 8
@HAVE_LZMA_SUPPORT = common dso_local global i32 0, align 4
@lzma = common dso_local global i64 0, align 8
@HAVE_AUXTRACE_SUPPORT = common dso_local global i32 0, align 4
@get_cpuid = common dso_local global i64 0, align 8
@HAVE_LIBBPF_SUPPORT = common dso_local global i32 0, align 4
@bpf = common dso_local global i64 0, align 8
@HAVE_AIO_SUPPORT = common dso_local global i32 0, align 4
@aio = common dso_local global i64 0, align 8
@HAVE_ZSTD_SUPPORT = common dso_local global i32 0, align 4
@zstd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @library_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @library_status() #0 {
  %1 = load i32, i32* @HAVE_DWARF_SUPPORT, align 4
  %2 = load i64, i64* @dwarf, align 8
  %3 = call i32 @STATUS(i32 %1, i64 %2)
  %4 = load i32, i32* @HAVE_DWARF_GETLOCATIONS_SUPPORT, align 4
  %5 = load i64, i64* @dwarf_getlocations, align 8
  %6 = call i32 @STATUS(i32 %4, i64 %5)
  %7 = load i32, i32* @HAVE_GLIBC_SUPPORT, align 4
  %8 = load i64, i64* @glibc, align 8
  %9 = call i32 @STATUS(i32 %7, i64 %8)
  %10 = load i32, i32* @HAVE_GTK2_SUPPORT, align 4
  %11 = load i64, i64* @gtk2, align 8
  %12 = call i32 @STATUS(i32 %10, i64 %11)
  %13 = load i32, i32* @HAVE_LIBAUDIT_SUPPORT, align 4
  %14 = load i64, i64* @libaudit, align 8
  %15 = call i32 @STATUS(i32 %13, i64 %14)
  %16 = load i32, i32* @HAVE_SYSCALL_TABLE_SUPPORT, align 4
  %17 = load i64, i64* @syscall_table, align 8
  %18 = call i32 @STATUS(i32 %16, i64 %17)
  %19 = load i32, i32* @HAVE_LIBBFD_SUPPORT, align 4
  %20 = load i64, i64* @libbfd, align 8
  %21 = call i32 @STATUS(i32 %19, i64 %20)
  %22 = load i32, i32* @HAVE_LIBELF_SUPPORT, align 4
  %23 = load i64, i64* @libelf, align 8
  %24 = call i32 @STATUS(i32 %22, i64 %23)
  %25 = load i32, i32* @HAVE_LIBNUMA_SUPPORT, align 4
  %26 = load i64, i64* @libnuma, align 8
  %27 = call i32 @STATUS(i32 %25, i64 %26)
  %28 = load i32, i32* @HAVE_LIBNUMA_SUPPORT, align 4
  %29 = load i64, i64* @numa_num_possible_cpus, align 8
  %30 = call i32 @STATUS(i32 %28, i64 %29)
  %31 = load i32, i32* @HAVE_LIBPERL_SUPPORT, align 4
  %32 = load i64, i64* @libperl, align 8
  %33 = call i32 @STATUS(i32 %31, i64 %32)
  %34 = load i32, i32* @HAVE_LIBPYTHON_SUPPORT, align 4
  %35 = load i64, i64* @libpython, align 8
  %36 = call i32 @STATUS(i32 %34, i64 %35)
  %37 = load i32, i32* @HAVE_SLANG_SUPPORT, align 4
  %38 = load i64, i64* @libslang, align 8
  %39 = call i32 @STATUS(i32 %37, i64 %38)
  %40 = load i32, i32* @HAVE_LIBCRYPTO_SUPPORT, align 4
  %41 = load i64, i64* @libcrypto, align 8
  %42 = call i32 @STATUS(i32 %40, i64 %41)
  %43 = load i32, i32* @HAVE_LIBUNWIND_SUPPORT, align 4
  %44 = load i64, i64* @libunwind, align 8
  %45 = call i32 @STATUS(i32 %43, i64 %44)
  %46 = load i32, i32* @HAVE_DWARF_SUPPORT, align 4
  %47 = load i64, i64* @libdw, align 8
  %48 = load i64, i64* @dwarf, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i64, i64* @unwind, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @STATUS(i32 %46, i64 %51)
  %53 = load i32, i32* @HAVE_ZLIB_SUPPORT, align 4
  %54 = load i64, i64* @zlib, align 8
  %55 = call i32 @STATUS(i32 %53, i64 %54)
  %56 = load i32, i32* @HAVE_LZMA_SUPPORT, align 4
  %57 = load i64, i64* @lzma, align 8
  %58 = call i32 @STATUS(i32 %56, i64 %57)
  %59 = load i32, i32* @HAVE_AUXTRACE_SUPPORT, align 4
  %60 = load i64, i64* @get_cpuid, align 8
  %61 = call i32 @STATUS(i32 %59, i64 %60)
  %62 = load i32, i32* @HAVE_LIBBPF_SUPPORT, align 4
  %63 = load i64, i64* @bpf, align 8
  %64 = call i32 @STATUS(i32 %62, i64 %63)
  %65 = load i32, i32* @HAVE_AIO_SUPPORT, align 4
  %66 = load i64, i64* @aio, align 8
  %67 = call i32 @STATUS(i32 %65, i64 %66)
  %68 = load i32, i32* @HAVE_ZSTD_SUPPORT, align 4
  %69 = load i64, i64* @zstd, align 8
  %70 = call i32 @STATUS(i32 %68, i64 %69)
  ret void
}

declare dso_local i32 @STATUS(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
