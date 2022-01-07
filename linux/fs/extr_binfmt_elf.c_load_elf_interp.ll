; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_load_elf_interp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_load_elf_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i64, i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.elf_phdr = type { i64, i64, i64, i64, i32 }

@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_DENYWRITE = common dso_local global i32 0, align 4
@MAP_FIXED_NOREPLACE = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@PROT_EXEC = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elfhdr*, %struct.file*, i64*, i64, %struct.elf_phdr*)* @load_elf_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_elf_interp(%struct.elfhdr* %0, %struct.file* %1, i64* %2, i64 %3, %struct.elf_phdr* %4) #0 {
  %6 = alloca %struct.elfhdr*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_phdr*, align 8
  %11 = alloca %struct.elf_phdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.elfhdr* %0, %struct.elfhdr** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.elf_phdr* %4, %struct.elf_phdr** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i64 -1, i64* %17, align 8
  %25 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %26 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ET_EXEC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %32 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ET_DYN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %259

37:                                               ; preds = %30, %5
  %38 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %39 = call i32 @elf_check_arch(%struct.elfhdr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %43 = call i64 @elf_check_fdpic(%struct.elfhdr* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  br label %259

46:                                               ; preds = %41
  %47 = load %struct.file*, %struct.file** %7, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %259

54:                                               ; preds = %46
  %55 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %56 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %57 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @total_mapping_size(%struct.elf_phdr* %55, i32 %58)
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %17, align 8
  br label %259

65:                                               ; preds = %54
  %66 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  store %struct.elf_phdr* %66, %struct.elf_phdr** %11, align 8
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %218, %65
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %70 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %223

73:                                               ; preds = %67
  %74 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %75 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PT_LOAD, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %217

79:                                               ; preds = %73
  %80 = load i32, i32* @MAP_PRIVATE, align 4
  %81 = load i32, i32* @MAP_DENYWRITE, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %20, align 4
  %83 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %84 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @make_prot(i32 %85)
  store i32 %86, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %87 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %88 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %22, align 8
  %90 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %91 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ET_EXEC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95, %79
  %99 = load i32, i32* @MAP_FIXED_NOREPLACE, align 4
  %100 = load i32, i32* %20, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %20, align 4
  br label %115

102:                                              ; preds = %95
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %107 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ET_DYN, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64, i64* %22, align 8
  %113 = sub i64 0, %112
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %111, %105, %102
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.file*, %struct.file** %7, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %22, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i64, i64* %18, align 8
  %124 = call i64 @elf_map(%struct.file* %116, i64 %119, %struct.elf_phdr* %120, i32 %121, i32 %122, i64 %123)
  store i64 %124, i64* %24, align 8
  store i64 0, i64* %18, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %115
  %129 = load i64, i64* %24, align 8
  %130 = load i64*, i64** %8, align 8
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %115
  %132 = load i64, i64* %24, align 8
  store i64 %132, i64* %17, align 8
  %133 = load i64, i64* %24, align 8
  %134 = call i64 @BAD_ADDR(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %259

137:                                              ; preds = %131
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %142 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ET_DYN, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %22, align 8
  %149 = call i64 @ELF_PAGESTART(i64 %148)
  %150 = sub i64 %147, %149
  store i64 %150, i64* %12, align 8
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %146, %140, %137
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %154 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %152, %155
  store i64 %156, i64* %23, align 8
  %157 = load i64, i64* %23, align 8
  %158 = call i64 @BAD_ADDR(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %182, label %160

160:                                              ; preds = %151
  %161 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %162 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %165 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ugt i64 %163, %166
  br i1 %167, label %182, label %168

168:                                              ; preds = %160
  %169 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %170 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @TASK_SIZE, align 8
  %173 = icmp ugt i64 %171, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %168
  %175 = load i64, i64* @TASK_SIZE, align 8
  %176 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %177 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %175, %178
  %180 = load i64, i64* %23, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %174, %168, %160, %151
  %183 = load i64, i64* @ENOMEM, align 8
  %184 = sub i64 0, %183
  store i64 %184, i64* %17, align 8
  br label %259

185:                                              ; preds = %174
  %186 = load i64, i64* %12, align 8
  %187 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %188 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %186, %189
  %191 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %192 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %190, %193
  store i64 %194, i64* %23, align 8
  %195 = load i64, i64* %23, align 8
  %196 = load i64, i64* %15, align 8
  %197 = icmp ugt i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %185
  %199 = load i64, i64* %23, align 8
  store i64 %199, i64* %15, align 8
  br label %200

200:                                              ; preds = %198, %185
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %203 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %201, %204
  %206 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %207 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %205, %208
  store i64 %209, i64* %23, align 8
  %210 = load i64, i64* %23, align 8
  %211 = load i64, i64* %14, align 8
  %212 = icmp ugt i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %200
  %214 = load i64, i64* %23, align 8
  store i64 %214, i64* %14, align 8
  %215 = load i32, i32* %21, align 4
  store i32 %215, i32* %16, align 4
  br label %216

216:                                              ; preds = %213, %200
  br label %217

217:                                              ; preds = %216, %73
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %19, align 4
  %221 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %222 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %221, i32 1
  store %struct.elf_phdr* %222, %struct.elf_phdr** %11, align 8
  br label %67

223:                                              ; preds = %67
  %224 = load i64, i64* %15, align 8
  %225 = call i64 @padzero(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i64, i64* @EFAULT, align 8
  %229 = sub i64 0, %228
  store i64 %229, i64* %17, align 8
  br label %259

230:                                              ; preds = %223
  %231 = load i64, i64* %15, align 8
  %232 = call i64 @ELF_PAGEALIGN(i64 %231)
  store i64 %232, i64* %15, align 8
  %233 = load i64, i64* %14, align 8
  %234 = call i64 @ELF_PAGEALIGN(i64 %233)
  store i64 %234, i64* %14, align 8
  %235 = load i64, i64* %14, align 8
  %236 = load i64, i64* %15, align 8
  %237 = icmp ugt i64 %235, %236
  br i1 %237, label %238, label %257

238:                                              ; preds = %230
  %239 = load i64, i64* %15, align 8
  %240 = load i64, i64* %14, align 8
  %241 = load i64, i64* %15, align 8
  %242 = sub i64 %240, %241
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* @PROT_EXEC, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %238
  %248 = load i32, i32* @VM_EXEC, align 4
  br label %250

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %248, %247 ], [ 0, %249 ]
  %252 = call i64 @vm_brk_flags(i64 %239, i64 %242, i32 %251)
  store i64 %252, i64* %17, align 8
  %253 = load i64, i64* %17, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %259

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256, %230
  %258 = load i64, i64* %12, align 8
  store i64 %258, i64* %17, align 8
  br label %259

259:                                              ; preds = %257, %255, %227, %182, %136, %62, %53, %45, %36
  %260 = load i64, i64* %17, align 8
  ret i64 %260
}

declare dso_local i32 @elf_check_arch(%struct.elfhdr*) #1

declare dso_local i64 @elf_check_fdpic(%struct.elfhdr*) #1

declare dso_local i64 @total_mapping_size(%struct.elf_phdr*, i32) #1

declare dso_local i32 @make_prot(i32) #1

declare dso_local i64 @elf_map(%struct.file*, i64, %struct.elf_phdr*, i32, i32, i64) #1

declare dso_local i64 @BAD_ADDR(i64) #1

declare dso_local i64 @ELF_PAGESTART(i64) #1

declare dso_local i64 @padzero(i64) #1

declare dso_local i64 @ELF_PAGEALIGN(i64) #1

declare dso_local i64 @vm_brk_flags(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
