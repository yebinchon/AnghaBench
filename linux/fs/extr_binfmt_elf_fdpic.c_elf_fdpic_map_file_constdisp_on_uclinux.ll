; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_map_file_constdisp_on_uclinux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_map_file_constdisp_on_uclinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_fdpic_params = type { i64, i32, i64, %struct.elf32_phdr*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.elf32_phdr = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.elf32_fdpic_loadseg* }
%struct.elf32_fdpic_loadseg = type { i64, i64, i64 }
%struct.file = type { i32 }
%struct.mm_struct = type { i64, i64, i64, i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i64 0, align 8
@ELF_FDPIC_FLAG_EXECUTABLE = common dso_local global i32 0, align 4
@MAP_EXECUTABLE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_fdpic_params*, %struct.file*, %struct.mm_struct*)* @elf_fdpic_map_file_constdisp_on_uclinux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_fdpic_map_file_constdisp_on_uclinux(%struct.elf_fdpic_params* %0, %struct.file* %1, %struct.mm_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_fdpic_params*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.elf32_fdpic_loadseg*, align 8
  %9 = alloca %struct.elf32_phdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.elf_fdpic_params* %0, %struct.elf_fdpic_params** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.mm_struct* %2, %struct.mm_struct** %7, align 8
  %17 = load i64, i64* @ULONG_MAX, align 8
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %19 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %22 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %24, align 8
  store %struct.elf32_fdpic_loadseg* %25, %struct.elf32_fdpic_loadseg** %8, align 8
  %26 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %27 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %26, i32 0, i32 3
  %28 = load %struct.elf32_phdr*, %struct.elf32_phdr** %27, align 8
  store %struct.elf32_phdr* %28, %struct.elf32_phdr** %9, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %77, %3
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %32 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %29
  %37 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %38 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %37, i32 0, i32 3
  %39 = load %struct.elf32_phdr*, %struct.elf32_phdr** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %39, i64 %41
  %43 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PT_LOAD, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %77

48:                                               ; preds = %36
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %51 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %56 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %61 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %64 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  %67 = icmp ult i64 %59, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %70 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %73 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %68, %58
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %81 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %80, i32 1
  store %struct.elf32_phdr* %81, %struct.elf32_phdr** %9, align 8
  br label %29

82:                                               ; preds = %29
  %83 = load i64, i64* @MAP_PRIVATE, align 8
  store i64 %83, i64* %14, align 8
  %84 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %85 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ELF_FDPIC_FLAG_EXECUTABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i64, i64* @MAP_EXECUTABLE, align 8
  %92 = load i64, i64* %14, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %11, align 8
  %98 = sub i64 %96, %97
  %99 = load i32, i32* @PROT_READ, align 4
  %100 = load i32, i32* @PROT_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PROT_EXEC, align 4
  %103 = or i32 %101, %102
  %104 = load i64, i64* %14, align 8
  %105 = call i64 @vm_mmap(i32* null, i64 %95, i64 %98, i32 %103, i64 %104, i32 0)
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @IS_ERR_VALUE(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load i64, i64* %13, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %283

112:                                              ; preds = %94
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = sub i64 %116, %117
  %119 = call i64 @PAGE_ALIGN(i64 %118)
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %10, align 8
  br label %122

122:                                              ; preds = %115, %112
  %123 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %124 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %123, i32 0, i32 3
  %125 = load %struct.elf32_phdr*, %struct.elf32_phdr** %124, align 8
  store %struct.elf32_phdr* %125, %struct.elf32_phdr** %9, align 8
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %277, %122
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %129 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %282

133:                                              ; preds = %126
  %134 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %135 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %134, i32 0, i32 3
  %136 = load %struct.elf32_phdr*, %struct.elf32_phdr** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %136, i64 %138
  %140 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PT_LOAD, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %277

145:                                              ; preds = %133
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %148 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = sub i64 %149, %150
  %152 = add i64 %146, %151
  %153 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %154 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %156 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %159 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %161 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %164 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.file*, %struct.file** %6, align 8
  %166 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %167 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %170 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %173 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @read_code(%struct.file* %165, i64 %168, i64 %171, i64 %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %145
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %4, align 4
  br label %283

180:                                              ; preds = %145
  %181 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %182 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %187 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %190 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %193 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %196 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ult i64 %194, %197
  br i1 %198, label %199, label %221

199:                                              ; preds = %191
  %200 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %201 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %204 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %202, %205
  %207 = inttoptr i64 %206 to i8*
  %208 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %209 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %212 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = sub i64 %210, %213
  %215 = call i64 @clear_user(i8* %207, i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %199
  %218 = load i32, i32* @EFAULT, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %4, align 4
  br label %283

220:                                              ; preds = %199
  br label %221

221:                                              ; preds = %220, %191
  %222 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %223 = icmp ne %struct.mm_struct* %222, null
  br i1 %223, label %224, label %274

224:                                              ; preds = %221
  %225 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %226 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @PF_X, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %224
  %232 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %233 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %251, label %236

236:                                              ; preds = %231
  %237 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %238 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %241 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %243 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %246 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %244, %247
  %249 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %250 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %236, %231
  br label %273

252:                                              ; preds = %224
  %253 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %254 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %252
  %258 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %259 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %262 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %264 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %267 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %265, %268
  %270 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %271 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %270, i32 0, i32 3
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %257, %252
  br label %273

273:                                              ; preds = %272, %251
  br label %274

274:                                              ; preds = %273, %221
  %275 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %276 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %275, i32 1
  store %struct.elf32_fdpic_loadseg* %276, %struct.elf32_fdpic_loadseg** %8, align 8
  br label %277

277:                                              ; preds = %274, %144
  %278 = load i32, i32* %15, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %15, align 4
  %280 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %281 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %280, i32 1
  store %struct.elf32_phdr* %281, %struct.elf32_phdr** %9, align 8
  br label %126

282:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %282, %217, %178, %109
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i64 @vm_mmap(i32*, i64, i64, i32, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @read_code(%struct.file*, i64, i64, i64) #1

declare dso_local i64 @clear_user(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
