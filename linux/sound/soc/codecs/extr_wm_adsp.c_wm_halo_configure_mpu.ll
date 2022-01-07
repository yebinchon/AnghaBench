; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_configure_mpu.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_configure_mpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, i64 }
%struct.reg_sequence = type { i32, i64 }

@HALO_MPU_LOCK_CONFIG = common dso_local global i64 0, align 8
@HALO_MPU_XMEM_ACCESS_0 = common dso_local global i64 0, align 8
@HALO_MPU_YMEM_ACCESS_0 = common dso_local global i64 0, align 8
@HALO_MPU_WINDOW_ACCESS_0 = common dso_local global i64 0, align 8
@HALO_MPU_XREG_ACCESS_0 = common dso_local global i64 0, align 8
@HALO_MPU_YREG_ACCESS_0 = common dso_local global i64 0, align 8
@HALO_MPU_XMEM_ACCESS_1 = common dso_local global i64 0, align 8
@HALO_MPU_YMEM_ACCESS_1 = common dso_local global i64 0, align 8
@HALO_MPU_WINDOW_ACCESS_1 = common dso_local global i64 0, align 8
@HALO_MPU_XREG_ACCESS_1 = common dso_local global i64 0, align 8
@HALO_MPU_YREG_ACCESS_1 = common dso_local global i64 0, align 8
@HALO_MPU_XMEM_ACCESS_2 = common dso_local global i64 0, align 8
@HALO_MPU_YMEM_ACCESS_2 = common dso_local global i64 0, align 8
@HALO_MPU_WINDOW_ACCESS_2 = common dso_local global i64 0, align 8
@HALO_MPU_XREG_ACCESS_2 = common dso_local global i64 0, align 8
@HALO_MPU_YREG_ACCESS_2 = common dso_local global i64 0, align 8
@HALO_MPU_XMEM_ACCESS_3 = common dso_local global i64 0, align 8
@HALO_MPU_YMEM_ACCESS_3 = common dso_local global i64 0, align 8
@HALO_MPU_WINDOW_ACCESS_3 = common dso_local global i64 0, align 8
@HALO_MPU_XREG_ACCESS_3 = common dso_local global i64 0, align 8
@HALO_MPU_YREG_ACCESS_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i32)* @wm_halo_configure_mpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_halo_configure_mpu(%struct.wm_adsp* %0, i32 %1) #0 {
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [23 x %struct.reg_sequence], align 16
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [23 x %struct.reg_sequence], [23 x %struct.reg_sequence]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %6, i32 0, i32 0
  %8 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %9 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HALO_MPU_LOCK_CONFIG, align 8
  %12 = add nsw i64 %10, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 16
  %14 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %6, i32 0, i32 1
  store i64 21845, i64* %14, align 8
  %15 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %6, i64 1
  %16 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %15, i32 0, i32 0
  %17 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %18 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HALO_MPU_LOCK_CONFIG, align 8
  %21 = add nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %16, align 16
  %23 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %15, i32 0, i32 1
  store i64 43690, i64* %23, align 8
  %24 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %15, i64 1
  %25 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %24, i32 0, i32 0
  %26 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %27 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HALO_MPU_XMEM_ACCESS_0, align 8
  %30 = add nsw i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %25, align 16
  %32 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %24, i32 0, i32 1
  store i64 4294967295, i64* %32, align 8
  %33 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %24, i64 1
  %34 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %33, i32 0, i32 0
  %35 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %36 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HALO_MPU_YMEM_ACCESS_0, align 8
  %39 = add nsw i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %34, align 16
  %41 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %33, i32 0, i32 1
  store i64 4294967295, i64* %41, align 8
  %42 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %33, i64 1
  %43 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %42, i32 0, i32 0
  %44 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %45 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HALO_MPU_WINDOW_ACCESS_0, align 8
  %48 = add nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %43, align 16
  %50 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %42, i32 0, i32 1
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %42, i64 1
  %54 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %53, i32 0, i32 0
  %55 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %56 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HALO_MPU_XREG_ACCESS_0, align 8
  %59 = add nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %54, align 16
  %61 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %53, i32 0, i32 1
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %53, i64 1
  %65 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %64, i32 0, i32 0
  %66 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %67 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HALO_MPU_YREG_ACCESS_0, align 8
  %70 = add nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %65, align 16
  %72 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %64, i32 0, i32 1
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %72, align 8
  %75 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %64, i64 1
  %76 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %75, i32 0, i32 0
  %77 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %78 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HALO_MPU_XMEM_ACCESS_1, align 8
  %81 = add nsw i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %76, align 16
  %83 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %75, i32 0, i32 1
  store i64 4294967295, i64* %83, align 8
  %84 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %75, i64 1
  %85 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %84, i32 0, i32 0
  %86 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %87 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HALO_MPU_YMEM_ACCESS_1, align 8
  %90 = add nsw i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %85, align 16
  %92 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %84, i32 0, i32 1
  store i64 4294967295, i64* %92, align 8
  %93 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %84, i64 1
  %94 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %93, i32 0, i32 0
  %95 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %96 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HALO_MPU_WINDOW_ACCESS_1, align 8
  %99 = add nsw i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %94, align 16
  %101 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %93, i32 0, i32 1
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %101, align 8
  %104 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %93, i64 1
  %105 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %104, i32 0, i32 0
  %106 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %107 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HALO_MPU_XREG_ACCESS_1, align 8
  %110 = add nsw i64 %108, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %105, align 16
  %112 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %104, i32 0, i32 1
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %112, align 8
  %115 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %104, i64 1
  %116 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %115, i32 0, i32 0
  %117 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %118 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @HALO_MPU_YREG_ACCESS_1, align 8
  %121 = add nsw i64 %119, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %116, align 16
  %123 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %115, i32 0, i32 1
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %123, align 8
  %126 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %115, i64 1
  %127 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %126, i32 0, i32 0
  %128 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %129 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HALO_MPU_XMEM_ACCESS_2, align 8
  %132 = add nsw i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %127, align 16
  %134 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %126, i32 0, i32 1
  store i64 4294967295, i64* %134, align 8
  %135 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %126, i64 1
  %136 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %135, i32 0, i32 0
  %137 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %138 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @HALO_MPU_YMEM_ACCESS_2, align 8
  %141 = add nsw i64 %139, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %136, align 16
  %143 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %135, i32 0, i32 1
  store i64 4294967295, i64* %143, align 8
  %144 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %135, i64 1
  %145 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %144, i32 0, i32 0
  %146 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %147 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @HALO_MPU_WINDOW_ACCESS_2, align 8
  %150 = add nsw i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %145, align 16
  %152 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %144, i32 0, i32 1
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %152, align 8
  %155 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %144, i64 1
  %156 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %155, i32 0, i32 0
  %157 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %158 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @HALO_MPU_XREG_ACCESS_2, align 8
  %161 = add nsw i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %156, align 16
  %163 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %155, i32 0, i32 1
  %164 = load i32, i32* %4, align 4
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %163, align 8
  %166 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %155, i64 1
  %167 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %166, i32 0, i32 0
  %168 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %169 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @HALO_MPU_YREG_ACCESS_2, align 8
  %172 = add nsw i64 %170, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %167, align 16
  %174 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %166, i32 0, i32 1
  %175 = load i32, i32* %4, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %174, align 8
  %177 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %166, i64 1
  %178 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %177, i32 0, i32 0
  %179 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %180 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HALO_MPU_XMEM_ACCESS_3, align 8
  %183 = add nsw i64 %181, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %178, align 16
  %185 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %177, i32 0, i32 1
  store i64 4294967295, i64* %185, align 8
  %186 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %177, i64 1
  %187 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %186, i32 0, i32 0
  %188 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %189 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @HALO_MPU_YMEM_ACCESS_3, align 8
  %192 = add nsw i64 %190, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %187, align 16
  %194 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %186, i32 0, i32 1
  store i64 4294967295, i64* %194, align 8
  %195 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %186, i64 1
  %196 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %195, i32 0, i32 0
  %197 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %198 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HALO_MPU_WINDOW_ACCESS_3, align 8
  %201 = add nsw i64 %199, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %196, align 16
  %203 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %195, i32 0, i32 1
  %204 = load i32, i32* %4, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %203, align 8
  %206 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %195, i64 1
  %207 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %206, i32 0, i32 0
  %208 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %209 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @HALO_MPU_XREG_ACCESS_3, align 8
  %212 = add nsw i64 %210, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %207, align 16
  %214 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %206, i32 0, i32 1
  %215 = load i32, i32* %4, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %214, align 8
  %217 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %206, i64 1
  %218 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %217, i32 0, i32 0
  %219 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %220 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @HALO_MPU_YREG_ACCESS_3, align 8
  %223 = add nsw i64 %221, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %218, align 16
  %225 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %217, i32 0, i32 1
  %226 = load i32, i32* %4, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %225, align 8
  %228 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %217, i64 1
  %229 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %228, i32 0, i32 0
  %230 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %231 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @HALO_MPU_LOCK_CONFIG, align 8
  %234 = add nsw i64 %232, %233
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %229, align 16
  %236 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %228, i32 0, i32 1
  store i64 0, i64* %236, align 8
  %237 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %238 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds [23 x %struct.reg_sequence], [23 x %struct.reg_sequence]* %5, i64 0, i64 0
  %241 = getelementptr inbounds [23 x %struct.reg_sequence], [23 x %struct.reg_sequence]* %5, i64 0, i64 0
  %242 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %241)
  %243 = call i32 @regmap_multi_reg_write(i32 %239, %struct.reg_sequence* %240, i32 %242)
  ret i32 %243
}

declare dso_local i32 @regmap_multi_reg_write(i32, %struct.reg_sequence*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
