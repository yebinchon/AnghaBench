; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_pte_fault.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_pte_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i64, i32*, i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 (%struct.inode.0*, i64, i32, i32, %struct.iomap*)*, i32 (%struct.inode.1*, i64, i32, i32, i32, %struct.iomap.2*)* }
%struct.inode.0 = type opaque
%struct.iomap = type opaque
%struct.inode.1 = type opaque
%struct.iomap.2 = type opaque
%struct.iomap.3 = type { i64, i64, i32, i32, i32, i32, i32 }

@xas = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@IOMAP_FAULT = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@IOMAP_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VM_FAULT_DONE_COW = common dso_local global i32 0, align 4
@IOMAP_F_NEW = common dso_local global i32 0, align 4
@PGMAJFAULT = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@VM_FAULT_NEEDDSYNC = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*, i32*, i32*, %struct.iomap_ops*)* @dax_iomap_pte_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_iomap_pte_fault(%struct.vm_fault* %0, i32* %1, i32* %2, %struct.iomap_ops* %3) #0 {
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iomap_ops*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iomap.3, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.iomap_ops* %3, %struct.iomap_ops** %8, align 8
  %25 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 5
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  store %struct.vm_area_struct* %27, %struct.vm_area_struct** %9, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.address_space*, %struct.address_space** %31, align 8
  store %struct.address_space* %32, %struct.address_space** %10, align 8
  %33 = load i32, i32* @xas, align 4
  %34 = load %struct.address_space*, %struct.address_space** %10, align 8
  %35 = getelementptr inbounds %struct.address_space, %struct.address_space* %34, i32 0, i32 1
  %36 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %37 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @XA_STATE(i32 %33, i32* %35, i64 %38)
  %40 = load %struct.address_space*, %struct.address_space** %10, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = load %struct.inode*, %struct.inode** %41, align 8
  store %struct.inode* %42, %struct.inode** %11, align 8
  %43 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %44 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %47 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PAGE_SHIFT, align 8
  %50 = shl i64 %48, %49
  store i64 %50, i64* %13, align 8
  %51 = bitcast %struct.iomap.3* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 40, i1 false)
  %52 = load i32, i32* @IOMAP_FAULT, align 4
  store i32 %52, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %53 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @trace_dax_pte_fault(%struct.inode* %58, %struct.vm_fault* %59, i32 %60)
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = call i64 @i_size_read(%struct.inode* %63)
  %65 = icmp sge i64 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %4
  %67 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %67, i32* %20, align 4
  br label %315

68:                                               ; preds = %4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %73 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @IOMAP_WRITE, align 4
  %78 = load i32, i32* %15, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %76, %71, %68
  %81 = load %struct.address_space*, %struct.address_space** %10, align 8
  %82 = call i8* @grab_mapping_entry(i32* @xas, %struct.address_space* %81, i32 0)
  store i8* %82, i8** %21, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = call i64 @xa_is_internal(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %21, align 8
  %88 = call i32 @xa_to_internal(i8* %87)
  store i32 %88, i32* %20, align 4
  br label %315

89:                                               ; preds = %80
  %90 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %91 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @pmd_trans_huge(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @pmd_devmap(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96, %89
  %104 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %104, i32* %20, align 4
  br label %312

105:                                              ; preds = %96
  %106 = load %struct.iomap_ops*, %struct.iomap_ops** %8, align 8
  %107 = getelementptr inbounds %struct.iomap_ops, %struct.iomap_ops* %106, i32 0, i32 0
  %108 = load i32 (%struct.inode.0*, i64, i32, i32, %struct.iomap*)*, i32 (%struct.inode.0*, i64, i32, i32, %struct.iomap*)** %107, align 8
  %109 = load %struct.inode*, %struct.inode** %11, align 8
  %110 = bitcast %struct.inode* %109 to %struct.inode.0*
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = load i32, i32* %15, align 4
  %114 = bitcast %struct.iomap.3* %14 to %struct.iomap*
  %115 = call i32 %108(%struct.inode.0* %110, i64 %111, i32 %112, i32 %113, %struct.iomap* %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %105
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @dax_fault_return(i32 %125)
  store i32 %126, i32* %20, align 4
  br label %312

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %129, %131
  %133 = load i64, i64* %13, align 8
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = icmp slt i64 %132, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @WARN_ON_ONCE(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %16, align 4
  br label %284

144:                                              ; preds = %127
  %145 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %146 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %192

149:                                              ; preds = %144
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @dax_iomap_sector(%struct.iomap.3* %14, i64 %150)
  store i32 %151, i32* %23, align 4
  %152 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %172 [
    i32 130, label %154
    i32 128, label %154
    i32 129, label %160
  ]

154:                                              ; preds = %149, %149
  %155 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %156 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = call i32 @clear_user_highpage(i64 %157, i64 %158)
  br label %176

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %168 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @copy_user_dax(i32 %162, i32 %164, i32 %165, i32 %166, i64 %169, i64 %170)
  store i32 %171, i32* %16, align 4
  br label %176

172:                                              ; preds = %149
  %173 = call i64 @WARN_ON_ONCE(i32 1)
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %172, %160, %154
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %284

180:                                              ; preds = %176
  %181 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %182 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @__SetPageUptodate(i64 %183)
  %185 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %186 = call i32 @finish_fault(%struct.vm_fault* %185)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %180
  %190 = load i32, i32* @VM_FAULT_DONE_COW, align 4
  store i32 %190, i32* %20, align 4
  br label %191

191:                                              ; preds = %189, %180
  br label %287

192:                                              ; preds = %144
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %195 = call i32 @dax_fault_is_synchronous(i32 %193, %struct.vm_area_struct* %194, %struct.iomap.3* %14)
  store i32 %195, i32* %19, align 4
  %196 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %279 [
    i32 129, label %198
    i32 128, label %271
    i32 130, label %271
  ]

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %14, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IOMAP_F_NEW, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %198
  %205 = load i32, i32* @PGMAJFAULT, align 4
  %206 = call i32 @count_vm_event(i32 %205)
  %207 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %208 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @PGMAJFAULT, align 4
  %211 = call i32 @count_memcg_event_mm(i32 %209, i32 %210)
  %212 = load i32, i32* @VM_FAULT_MAJOR, align 4
  store i32 %212, i32* %17, align 4
  br label %213

213:                                              ; preds = %204, %198
  %214 = load i64, i64* %13, align 8
  %215 = load i32, i32* @PAGE_SIZE, align 4
  %216 = call i32 @dax_iomap_pfn(%struct.iomap.3* %14, i64 %214, i32 %215, i32* %22)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %284

220:                                              ; preds = %213
  %221 = load %struct.address_space*, %struct.address_space** %10, align 8
  %222 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %223 = load i8*, i8** %21, align 8
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load i32, i32* %19, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  br label %231

231:                                              ; preds = %227, %220
  %232 = phi i1 [ false, %220 ], [ %230, %227 ]
  %233 = zext i1 %232 to i32
  %234 = call i8* @dax_insert_entry(i32* @xas, %struct.address_space* %221, %struct.vm_fault* %222, i8* %223, i32 %224, i32 0, i32 %233)
  store i8* %234, i8** %21, align 8
  %235 = load i32, i32* %19, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %231
  %238 = load i32*, i32** %6, align 8
  %239 = icmp ne i32* %238, null
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = call i64 @WARN_ON_ONCE(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32, i32* @EIO, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %16, align 4
  br label %284

247:                                              ; preds = %237
  %248 = load i32, i32* %22, align 4
  %249 = load i32*, i32** %6, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* @VM_FAULT_NEEDDSYNC, align 4
  %251 = load i32, i32* %17, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* %20, align 4
  br label %287

253:                                              ; preds = %231
  %254 = load %struct.inode*, %struct.inode** %11, align 8
  %255 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %256 = load i8*, i8** %21, align 8
  %257 = call i32 @trace_dax_insert_mapping(%struct.inode* %254, %struct.vm_fault* %255, i8* %256)
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load i32, i32* %22, align 4
  %264 = call i32 @vmf_insert_mixed_mkwrite(%struct.vm_area_struct* %261, i64 %262, i32 %263)
  store i32 %264, i32* %20, align 4
  br label %270

265:                                              ; preds = %253
  %266 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %267 = load i64, i64* %12, align 8
  %268 = load i32, i32* %22, align 4
  %269 = call i32 @vmf_insert_mixed(%struct.vm_area_struct* %266, i64 %267, i32 %268)
  store i32 %269, i32* %20, align 4
  br label %270

270:                                              ; preds = %265, %260
  br label %287

271:                                              ; preds = %192, %192
  %272 = load i32, i32* %18, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %271
  %275 = load %struct.address_space*, %struct.address_space** %10, align 8
  %276 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %277 = call i32 @dax_load_hole(i32* @xas, %struct.address_space* %275, i8** %21, %struct.vm_fault* %276)
  store i32 %277, i32* %20, align 4
  br label %287

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %192, %278
  %280 = call i64 @WARN_ON_ONCE(i32 1)
  %281 = load i32, i32* @EIO, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %16, align 4
  br label %283

283:                                              ; preds = %279
  br label %284

284:                                              ; preds = %283, %244, %219, %179, %141
  %285 = load i32, i32* %16, align 4
  %286 = call i32 @dax_fault_return(i32 %285)
  store i32 %286, i32* %20, align 4
  br label %287

287:                                              ; preds = %284, %274, %270, %247, %191
  %288 = load %struct.iomap_ops*, %struct.iomap_ops** %8, align 8
  %289 = getelementptr inbounds %struct.iomap_ops, %struct.iomap_ops* %288, i32 0, i32 1
  %290 = load i32 (%struct.inode.1*, i64, i32, i32, i32, %struct.iomap.2*)*, i32 (%struct.inode.1*, i64, i32, i32, i32, %struct.iomap.2*)** %289, align 8
  %291 = icmp ne i32 (%struct.inode.1*, i64, i32, i32, i32, %struct.iomap.2*)* %290, null
  br i1 %291, label %292, label %311

292:                                              ; preds = %287
  %293 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %293, i32* %24, align 4
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* @VM_FAULT_ERROR, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  store i32 0, i32* %24, align 4
  br label %299

299:                                              ; preds = %298, %292
  %300 = load %struct.iomap_ops*, %struct.iomap_ops** %8, align 8
  %301 = getelementptr inbounds %struct.iomap_ops, %struct.iomap_ops* %300, i32 0, i32 1
  %302 = load i32 (%struct.inode.1*, i64, i32, i32, i32, %struct.iomap.2*)*, i32 (%struct.inode.1*, i64, i32, i32, i32, %struct.iomap.2*)** %301, align 8
  %303 = load %struct.inode*, %struct.inode** %11, align 8
  %304 = bitcast %struct.inode* %303 to %struct.inode.1*
  %305 = load i64, i64* %13, align 8
  %306 = load i32, i32* @PAGE_SIZE, align 4
  %307 = load i32, i32* %24, align 4
  %308 = load i32, i32* %15, align 4
  %309 = bitcast %struct.iomap.3* %14 to %struct.iomap.2*
  %310 = call i32 %302(%struct.inode.1* %304, i64 %305, i32 %306, i32 %307, i32 %308, %struct.iomap.2* %309)
  br label %311

311:                                              ; preds = %299, %287
  br label %312

312:                                              ; preds = %311, %124, %103
  %313 = load i8*, i8** %21, align 8
  %314 = call i32 @dax_unlock_entry(i32* @xas, i8* %313)
  br label %315

315:                                              ; preds = %312, %86, %66
  %316 = load %struct.inode*, %struct.inode** %11, align 8
  %317 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %318 = load i32, i32* %20, align 4
  %319 = call i32 @trace_dax_pte_fault_done(%struct.inode* %316, %struct.vm_fault* %317, i32 %318)
  %320 = load i32, i32* %20, align 4
  %321 = load i32, i32* %17, align 4
  %322 = or i32 %320, %321
  ret i32 %322
}

declare dso_local i32 @XA_STATE(i32, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @trace_dax_pte_fault(%struct.inode*, %struct.vm_fault*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i8* @grab_mapping_entry(i32*, %struct.address_space*, i32) #1

declare dso_local i64 @xa_is_internal(i8*) #1

declare dso_local i32 @xa_to_internal(i8*) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i32 @dax_fault_return(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dax_iomap_sector(%struct.iomap.3*, i64) #1

declare dso_local i32 @clear_user_highpage(i64, i64) #1

declare dso_local i32 @copy_user_dax(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @__SetPageUptodate(i64) #1

declare dso_local i32 @finish_fault(%struct.vm_fault*) #1

declare dso_local i32 @dax_fault_is_synchronous(i32, %struct.vm_area_struct*, %struct.iomap.3*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @count_memcg_event_mm(i32, i32) #1

declare dso_local i32 @dax_iomap_pfn(%struct.iomap.3*, i64, i32, i32*) #1

declare dso_local i8* @dax_insert_entry(i32*, %struct.address_space*, %struct.vm_fault*, i8*, i32, i32, i32) #1

declare dso_local i32 @trace_dax_insert_mapping(%struct.inode*, %struct.vm_fault*, i8*) #1

declare dso_local i32 @vmf_insert_mixed_mkwrite(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @dax_load_hole(i32*, %struct.address_space*, i8**, %struct.vm_fault*) #1

declare dso_local i32 @dax_unlock_entry(i32*, i8*) #1

declare dso_local i32 @trace_dax_pte_fault_done(%struct.inode*, %struct.vm_fault*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
