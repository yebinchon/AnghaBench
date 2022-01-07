; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_locking_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_locking_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_locks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"----------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"| Locking API testsuite disabled |\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"| Locking API testsuite:\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"----------------------------------------------------------------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"                                 | spin |wlock |rlock |mutex | wsem | rsem |\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"  --------------------------------------------------------------------------\0A\00", align 1
@debug_locks_verbose = common dso_local global i32 0, align 4
@debug_locks_silent = common dso_local global i32 0, align 4
@current = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"A-A deadlock\00", align 1
@AA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"A-B-B-A deadlock\00", align 1
@ABBA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"A-B-B-C-C-A deadlock\00", align 1
@ABBCCA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"A-B-C-A-B-C deadlock\00", align 1
@ABCABC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"A-B-B-C-C-D-D-A deadlock\00", align 1
@ABBCCDDA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"A-B-C-D-B-D-D-A deadlock\00", align 1
@ABCDBDDA = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"A-B-C-D-B-C-D-A deadlock\00", align 1
@ABCDBCDA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"double unlock\00", align 1
@double_unlock = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"initialize held\00", align 1
@init_held = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"recursive read-lock\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"             |\00", align 1
@rlock_AA1 = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@LOCKTYPE_RWLOCK = common dso_local global i32 0, align 4
@rsem_AA1 = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@LOCKTYPE_RWSEM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"recursive read-lock #2\00", align 1
@rlock_AA1B = common dso_local global i32 0, align 4
@rsem_AA1B = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"mixed read-write-lock\00", align 1
@rlock_AA2 = common dso_local global i32 0, align 4
@rsem_AA2 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"mixed write-read-lock\00", align 1
@rlock_AA3 = common dso_local global i32 0, align 4
@rsem_AA3 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [32 x i8] c"mixed read-lock/lock-write ABBA\00", align 1
@rlock_ABBA1 = common dso_local global i32 0, align 4
@rwsem_ABBA1 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"mixed read-lock/lock-read ABBA\00", align 1
@rlock_ABBA2 = common dso_local global i32 0, align 4
@rwsem_ABBA2 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [33 x i8] c"mixed write-lock/lock-write ABBA\00", align 1
@rlock_ABBA3 = common dso_local global i32 0, align 4
@rwsem_ABBA3 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"irqs-on + irq-safe-A\00", align 1
@irqsafe1 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [24 x i8] c"sirq-safe-A => hirqs-on\00", align 1
@irqsafe2A = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"safe-A + irqs-on\00", align 1
@irqsafe2B = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"safe-A + unsafe-B #1\00", align 1
@irqsafe3 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"safe-A + unsafe-B #2\00", align 1
@irqsafe4 = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"irq lock-inversion\00", align 1
@irq_inversion = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"irq read-recursion\00", align 1
@irq_read_recursion = common dso_local global i32 0, align 4
@unexpected_testcase_failures = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [67 x i8] c"-----------------------------------------------------------------\0A\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"BUG: %3d unexpected failures (out of %3d) - debugging disabled! |\0A\00", align 1
@testcase_total = common dso_local global i32 0, align 4
@expected_testcase_failures = common dso_local global i64 0, align 8
@testcase_successes = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [58 x i8] c"--------------------------------------------------------\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"%3d out of %3d testcases failed, as expected. |\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"All %3d testcases failed, as expected. |\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"----------------------------------------\0A\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"-------------------------------------------------------\0A\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"Good, all %3d testcases passed! |\0A\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"---------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locking_selftest() #0 {
  %1 = load i32, i32* @debug_locks, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %176

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 (...) @init_shared_classes()
  %14 = load i32, i32* @debug_locks_verbose, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @debug_locks_silent, align 4
  %18 = load i32*, i32** @current, align 8
  %19 = call i32 @lockdep_set_selftest_task(i32* %18)
  %20 = load i32, i32* @AA, align 4
  %21 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ABBA, align 4
  %23 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ABBCCA, align 4
  %25 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ABCABC, align 4
  %27 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ABBCCDDA, align 4
  %29 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ABCDBDDA, align 4
  %31 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ABCDBCDA, align 4
  %33 = call i32 @DO_TESTCASE_6R(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @double_unlock, align 4
  %35 = call i32 @DO_TESTCASE_6(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @init_held, align 4
  %37 = call i32 @DO_TESTCASE_6(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %36)
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0))
  %39 = call i32 @print_testname(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %40 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %41 = load i32, i32* @rlock_AA1, align 4
  %42 = load i32, i32* @SUCCESS, align 4
  %43 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %44 = call i32 @dotest(i32 %41, i32 %42, i32 %43)
  %45 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %46 = load i32, i32* @rsem_AA1, align 4
  %47 = load i32, i32* @FAILURE, align 4
  %48 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %49 = call i32 @dotest(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %51 = call i32 @print_testname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %52 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %53 = load i32, i32* @rlock_AA1B, align 4
  %54 = load i32, i32* @SUCCESS, align 4
  %55 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %56 = call i32 @dotest(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %58 = load i32, i32* @rsem_AA1B, align 4
  %59 = load i32, i32* @FAILURE, align 4
  %60 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %61 = call i32 @dotest(i32 %58, i32 %59, i32 %60)
  %62 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %63 = call i32 @print_testname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %64 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %65 = load i32, i32* @rlock_AA2, align 4
  %66 = load i32, i32* @FAILURE, align 4
  %67 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %68 = call i32 @dotest(i32 %65, i32 %66, i32 %67)
  %69 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %70 = load i32, i32* @rsem_AA2, align 4
  %71 = load i32, i32* @FAILURE, align 4
  %72 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %73 = call i32 @dotest(i32 %70, i32 %71, i32 %72)
  %74 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %75 = call i32 @print_testname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %76 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %77 = load i32, i32* @rlock_AA3, align 4
  %78 = load i32, i32* @FAILURE, align 4
  %79 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %80 = call i32 @dotest(i32 %77, i32 %78, i32 %79)
  %81 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %82 = load i32, i32* @rsem_AA3, align 4
  %83 = load i32, i32* @FAILURE, align 4
  %84 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %85 = call i32 @dotest(i32 %82, i32 %83, i32 %84)
  %86 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %87 = call i32 @print_testname(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %88 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %89 = load i32, i32* @rlock_ABBA1, align 4
  %90 = load i32, i32* @FAILURE, align 4
  %91 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %92 = call i32 @dotest(i32 %89, i32 %90, i32 %91)
  %93 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %94 = load i32, i32* @rwsem_ABBA1, align 4
  %95 = load i32, i32* @FAILURE, align 4
  %96 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %97 = call i32 @dotest(i32 %94, i32 %95, i32 %96)
  %98 = call i32 @print_testname(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  %99 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %100 = load i32, i32* @rlock_ABBA2, align 4
  %101 = load i32, i32* @SUCCESS, align 4
  %102 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %103 = call i32 @dotest(i32 %100, i32 %101, i32 %102)
  %104 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %105 = load i32, i32* @rwsem_ABBA2, align 4
  %106 = load i32, i32* @FAILURE, align 4
  %107 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %108 = call i32 @dotest(i32 %105, i32 %106, i32 %107)
  %109 = call i32 @print_testname(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  %110 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %111 = load i32, i32* @rlock_ABBA3, align 4
  %112 = load i32, i32* @FAILURE, align 4
  %113 = load i32, i32* @LOCKTYPE_RWLOCK, align 4
  %114 = call i32 @dotest(i32 %111, i32 %112, i32 %113)
  %115 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %116 = load i32, i32* @rwsem_ABBA3, align 4
  %117 = load i32, i32* @FAILURE, align 4
  %118 = load i32, i32* @LOCKTYPE_RWSEM, align 4
  %119 = call i32 @dotest(i32 %116, i32 %117, i32 %118)
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @irqsafe1, align 4
  %122 = call i32 @DO_TESTCASE_2x6(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @irqsafe2A, align 4
  %124 = call i32 @DO_TESTCASE_2x3(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @irqsafe2B, align 4
  %126 = call i32 @DO_TESTCASE_2x6(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @irqsafe3, align 4
  %128 = call i32 @DO_TESTCASE_6x6(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @irqsafe4, align 4
  %130 = call i32 @DO_TESTCASE_6x6(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @irq_inversion, align 4
  %132 = call i32 @DO_TESTCASE_6x6RW(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @irq_read_recursion, align 4
  %134 = call i32 @DO_TESTCASE_6x2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %133)
  %135 = call i32 (...) @ww_tests()
  %136 = load i64, i64* @unexpected_testcase_failures, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %7
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.32, i64 0, i64 0))
  store i32 0, i32* @debug_locks, align 4
  %140 = load i64, i64* @unexpected_testcase_failures, align 8
  %141 = load i32, i32* @testcase_total, align 4
  %142 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.33, i64 0, i64 0), i64 %140, i32 %141)
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.32, i64 0, i64 0))
  br label %174

144:                                              ; preds = %7
  %145 = load i64, i64* @expected_testcase_failures, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i64, i64* @testcase_successes, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i64 0, i64 0))
  %152 = load i64, i64* @expected_testcase_failures, align 8
  %153 = load i32, i32* @testcase_total, align 4
  %154 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i64 0, i64 0), i64 %152, i32 %153)
  %155 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0))
  store i32 1, i32* @debug_locks, align 4
  br label %173

156:                                              ; preds = %147, %144
  %157 = load i64, i64* @expected_testcase_failures, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i64, i64* @testcase_successes, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i64 0, i64 0))
  %164 = load i64, i64* @expected_testcase_failures, align 8
  %165 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i64 %164)
  %166 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i64 0, i64 0))
  store i32 1, i32* @debug_locks, align 4
  br label %172

167:                                              ; preds = %159, %156
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.39, i64 0, i64 0))
  %169 = load i64, i64* @testcase_successes, align 8
  %170 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0), i64 %169)
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0))
  store i32 1, i32* @debug_locks, align 4
  br label %172

172:                                              ; preds = %167, %162
  br label %173

173:                                              ; preds = %172, %150
  br label %174

174:                                              ; preds = %173, %138
  %175 = call i32 @lockdep_set_selftest_task(i32* null)
  store i32 0, i32* @debug_locks_silent, align 4
  br label %176

176:                                              ; preds = %174, %3
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @init_shared_classes(...) #1

declare dso_local i32 @lockdep_set_selftest_task(i32*) #1

declare dso_local i32 @DO_TESTCASE_6R(i8*, i32) #1

declare dso_local i32 @DO_TESTCASE_6(i8*, i32) #1

declare dso_local i32 @print_testname(i8*) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @dotest(i32, i32, i32) #1

declare dso_local i32 @DO_TESTCASE_2x6(i8*, i32) #1

declare dso_local i32 @DO_TESTCASE_2x3(i8*, i32) #1

declare dso_local i32 @DO_TESTCASE_6x6(i8*, i32) #1

declare dso_local i32 @DO_TESTCASE_6x6RW(i8*, i32) #1

declare dso_local i32 @DO_TESTCASE_6x2(i8*, i32) #1

declare dso_local i32 @ww_tests(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
