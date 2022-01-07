; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32 }
%struct.snd_rme9652 = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.pci_dev*, i64, i32*, i32, %struct.snd_card* }
%struct.pci_dev = type { i32 }

@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rme9652\00", align 1
@RME9652_IO_EXTENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to remap region 0x%lx-0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@snd_rme9652_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@RME9652_status_register = common dso_local global i32 0, align 4
@RME9652_F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"RME9636\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RME Digi9636 (Rev 1.5)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"RME Digi9636\00", align 1
@RME9636_NCHANNELS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"RME Digi9636 (Rev G)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"RME9652\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"RME Digi9652 (Rev G)\00", align 1
@RME9652_NCHANNELS = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"RME Digi9652 (Rev 1.5)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"RME Digi9652\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_rme9652*, i32)* @snd_rme9652_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_create(%struct.snd_card* %0, %struct.snd_rme9652* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_rme9652* %1, %struct.snd_rme9652** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %13 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %12, i32 0, i32 12
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %16 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %18 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %19 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %18, i32 0, i32 16
  store %struct.snd_card* %17, %struct.snd_card** %19, align 8
  %20 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %21 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %20, i32 0, i32 12
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %23 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i32 %23, i16* %11)
  %25 = load i16, i16* %11, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 255
  switch i32 %27, label %29 [
    i32 3, label %28
    i32 4, label %28
    i32 8, label %28
    i32 9, label %28
  ]

28:                                               ; preds = %3, %3, %3, %3
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %245

32:                                               ; preds = %28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %34 = call i32 @pci_enable_device(%struct.pci_dev* %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %245

38:                                               ; preds = %32
  %39 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %40 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %39, i32 0, i32 15
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %43 = call i32 @pci_request_regions(%struct.pci_dev* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %245

47:                                               ; preds = %38
  %48 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %49 = call i64 @pci_resource_start(%struct.pci_dev* %48, i32 0)
  %50 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %51 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %50, i32 0, i32 13
  store i64 %49, i64* %51, align 8
  %52 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %53 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %52, i32 0, i32 13
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RME9652_IO_EXTENT, align 8
  %56 = call i32* @ioremap_nocache(i64 %54, i64 %55)
  %57 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %58 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %57, i32 0, i32 14
  store i32* %56, i32** %58, align 8
  %59 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %60 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %59, i32 0, i32 14
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %47
  %64 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %65 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %68 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %67, i32 0, i32 13
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %72 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %71, i32 0, i32 13
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RME9652_IO_EXTENT, align 8
  %75 = add nsw i64 %73, %74
  %76 = sub nsw i64 %75, 1
  %77 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70, i64 %76)
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %245

80:                                               ; preds = %47
  %81 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @snd_rme9652_interrupt, align 4
  %85 = load i32, i32* @IRQF_SHARED, align 4
  %86 = load i32, i32* @KBUILD_MODNAME, align 4
  %87 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %88 = call i64 @request_irq(i32 %83, i32 %84, i32 %85, i32 %86, %struct.snd_rme9652* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %92 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %245

100:                                              ; preds = %80
  %101 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %105 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %108 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %110 = load i32, i32* @RME9652_status_register, align 4
  %111 = call i32 @rme9652_read(%struct.snd_rme9652* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @RME9652_F, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @rme9652_decode_spdif_rate(i32 %114)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %100
  %118 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %119 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %118, i32 0, i32 2
  store i32 15, i32* %119, align 8
  br label %123

120:                                              ; preds = %100
  %121 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %122 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %121, i32 0, i32 2
  store i32 11, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i16, i16* %11, align 2
  %125 = zext i16 %124 to i32
  switch i32 %125, label %188 [
    i32 8, label %126
    i32 9, label %146
    i32 4, label %157
    i32 3, label %168
  ]

126:                                              ; preds = %123
  %127 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %128 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @strcpy(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %132 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 15
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %137 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %136, i32 0, i32 3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %137, align 8
  br label %141

138:                                              ; preds = %126
  %139 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %140 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %139, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %140, align 8
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i8*, i8** @RME9636_NCHANNELS, align 8
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %145 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  br label %188

146:                                              ; preds = %123
  %147 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %148 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @strcpy(i32 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %151 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %152 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %151, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %152, align 8
  %153 = load i8*, i8** @RME9636_NCHANNELS, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %156 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  br label %188

157:                                              ; preds = %123
  %158 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %159 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @strcpy(i32 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %162 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %163 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %162, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %163, align 8
  %164 = load i8*, i8** @RME9652_NCHANNELS, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %167 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  br label %188

168:                                              ; preds = %123
  %169 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %170 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @strcpy(i32 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %173 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %174 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 15
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %179 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %178, i32 0, i32 3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %179, align 8
  br label %183

180:                                              ; preds = %168
  %181 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %182 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %181, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i8*, i8** @RME9652_NCHANNELS, align 8
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %187 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %123, %183, %157, %146, %141
  %189 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %190 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 2
  %193 = sdiv i32 %192, 2
  %194 = add nsw i32 %193, 2
  %195 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %196 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  %197 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %198 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %197, i32 0, i32 12
  %199 = load %struct.pci_dev*, %struct.pci_dev** %198, align 8
  %200 = call i32 @pci_set_master(%struct.pci_dev* %199)
  %201 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %202 = call i32 @snd_rme9652_initialize_memory(%struct.snd_rme9652* %201)
  store i32 %202, i32* %9, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %188
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %4, align 4
  br label %245

206:                                              ; preds = %188
  %207 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %208 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %209 = call i32 @snd_rme9652_create_pcm(%struct.snd_card* %207, %struct.snd_rme9652* %208)
  store i32 %209, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %4, align 4
  br label %245

213:                                              ; preds = %206
  %214 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %215 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %216 = call i32 @snd_rme9652_create_controls(%struct.snd_card* %214, %struct.snd_rme9652* %215)
  store i32 %216, i32* %9, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %9, align 4
  store i32 %219, i32* %4, align 4
  br label %245

220:                                              ; preds = %213
  %221 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %222 = call i32 @snd_rme9652_proc_init(%struct.snd_rme9652* %221)
  %223 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %224 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %223, i32 0, i32 6
  store i32 -1, i32* %224, align 8
  %225 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %226 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %225, i32 0, i32 7
  store i32 -1, i32* %226, align 4
  %227 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %228 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %227, i32 0, i32 8
  store i32 -1, i32* %228, align 8
  %229 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %230 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %229, i32 0, i32 9
  store i32 -1, i32* %230, align 4
  %231 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %232 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %231, i32 0, i32 11
  store i32* null, i32** %232, align 8
  %233 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %234 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %233, i32 0, i32 10
  store i32* null, i32** %234, align 8
  %235 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %236 = call i32 @snd_rme9652_set_defaults(%struct.snd_rme9652* %235)
  %237 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %238 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 15
  br i1 %240, label %241, label %244

241:                                              ; preds = %220
  %242 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %243 = call i32 @rme9652_initialize_spdif_receiver(%struct.snd_rme9652* %242)
  br label %244

244:                                              ; preds = %241, %220
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %244, %218, %211, %204, %90, %63, %45, %36, %29
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32* @ioremap_nocache(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_read(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @rme9652_decode_spdif_rate(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @snd_rme9652_initialize_memory(%struct.snd_rme9652*) #1

declare dso_local i32 @snd_rme9652_create_pcm(%struct.snd_card*, %struct.snd_rme9652*) #1

declare dso_local i32 @snd_rme9652_create_controls(%struct.snd_card*, %struct.snd_rme9652*) #1

declare dso_local i32 @snd_rme9652_proc_init(%struct.snd_rme9652*) #1

declare dso_local i32 @snd_rme9652_set_defaults(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_initialize_spdif_receiver(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
