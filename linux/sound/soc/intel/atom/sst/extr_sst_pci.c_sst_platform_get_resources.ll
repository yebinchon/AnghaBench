; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pci.c_sst_platform_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pci.c_sst_platform_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i64, i32*, i32, i8*, i8*, i32*, i8*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.TYPE_4__*, i8*, %struct.pci_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@SST_DRV_NAME = common dso_local global i32 0, align 4
@SST_MRFLD_PCI_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"lib_info pointer NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"FW LSP DDR BASE does not match with IFWI\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sst: DDR Ptr %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SST Shim Ptr %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SRAM Ptr %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"IRAM Ptr %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"DRAM Ptr %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*)* @sst_platform_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_get_resources(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %8 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %7, i32 0, i32 16
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = load i32, i32* @SST_DRV_NAME, align 4
  %12 = call i32 @pci_request_regions(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %208

17:                                               ; preds = %1
  %18 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %19 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SST_MRFLD_PCI_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = call i8* @pci_resource_start(%struct.pci_dev* %24, i32 0)
  %26 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %27 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %26, i32 0, i32 15
  store i8* %25, i8** %27, align 8
  %28 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %29 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %28, i32 0, i32 15
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @relocate_imr_addr_mrfld(i8* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %33 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %32, i32 0, i32 14
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %23
  %39 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %40 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %205

45:                                               ; preds = %23
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %48 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %47, i32 0, i32 14
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %46, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %57 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %205

62:                                               ; preds = %45
  %63 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %64 = call i8* @pci_resource_end(%struct.pci_dev* %63, i32 0)
  %65 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %66 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %65, i32 0, i32 13
  store i8* %64, i8** %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %69 = call i32 @pci_resource_len(%struct.pci_dev* %68, i32 0)
  %70 = call i8* @pcim_iomap(%struct.pci_dev* %67, i32 0, i32 %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %73 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %72, i32 0, i32 12
  store i32* %71, i32** %73, align 8
  %74 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %75 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %74, i32 0, i32 12
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %205

81:                                               ; preds = %62
  %82 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %83 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %86 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %85, i32 0, i32 12
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %87)
  br label %92

89:                                               ; preds = %17
  %90 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %91 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %90, i32 0, i32 12
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %89, %81
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = call i8* @pci_resource_start(%struct.pci_dev* %93, i32 1)
  %95 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %96 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %95, i32 0, i32 11
  store i8* %94, i8** %96, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %99 = call i32 @pci_resource_len(%struct.pci_dev* %98, i32 1)
  %100 = call i8* @pcim_iomap(%struct.pci_dev* %97, i32 1, i32 %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %103 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %102, i32 0, i32 10
  store i32* %101, i32** %103, align 8
  %104 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %105 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %104, i32 0, i32 10
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %92
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %205

111:                                              ; preds = %92
  %112 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %113 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %116 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %115, i32 0, i32 10
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %120 = call i8* @pci_resource_start(%struct.pci_dev* %119, i32 2)
  %121 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %122 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %121, i32 0, i32 9
  store i8* %120, i8** %122, align 8
  %123 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %124 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %125 = call i32 @pci_resource_len(%struct.pci_dev* %124, i32 2)
  %126 = call i8* @pcim_iomap(%struct.pci_dev* %123, i32 2, i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %129 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %128, i32 0, i32 8
  store i32* %127, i32** %129, align 8
  %130 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %131 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %111
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %205

137:                                              ; preds = %111
  %138 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %139 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %142 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %141, i32 0, i32 8
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @dev_dbg(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %146 = call i8* @pci_resource_end(%struct.pci_dev* %145, i32 3)
  %147 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %148 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %147, i32 0, i32 7
  store i8* %146, i8** %148, align 8
  %149 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %150 = call i8* @pci_resource_start(%struct.pci_dev* %149, i32 3)
  %151 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %152 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %154 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %155 = call i32 @pci_resource_len(%struct.pci_dev* %154, i32 3)
  %156 = call i8* @pcim_iomap(%struct.pci_dev* %153, i32 3, i32 %155)
  %157 = bitcast i8* %156 to i32*
  %158 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %159 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %158, i32 0, i32 5
  store i32* %157, i32** %159, align 8
  %160 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %161 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %137
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %205

167:                                              ; preds = %137
  %168 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %169 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %172 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @dev_dbg(i32 %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %173)
  %175 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %176 = call i8* @pci_resource_end(%struct.pci_dev* %175, i32 4)
  %177 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %178 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %177, i32 0, i32 4
  store i8* %176, i8** %178, align 8
  %179 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %180 = call i8* @pci_resource_start(%struct.pci_dev* %179, i32 4)
  %181 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %182 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %181, i32 0, i32 3
  store i8* %180, i8** %182, align 8
  %183 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %184 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %185 = call i32 @pci_resource_len(%struct.pci_dev* %184, i32 4)
  %186 = call i8* @pcim_iomap(%struct.pci_dev* %183, i32 4, i32 %185)
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %189 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %188, i32 0, i32 1
  store i32* %187, i32** %189, align 8
  %190 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %191 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %167
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %5, align 4
  br label %205

197:                                              ; preds = %167
  %198 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %199 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %202 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @dev_dbg(i32 %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %203)
  br label %205

205:                                              ; preds = %197, %194, %164, %134, %108, %78, %55, %38
  %206 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %207 = call i32 @pci_release_regions(%struct.pci_dev* %206)
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %205, %15
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @relocate_imr_addr_mrfld(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i8* @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
