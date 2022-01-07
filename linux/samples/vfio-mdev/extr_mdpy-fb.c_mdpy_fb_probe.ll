; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy-fb.c_mdpy_fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy-fb.c_mdpy_fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.fb_info = type { i32, i32, i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_8__*, i32, %struct.TYPE_6__, %struct.mdpy_fb_par* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mdpy_fb_par = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mdpy-fb\00", align 1
@MDPY_FORMAT_OFFSET = common dso_local global i32 0, align 4
@MDPY_WIDTH_OFFSET = common dso_local global i32 0, align 4
@MDPY_HEIGHT_OFFSET = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB8888 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"format mismatch (0x%x != 0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"width (%d) out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"height (%d) out of range\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"mdpy found: %dx%d framebuffer\0A\00", align 1
@mdpy_fb_fix = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mdpy_fb_var = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"ioremap(pcibar) failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdpy_fb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"mdpy-fb device register failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"fb%d registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mdpy_fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdpy_fb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.mdpy_fb_par*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %3, align 4
  br label %220

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_request_regions(%struct.pci_dev* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %220

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @MDPY_FORMAT_OFFSET, align 4
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %26, i32 %27, i64* %8)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @MDPY_WIDTH_OFFSET, align 4
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i32 %30, i64* %9)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* @MDPY_HEIGHT_OFFSET, align 4
  %34 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 %33, i64* %10)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @DRM_FORMAT_XRGB8888, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @DRM_FORMAT_XRGB8888, align 8
  %42 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %220

45:                                               ; preds = %25
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %46, 100
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = icmp sgt i64 %49, 10000
  br i1 %50, label %51, label %57

51:                                               ; preds = %48, %45
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %220

57:                                               ; preds = %48
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %58, 100
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = icmp sgt i64 %61, 10000
  br i1 %62, label %63, label %69

63:                                               ; preds = %60, %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %220

69:                                               ; preds = %60
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 (%struct.pci_dev*, i8*, i64, ...) @pci_info(%struct.pci_dev* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %71, i64 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call %struct.fb_info* @framebuffer_alloc(i32 4, i32* %75)
  store %struct.fb_info* %76, %struct.fb_info** %6, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %78 = icmp ne %struct.fb_info* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %216

80:                                               ; preds = %69
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %83 = call i32 @pci_set_drvdata(%struct.pci_dev* %81, %struct.fb_info* %82)
  %84 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 9
  %86 = load %struct.mdpy_fb_par*, %struct.mdpy_fb_par** %85, align 8
  store %struct.mdpy_fb_par* %86, %struct.mdpy_fb_par** %7, align 8
  %87 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 5
  %89 = bitcast %struct.TYPE_7__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 bitcast (%struct.TYPE_7__* @mdpy_fb_fix to i8*), i64 16, i1 false)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = call i32 @pci_resource_start(%struct.pci_dev* %90, i32 0)
  %92 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = call i32 @pci_resource_len(%struct.pci_dev* %95, i32 0)
  %97 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = mul nsw i64 %100, 4
  %102 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i64 %101, i64* %104, align 8
  %105 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 8
  %107 = bitcast %struct.TYPE_6__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 bitcast (%struct.TYPE_6__* @mdpy_fb_var to i8*), i64 32, i1 false)
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  store i64 %108, i64* %111, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ioremap(i32 %133, i32 %136)
  %138 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %80
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %11, align 4
  br label %213

149:                                              ; preds = %80
  %150 = call %struct.TYPE_8__* @alloc_apertures(i32 1)
  %151 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 6
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %152, align 8
  %153 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %154 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 6
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = icmp ne %struct.TYPE_8__* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %11, align 4
  br label %208

160:                                              ; preds = %149
  %161 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 6
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  store i32 %164, i32* %171, align 4
  %172 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 6
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i32 %175, i32* %182, align 4
  %183 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 4
  store i32* @mdpy_fb_ops, i32** %184, align 8
  %185 = load i32, i32* @FBINFO_DEFAULT, align 4
  %186 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mdpy_fb_par*, %struct.mdpy_fb_par** %7, align 8
  %189 = getelementptr inbounds %struct.mdpy_fb_par, %struct.mdpy_fb_par* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %194 = call i32 @register_framebuffer(%struct.fb_info* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %160
  %198 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %198, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  br label %208

201:                                              ; preds = %160
  %202 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %203 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = call i32 (%struct.pci_dev*, i8*, i64, ...) @pci_info(%struct.pci_dev* %202, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %206)
  store i32 0, i32* %3, align 4
  br label %220

208:                                              ; preds = %197, %157
  %209 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @iounmap(i32 %211)
  br label %213

213:                                              ; preds = %208, %144
  %214 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %215 = call i32 @framebuffer_release(%struct.fb_info* %214)
  br label %216

216:                                              ; preds = %213, %79
  %217 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %218 = call i32 @pci_release_regions(%struct.pci_dev* %217)
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %216, %201, %63, %51, %38, %23, %16
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i64, ...) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local %struct.TYPE_8__* @alloc_apertures(i32) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
