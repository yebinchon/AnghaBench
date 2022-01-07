; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_userspace_mem_region_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_userspace_mem_region_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i32, i32, %struct.userspace_mem_region*, i32 }
%struct.userspace_mem_region = type { i32, %struct.userspace_mem_region*, %struct.userspace_mem_region*, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@KVM_UTIL_PGS_PER_HUGEPG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"Guest physical address not on a page boundary.\0A  guest_paddr: 0x%lx vm->page_size: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [134 x i8] c"Physical range beyond maximum supported physical address,\0A  guest_paddr: 0x%lx npages: 0x%lx\0A  vm->max_gfn: 0x%lx vm->page_size: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [151 x i8] c"overlapping userspace_mem_region already exists\0A  requested guest_paddr: 0x%lx npages: 0x%lx page_size: 0x%x\0A  existing guest_paddr: 0x%lx size: 0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [146 x i8] c"A mem region with the requested slot already exists.\0A  requested slot: %u paddr: 0x%lx npages: 0x%lx\0A  existing slot: %u paddr: 0x%lx size: 0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Insufficient Memory\00", align 1
@VM_MEM_SRC_ANONYMOUS_THP = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@VM_MEM_SRC_ANONYMOUS_HUGETLB = common dso_local global i32 0, align 4
@MAP_HUGETLB = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"test_malloc failed, mmap_start: %p errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4
@VM_MEM_SRC_ANONYMOUS = common dso_local global i32 0, align 4
@MADV_NOHUGEPAGE = common dso_local global i32 0, align 4
@MADV_HUGEPAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"madvise failed,\0A  addr: %p\0A  length: 0x%lx\0A  src_type: %x\00", align 1
@KVM_SET_USER_MEMORY_REGION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [120 x i8] c"KVM_SET_USER_MEMORY_REGION IOCTL failed,\0A  rc: %i errno: %i\0A  slot: %u flags: 0x%x\0A  guest_phys_addr: 0x%lx size: 0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_userspace_mem_region_add(%struct.kvm_vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.kvm_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.userspace_mem_region*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* @KVM_UTIL_PGS_PER_HUGEPG, align 8
  %18 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %19 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %17, %20
  store i64 %21, i64* %15, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %25 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = urem i64 %23, %26
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %29, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %35, %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %44 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %51 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %54 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %47, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %52, i64 %55)
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %64 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = mul i64 %62, %65
  %67 = add i64 %60, %66
  %68 = sub i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = call i64 @userspace_mem_region_find(%struct.kvm_vm* %57, i32 %58, i32 %69)
  %71 = inttoptr i64 %70 to %struct.userspace_mem_region*
  store %struct.userspace_mem_region* %71, %struct.userspace_mem_region** %14, align 8
  %72 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %73 = icmp ne %struct.userspace_mem_region* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %6
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %78 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %81 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %85 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76, i64 %79, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %74, %6
  %90 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %91 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %90, i32 0, i32 3
  %92 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %91, align 8
  store %struct.userspace_mem_region* %92, %struct.userspace_mem_region** %14, align 8
  br label %93

93:                                               ; preds = %105, %89
  %94 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %95 = icmp ne %struct.userspace_mem_region* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %98 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %109

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %107 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %106, i32 0, i32 1
  %108 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %107, align 8
  store %struct.userspace_mem_region* %108, %struct.userspace_mem_region** %14, align 8
  br label %93

109:                                              ; preds = %103, %93
  %110 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %111 = icmp ne %struct.userspace_mem_region* %110, null
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %117 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %121 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %125 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %119, i32 %123, i32 %127)
  br label %129

129:                                              ; preds = %112, %109
  %130 = call %struct.userspace_mem_region* @calloc(i32 1, i32 64)
  store %struct.userspace_mem_region* %130, %struct.userspace_mem_region** %14, align 8
  %131 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %132 = icmp ne %struct.userspace_mem_region* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %138 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = mul i64 %136, %139
  %141 = trunc i64 %140 to i32
  %142 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %143 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  store i64 1, i64* %16, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @VM_MEM_SRC_ANONYMOUS_THP, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %129
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %16, align 8
  %150 = call i64 @max(i64 %148, i64 %149)
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %147, %129
  %152 = load i64, i64* %16, align 8
  %153 = icmp ugt i64 %152, 1
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %157 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 8
  br label %162

162:                                              ; preds = %154, %151
  %163 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %164 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* @PROT_READ, align 4
  %168 = load i32, i32* @PROT_WRITE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @MAP_PRIVATE, align 4
  %171 = load i32, i32* @MAP_ANONYMOUS, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @VM_MEM_SRC_ANONYMOUS_HUGETLB, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = load i32, i32* @MAP_HUGETLB, align 4
  br label %179

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ]
  %181 = or i32 %172, %180
  %182 = call i32 @mmap(i32* null, i64 %166, i32 %169, i32 %181, i32 -1, i32 0)
  %183 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %184 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 4
  %185 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %186 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @MAP_FAILED, align 4
  %189 = icmp ne i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %192 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @errno, align 4
  %195 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %190, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %197 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* %16, align 8
  %200 = call i64 @align(i32 %198, i64 %199)
  %201 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %202 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @VM_MEM_SRC_ANONYMOUS, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %179
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @VM_MEM_SRC_ANONYMOUS_THP, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %206, %179
  %211 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %212 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %217 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = mul i64 %215, %218
  %220 = trunc i64 %219 to i32
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @VM_MEM_SRC_ANONYMOUS, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %210
  %225 = load i32, i32* @MADV_NOHUGEPAGE, align 4
  br label %228

226:                                              ; preds = %210
  %227 = load i32, i32* @MADV_HUGEPAGE, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = call i32 @madvise(i64 %213, i32 %220, i32 %229)
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = icmp eq i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %235 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %240 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = mul i64 %238, %241
  %243 = load i32, i32* %8, align 4
  %244 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %233, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i64 %236, i64 %242, i32 %243)
  br label %245

245:                                              ; preds = %228, %206
  %246 = call i32 (...) @sparsebit_alloc()
  %247 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %248 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %247, i32 0, i32 5
  store i32 %246, i32* %248, align 8
  %249 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %250 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %254 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = ashr i32 %252, %255
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @sparsebit_set_num(i32 %251, i32 %256, i32 %257)
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %261 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  store i32 %259, i32* %262, align 8
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %265 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 3
  store i32 %263, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %269 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  %273 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %274 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = mul i64 %272, %275
  %277 = trunc i64 %276 to i32
  %278 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %279 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 1
  store i32 %277, i32* %280, align 4
  %281 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %282 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %285 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 4
  store i64 %283, i64* %286, align 8
  %287 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %288 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @KVM_SET_USER_MEMORY_REGION, align 4
  %291 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %292 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %291, i32 0, i32 3
  %293 = call i32 @ioctl(i32 %289, i32 %290, %struct.TYPE_2__* %292)
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp eq i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @errno, align 4
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %9, align 4
  %302 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %303 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %296, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.7, i64 0, i64 0), i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %305)
  %307 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %308 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %307, i32 0, i32 3
  %309 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %308, align 8
  %310 = icmp ne %struct.userspace_mem_region* %309, null
  br i1 %310, label %311, label %317

311:                                              ; preds = %245
  %312 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %313 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %314 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %313, i32 0, i32 3
  %315 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %314, align 8
  %316 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %315, i32 0, i32 2
  store %struct.userspace_mem_region* %312, %struct.userspace_mem_region** %316, align 8
  br label %317

317:                                              ; preds = %311, %245
  %318 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %319 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %318, i32 0, i32 3
  %320 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %319, align 8
  %321 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %322 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %321, i32 0, i32 1
  store %struct.userspace_mem_region* %320, %struct.userspace_mem_region** %322, align 8
  %323 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %14, align 8
  %324 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %325 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %324, i32 0, i32 3
  store %struct.userspace_mem_region* %323, %struct.userspace_mem_region** %325, align 8
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

declare dso_local i64 @userspace_mem_region_find(%struct.kvm_vm*, i32, i32) #1

declare dso_local %struct.userspace_mem_region* @calloc(i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @align(i32, i64) #1

declare dso_local i32 @madvise(i64, i32, i32) #1

declare dso_local i32 @sparsebit_alloc(...) #1

declare dso_local i32 @sparsebit_set_num(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
