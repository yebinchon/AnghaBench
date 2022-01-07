; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_sync_regs_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_sync_regs_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_run = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.kvm_regs = type { i32 }
%struct.kvm_sregs = type { i32 }
%struct.kvm_vcpu_events = type { i32 }

@stdout = common dso_local global i32 0, align 4
@KVM_CAP_SYNC_REGS = common dso_local global i32 0, align 4
@TEST_SYNC_FIELDS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"KVM_CAP_SYNC_REGS not supported, skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@INVALID_SYNC_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"The \22invalid\22 field is not invalid, skipping test\0A\00", align 1
@VCPU_ID = common dso_local global i32 0, align 4
@guest_code = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"Invalid kvm_valid_regs did not cause expected KVM_RUN error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Invalid kvm_dirty_regs did not cause expected KVM_RUN error: %d\0A\00", align 1
@KVM_EXIT_IO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Unexpected exit reason: %u (%s),\0A\00", align 1
@KVM_SYNC_X86_REGS = common dso_local global i32 0, align 4
@KVM_SYNC_X86_SREGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"rbx sync regs value incorrect 0x%llx.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"apic_base sync regs value incorrect 0x%llx.\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"rbx guest value incorrect 0x%llx.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.kvm_regs, align 4
  %9 = alloca %struct.kvm_sregs, align 4
  %10 = alloca %struct.kvm_vcpu_events, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @setbuf(i32 %13, i32* null)
  %15 = load i32, i32* @KVM_CAP_SYNC_REGS, align 4
  %16 = call i32 @kvm_check_cap(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @KSFT_SKIP, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %2
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @INVALID_SYNC_FIELD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @KSFT_SKIP, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable

37:                                               ; preds = %27
  %38 = load i32, i32* @VCPU_ID, align 4
  %39 = load i32, i32* @guest_code, align 4
  %40 = call %struct.kvm_vm* @vm_create_default(i32 %38, i32 0, i32 %39)
  store %struct.kvm_vm* %40, %struct.kvm_vm** %6, align 8
  %41 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %42 = load i32, i32* @VCPU_ID, align 4
  %43 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %41, i32 %42)
  store %struct.kvm_run* %43, %struct.kvm_run** %7, align 8
  %44 = load i32, i32* @INVALID_SYNC_FIELD, align 4
  %45 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %48 = load i32, i32* @VCPU_ID, align 4
  %49 = call i32 @_vcpu_run(%struct.kvm_vm* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EINVAL, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %37
  %57 = phi i1 [ false, %37 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %58, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %62 = load i32, i32* @VCPU_ID, align 4
  %63 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %61, i32 %62)
  %64 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @INVALID_SYNC_FIELD, align 4
  %66 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %69 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %71 = load i32, i32* @VCPU_ID, align 4
  %72 = call i32 @_vcpu_run(%struct.kvm_vm* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %56
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EINVAL, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %75, %56
  %80 = phi i1 [ false, %56 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %81, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %85 = load i32, i32* @VCPU_ID, align 4
  %86 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %84, i32 %85)
  %87 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* @INVALID_SYNC_FIELD, align 4
  %89 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %90 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %92 = load i32, i32* @VCPU_ID, align 4
  %93 = call i32 @_vcpu_run(%struct.kvm_vm* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @EINVAL, align 8
  %99 = icmp eq i64 %97, %98
  br label %100

100:                                              ; preds = %96, %79
  %101 = phi i1 [ false, %79 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %102, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %106 = load i32, i32* @VCPU_ID, align 4
  %107 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %105, i32 %106)
  %108 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* @INVALID_SYNC_FIELD, align 4
  %110 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %113 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %115 = load i32, i32* @VCPU_ID, align 4
  %116 = call i32 @_vcpu_run(%struct.kvm_vm* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %100
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @EINVAL, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %119, %100
  %124 = phi i1 [ false, %100 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %125, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %129 = load i32, i32* @VCPU_ID, align 4
  %130 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %128, i32 %129)
  %131 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %133 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %134 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %136 = load i32, i32* @VCPU_ID, align 4
  %137 = call i32 @_vcpu_run(%struct.kvm_vm* %135, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %139 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @KVM_EXIT_IO, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %145 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %148 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @exit_reason_str(i32 %149)
  %151 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %150)
  %152 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %153 = load i32, i32* @VCPU_ID, align 4
  %154 = call i32 @vcpu_regs_get(%struct.kvm_vm* %152, i32 %153, %struct.kvm_regs* %8)
  %155 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %156 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @compare_regs(%struct.kvm_regs* %8, %struct.TYPE_8__* %158)
  %160 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %161 = load i32, i32* @VCPU_ID, align 4
  %162 = call i32 @vcpu_sregs_get(%struct.kvm_vm* %160, i32 %161, %struct.kvm_sregs* %9)
  %163 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %164 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = call i32 @compare_sregs(%struct.kvm_sregs* %9, %struct.TYPE_7__* %166)
  %168 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %169 = load i32, i32* @VCPU_ID, align 4
  %170 = call i32 @vcpu_events_get(%struct.kvm_vm* %168, i32 %169, %struct.kvm_vcpu_events* %10)
  %171 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %172 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = call i32 @compare_vcpu_events(%struct.kvm_vcpu_events* %10, i32* %174)
  %176 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %177 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i32 195894762, i32* %180, align 4
  %181 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %182 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 2048, i32* %185, align 4
  %186 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %187 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %188 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @KVM_SYNC_X86_REGS, align 4
  %190 = load i32, i32* @KVM_SYNC_X86_SREGS, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %193 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %195 = load i32, i32* @VCPU_ID, align 4
  %196 = call i32 @_vcpu_run(%struct.kvm_vm* %194, i32 %195)
  store i32 %196, i32* %11, align 4
  %197 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %198 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @KVM_EXIT_IO, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i32
  %203 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %204 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %207 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @exit_reason_str(i32 %208)
  %210 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %202, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %205, i32 %209)
  %211 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %212 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 195894763
  %218 = zext i1 %217 to i32
  %219 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %220 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %218, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %224)
  %226 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %227 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 2048
  %233 = zext i1 %232 to i32
  %234 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %235 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %233, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %239)
  %241 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %242 = load i32, i32* @VCPU_ID, align 4
  %243 = call i32 @vcpu_regs_get(%struct.kvm_vm* %241, i32 %242, %struct.kvm_regs* %8)
  %244 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %245 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = call i32 @compare_regs(%struct.kvm_regs* %8, %struct.TYPE_8__* %247)
  %249 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %250 = load i32, i32* @VCPU_ID, align 4
  %251 = call i32 @vcpu_sregs_get(%struct.kvm_vm* %249, i32 %250, %struct.kvm_sregs* %9)
  %252 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %253 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = call i32 @compare_sregs(%struct.kvm_sregs* %9, %struct.TYPE_7__* %255)
  %257 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %258 = load i32, i32* @VCPU_ID, align 4
  %259 = call i32 @vcpu_events_get(%struct.kvm_vm* %257, i32 %258, %struct.kvm_vcpu_events* %10)
  %260 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %261 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = call i32 @compare_vcpu_events(%struct.kvm_vcpu_events* %10, i32* %263)
  %265 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %266 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %267 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %269 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %268, i32 0, i32 1
  store i32 0, i32* %269, align 4
  %270 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %271 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  store i32 -559038737, i32* %274, align 4
  %275 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %276 = load i32, i32* @VCPU_ID, align 4
  %277 = call i32 @_vcpu_run(%struct.kvm_vm* %275, i32 %276)
  store i32 %277, i32* %11, align 4
  %278 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %279 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @KVM_EXIT_IO, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %285 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %288 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @exit_reason_str(i32 %289)
  %291 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %283, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %286, i32 %290)
  %292 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %293 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, -559038737
  %299 = zext i1 %298 to i32
  %300 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %301 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %299, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %305)
  %307 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %308 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %307, i32 0, i32 0
  store i32 0, i32* %308, align 4
  %309 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %310 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %309, i32 0, i32 1
  store i32 0, i32* %310, align 4
  %311 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %312 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  store i32 43690, i32* %315, align 4
  %316 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 0
  store i32 47808, i32* %316, align 4
  %317 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %318 = load i32, i32* @VCPU_ID, align 4
  %319 = call i32 @vcpu_regs_set(%struct.kvm_vm* %317, i32 %318, %struct.kvm_regs* %8)
  %320 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %321 = load i32, i32* @VCPU_ID, align 4
  %322 = call i32 @_vcpu_run(%struct.kvm_vm* %320, i32 %321)
  store i32 %322, i32* %11, align 4
  %323 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %324 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @KVM_EXIT_IO, align 4
  %327 = icmp eq i32 %325, %326
  %328 = zext i1 %327 to i32
  %329 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %330 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %333 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @exit_reason_str(i32 %334)
  %336 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %328, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %331, i32 %335)
  %337 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %338 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 43690
  %344 = zext i1 %343 to i32
  %345 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %346 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %344, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %350)
  %352 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %353 = load i32, i32* @VCPU_ID, align 4
  %354 = call i32 @vcpu_regs_get(%struct.kvm_vm* %352, i32 %353, %struct.kvm_regs* %8)
  %355 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 47809
  %358 = zext i1 %357 to i32
  %359 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %358, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %360)
  %362 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %363 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %362, i32 0, i32 0
  store i32 0, i32* %363, align 4
  %364 = load i32, i32* @TEST_SYNC_FIELDS, align 4
  %365 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %366 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %368 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  store i32 48059, i32* %371, align 4
  %372 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %373 = load i32, i32* @VCPU_ID, align 4
  %374 = call i32 @_vcpu_run(%struct.kvm_vm* %372, i32 %373)
  store i32 %374, i32* %11, align 4
  %375 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %376 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @KVM_EXIT_IO, align 4
  %379 = icmp eq i32 %377, %378
  %380 = zext i1 %379 to i32
  %381 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %382 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %385 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @exit_reason_str(i32 %386)
  %388 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %380, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %383, i32 %387)
  %389 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %390 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 48059
  %396 = zext i1 %395 to i32
  %397 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %398 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %396, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %402)
  %404 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %405 = load i32, i32* @VCPU_ID, align 4
  %406 = call i32 @vcpu_regs_get(%struct.kvm_vm* %404, i32 %405, %struct.kvm_regs* %8)
  %407 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 48060
  %410 = zext i1 %409 to i32
  %411 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %410, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %412)
  %414 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %415 = call i32 @kvm_vm_free(%struct.kvm_vm* %414)
  ret i32 0
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @kvm_check_cap(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.kvm_vm* @vm_create_default(i32, i32, i32) #1

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

declare dso_local i32 @_vcpu_run(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, ...) #1

declare dso_local i32 @exit_reason_str(i32) #1

declare dso_local i32 @vcpu_regs_get(%struct.kvm_vm*, i32, %struct.kvm_regs*) #1

declare dso_local i32 @compare_regs(%struct.kvm_regs*, %struct.TYPE_8__*) #1

declare dso_local i32 @vcpu_sregs_get(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local i32 @compare_sregs(%struct.kvm_sregs*, %struct.TYPE_7__*) #1

declare dso_local i32 @vcpu_events_get(%struct.kvm_vm*, i32, %struct.kvm_vcpu_events*) #1

declare dso_local i32 @compare_vcpu_events(%struct.kvm_vcpu_events*, i32*) #1

declare dso_local i32 @vcpu_regs_set(%struct.kvm_vm*, i32, %struct.kvm_regs*) #1

declare dso_local i32 @kvm_vm_free(%struct.kvm_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
