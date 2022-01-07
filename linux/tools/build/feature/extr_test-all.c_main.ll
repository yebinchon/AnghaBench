; ModuleID = '/home/carl/AnghaBench/linux/tools/build/feature/extr_test-all.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/build/feature/extr_test-all.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @main_test_libpython()
  %7 = call i32 (...) @main_test_libpython_version()
  %8 = call i32 (...) @main_test_libperl()
  %9 = call i32 (...) @main_test_hello()
  %10 = call i32 (...) @main_test_libelf()
  %11 = call i32 (...) @main_test_libelf_mmap()
  %12 = call i32 (...) @main_test_get_current_dir_name()
  %13 = call i32 (...) @main_test_gettid()
  %14 = call i32 (...) @main_test_glibc()
  %15 = call i32 (...) @main_test_dwarf()
  %16 = call i32 (...) @main_test_dwarf_getlocations()
  %17 = call i32 (...) @main_test_eventfd()
  %18 = call i32 (...) @main_test_libelf_getphdrnum()
  %19 = call i32 (...) @main_test_libelf_gelf_getnote()
  %20 = call i32 (...) @main_test_libelf_getshdrstrndx()
  %21 = call i32 (...) @main_test_libunwind()
  %22 = call i32 (...) @main_test_libaudit()
  %23 = call i32 (...) @main_test_libslang()
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @main_test_gtk2(i32 %24, i8** %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @main_test_gtk2_infobar(i32 %27, i8** %28)
  %30 = call i32 (...) @main_test_libbfd()
  %31 = call i32 (...) @main_test_backtrace()
  %32 = call i32 (...) @main_test_libnuma()
  %33 = call i32 (...) @main_test_numa_num_possible_cpus()
  %34 = call i32 (...) @main_test_timerfd()
  %35 = call i32 (...) @main_test_stackprotector_all()
  %36 = call i32 (...) @main_test_libdw_dwarf_unwind()
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @main_test_sync_compare_and_swap(i32 %37, i8** %38)
  %40 = call i32 (...) @main_test_zlib()
  %41 = call i32 (...) @main_test_pthread_attr_setaffinity_np()
  %42 = call i32 (...) @main_test_pthread_barrier()
  %43 = call i32 (...) @main_test_lzma()
  %44 = call i32 (...) @main_test_get_cpuid()
  %45 = call i32 (...) @main_test_bpf()
  %46 = call i32 (...) @main_test_libcrypto()
  %47 = call i32 (...) @main_test_sched_getcpu()
  %48 = call i32 (...) @main_test_sdt()
  %49 = call i32 (...) @main_test_setns()
  %50 = call i32 (...) @main_test_libaio()
  %51 = call i32 (...) @main_test_reallocarray()
  %52 = call i32 (...) @main_test_disassembler_four_args()
  %53 = call i32 (...) @main_test_libzstd()
  ret i32 0
}

declare dso_local i32 @main_test_libpython(...) #1

declare dso_local i32 @main_test_libpython_version(...) #1

declare dso_local i32 @main_test_libperl(...) #1

declare dso_local i32 @main_test_hello(...) #1

declare dso_local i32 @main_test_libelf(...) #1

declare dso_local i32 @main_test_libelf_mmap(...) #1

declare dso_local i32 @main_test_get_current_dir_name(...) #1

declare dso_local i32 @main_test_gettid(...) #1

declare dso_local i32 @main_test_glibc(...) #1

declare dso_local i32 @main_test_dwarf(...) #1

declare dso_local i32 @main_test_dwarf_getlocations(...) #1

declare dso_local i32 @main_test_eventfd(...) #1

declare dso_local i32 @main_test_libelf_getphdrnum(...) #1

declare dso_local i32 @main_test_libelf_gelf_getnote(...) #1

declare dso_local i32 @main_test_libelf_getshdrstrndx(...) #1

declare dso_local i32 @main_test_libunwind(...) #1

declare dso_local i32 @main_test_libaudit(...) #1

declare dso_local i32 @main_test_libslang(...) #1

declare dso_local i32 @main_test_gtk2(i32, i8**) #1

declare dso_local i32 @main_test_gtk2_infobar(i32, i8**) #1

declare dso_local i32 @main_test_libbfd(...) #1

declare dso_local i32 @main_test_backtrace(...) #1

declare dso_local i32 @main_test_libnuma(...) #1

declare dso_local i32 @main_test_numa_num_possible_cpus(...) #1

declare dso_local i32 @main_test_timerfd(...) #1

declare dso_local i32 @main_test_stackprotector_all(...) #1

declare dso_local i32 @main_test_libdw_dwarf_unwind(...) #1

declare dso_local i32 @main_test_sync_compare_and_swap(i32, i8**) #1

declare dso_local i32 @main_test_zlib(...) #1

declare dso_local i32 @main_test_pthread_attr_setaffinity_np(...) #1

declare dso_local i32 @main_test_pthread_barrier(...) #1

declare dso_local i32 @main_test_lzma(...) #1

declare dso_local i32 @main_test_get_cpuid(...) #1

declare dso_local i32 @main_test_bpf(...) #1

declare dso_local i32 @main_test_libcrypto(...) #1

declare dso_local i32 @main_test_sched_getcpu(...) #1

declare dso_local i32 @main_test_sdt(...) #1

declare dso_local i32 @main_test_setns(...) #1

declare dso_local i32 @main_test_libaio(...) #1

declare dso_local i32 @main_test_reallocarray(...) #1

declare dso_local i32 @main_test_disassembler_four_args(...) #1

declare dso_local i32 @main_test_libzstd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
