; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32 }
%struct.hdsp = type { i32, i32, i32, i8*, i32, i32, i32, %struct.snd_card*, i64, i64, i64, i32*, %struct.pci_dev*, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32*, i32*, i32* }

@Undefined = common dso_local global i32 0, align 4
@hdsp_midi_tasklet = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"H-DSP\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Xilinx FPGA\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"RME Hammerfall DSP\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"RME HDSP 9652\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"RME HDSP 9632\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hdsp\00", align 1
@HDSP_IO_EXTENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"unable to remap region 0x%lx-0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@snd_hdsp_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"unable to use IRQ %d\0A\00", align 1
@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_DllError = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"couldn't get firmware from userspace. try using hdsploader\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"card initialization pending : waiting for firmware\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Firmware already present, initializing card.\0A\00", align 1
@HDSP_status2Register = common dso_local global i32 0, align 4
@HDSP_version2 = common dso_local global i32 0, align 4
@RPM = common dso_local global i32 0, align 4
@HDSP_version1 = common dso_local global i32 0, align 4
@Multiface = common dso_local global i32 0, align 4
@Digiface = common dso_local global i32 0, align 4
@H9652 = common dso_local global i32 0, align 4
@H9632 = common dso_local global i32 0, align 4
@HDSP_FirmwareLoaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*)* @snd_hdsp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create(%struct.snd_card* %0, %struct.hdsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdsp* %1, %struct.hdsp** %5, align 8
  %10 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %11 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %10, i32 0, i32 12
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 5
  store i32 0, i32* %16, align 4
  %17 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %18 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %17, i32 0, i32 17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %23 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %22, i32 0, i32 17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %28 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %27, i32 0, i32 17
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %33 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %32, i32 0, i32 17
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %38 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %37, i32 0, i32 17
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %43 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %42, i32 0, i32 17
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %48 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %47, i32 0, i32 17
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %53 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %52, i32 0, i32 17
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %58 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %57, i32 0, i32 17
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %64 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %63, i32 0, i32 17
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %70 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %69, i32 0, i32 11
  store i32* null, i32** %70, align 8
  %71 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %72 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %71, i32 0, i32 16
  store i64 0, i64* %72, align 8
  %73 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %74 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %73, i32 0, i32 15
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @Undefined, align 4
  %76 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %77 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %79 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %78, i32 0, i32 1
  store i32 26, i32* %79, align 4
  %80 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %81 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %82 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %81, i32 0, i32 7
  store %struct.snd_card* %80, %struct.snd_card** %82, align 8
  %83 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %84 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %83, i32 0, i32 14
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %87 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %86, i32 0, i32 13
  %88 = load i32, i32* @hdsp_midi_tasklet, align 4
  %89 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %90 = ptrtoint %struct.hdsp* %89 to i64
  %91 = call i32 @tasklet_init(i32* %87, i32 %88, i64 %90)
  %92 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %93 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %92, i32 0, i32 12
  %94 = load %struct.pci_dev*, %struct.pci_dev** %93, align 8
  %95 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %96 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %97 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %96, i32 0, i32 2
  %98 = call i32 @pci_read_config_word(%struct.pci_dev* %94, i32 %95, i32* %97)
  %99 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %100 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 255
  store i32 %102, i32* %100, align 8
  %103 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %104 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %103, i32 0, i32 12
  %105 = load %struct.pci_dev*, %struct.pci_dev** %104, align 8
  %106 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %107 = call i32 @pci_write_config_byte(%struct.pci_dev* %105, i32 %106, i32 255)
  %108 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %109 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @strcpy(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %113 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @strcpy(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %117 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %118, 10
  br i1 %119, label %120, label %123

120:                                              ; preds = %2
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %357

123:                                              ; preds = %2
  %124 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %125 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %126, 100
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %130 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %129, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %130, align 8
  br label %145

131:                                              ; preds = %123
  %132 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %133 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 150
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %138 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %137, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %138, align 8
  store i32 1, i32* %8, align 4
  br label %144

139:                                              ; preds = %131
  %140 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %141 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %140, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %141, align 8
  %142 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %143 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %142, i32 0, i32 1
  store i32 16, i32* %143, align 4
  store i32 1, i32* %9, align 4
  br label %144

144:                                              ; preds = %139, %136
  br label %145

145:                                              ; preds = %144, %128
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %148 = call i32 @pci_enable_device(%struct.pci_dev* %147)
  store i32 %148, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %357

152:                                              ; preds = %146
  %153 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %154 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %153, i32 0, i32 12
  %155 = load %struct.pci_dev*, %struct.pci_dev** %154, align 8
  %156 = call i32 @pci_set_master(%struct.pci_dev* %155)
  %157 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %158 = call i32 @pci_request_regions(%struct.pci_dev* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %158, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %357

162:                                              ; preds = %152
  %163 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %164 = call i64 @pci_resource_start(%struct.pci_dev* %163, i32 0)
  %165 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %166 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %165, i32 0, i32 10
  store i64 %164, i64* %166, align 8
  %167 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %168 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %167, i32 0, i32 10
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HDSP_IO_EXTENT, align 8
  %171 = call i32* @ioremap_nocache(i64 %169, i64 %170)
  %172 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %173 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %172, i32 0, i32 11
  store i32* %171, i32** %173, align 8
  %174 = icmp eq i32* %171, null
  br i1 %174, label %175, label %193

175:                                              ; preds = %162
  %176 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %177 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %176, i32 0, i32 7
  %178 = load %struct.snd_card*, %struct.snd_card** %177, align 8
  %179 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %182 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %185 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %184, i32 0, i32 10
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @HDSP_IO_EXTENT, align 8
  %188 = add nsw i64 %186, %187
  %189 = sub nsw i64 %188, 1
  %190 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %183, i64 %189)
  %191 = load i32, i32* @EBUSY, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %357

193:                                              ; preds = %162
  %194 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @snd_hdsp_interrupt, align 4
  %198 = load i32, i32* @IRQF_SHARED, align 4
  %199 = load i32, i32* @KBUILD_MODNAME, align 4
  %200 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %201 = call i64 @request_irq(i32 %196, i32 %197, i32 %198, i32 %199, %struct.hdsp* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %193
  %204 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %205 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %204, i32 0, i32 7
  %206 = load %struct.snd_card*, %struct.snd_card** %205, align 8
  %207 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %210 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, ...) @dev_err(i32 %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @EBUSY, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %357

215:                                              ; preds = %193
  %216 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %217 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %220 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %222 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %221, i32 0, i32 9
  store i64 0, i64* %222, align 8
  %223 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %224 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %223, i32 0, i32 4
  store i32 1, i32* %224, align 8
  %225 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %226 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %225, i32 0, i32 8
  store i64 0, i64* %226, align 8
  %227 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %228 = call i32 @snd_hdsp_initialize_memory(%struct.hdsp* %227)
  store i32 %228, i32* %7, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %215
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %3, align 4
  br label %357

232:                                              ; preds = %215
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %313, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %313, label %238

238:                                              ; preds = %235
  %239 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %240 = call i32 @hdsp_wait_for_iobox(%struct.hdsp* %239, i32 1000, i32 10)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %357

245:                                              ; preds = %238
  %246 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %247 = load i32, i32* @HDSP_statusRegister, align 4
  %248 = call i32 @hdsp_read(%struct.hdsp* %246, i32 %247)
  %249 = load i32, i32* @HDSP_DllError, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %245
  %253 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %254 = call i32 @hdsp_request_fw_loader(%struct.hdsp* %253)
  store i32 %254, i32* %7, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %258 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %257, i32 0, i32 7
  %259 = load %struct.snd_card*, %struct.snd_card** %258, align 8
  %260 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, ...) @dev_err(i32 %261, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %264

263:                                              ; preds = %252
  store i32 0, i32* %3, align 4
  br label %357

264:                                              ; preds = %256
  %265 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %266 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %265, i32 0, i32 7
  %267 = load %struct.snd_card*, %struct.snd_card** %266, align 8
  %268 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @dev_info(i32 %269, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %271 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %272 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %273 = call i32 @snd_hdsp_create_hwdep(%struct.snd_card* %271, %struct.hdsp* %272)
  store i32 %273, i32* %7, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %264
  %276 = load i32, i32* %7, align 4
  store i32 %276, i32* %3, align 4
  br label %357

277:                                              ; preds = %264
  store i32 0, i32* %3, align 4
  br label %357

278:                                              ; preds = %245
  %279 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %280 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %279, i32 0, i32 7
  %281 = load %struct.snd_card*, %struct.snd_card** %280, align 8
  %282 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @dev_info(i32 %283, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %285 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %286 = load i32, i32* @HDSP_status2Register, align 4
  %287 = call i32 @hdsp_read(%struct.hdsp* %285, i32 %286)
  %288 = load i32, i32* @HDSP_version2, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %278
  %292 = load i32, i32* @RPM, align 4
  %293 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %294 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %293, i32 0, i32 6
  store i32 %292, i32* %294, align 8
  br label %311

295:                                              ; preds = %278
  %296 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %297 = load i32, i32* @HDSP_status2Register, align 4
  %298 = call i32 @hdsp_read(%struct.hdsp* %296, i32 %297)
  %299 = load i32, i32* @HDSP_version1, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load i32, i32* @Multiface, align 4
  %304 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %305 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 8
  br label %310

306:                                              ; preds = %295
  %307 = load i32, i32* @Digiface, align 4
  %308 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %309 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %308, i32 0, i32 6
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %306, %302
  br label %311

311:                                              ; preds = %310, %291
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312, %235, %232
  %314 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %315 = call i32 @snd_hdsp_enable_io(%struct.hdsp* %314)
  store i32 %315, i32* %7, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = load i32, i32* %7, align 4
  store i32 %318, i32* %3, align 4
  br label %357

319:                                              ; preds = %313
  %320 = load i32, i32* %8, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load i32, i32* @H9652, align 4
  %324 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %325 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %324, i32 0, i32 6
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %322, %319
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = load i32, i32* @H9632, align 4
  %331 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %332 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %331, i32 0, i32 6
  store i32 %330, i32* %332, align 8
  br label %333

333:                                              ; preds = %329, %326
  %334 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %335 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %336 = call i32 @snd_hdsp_create_hwdep(%struct.snd_card* %334, %struct.hdsp* %335)
  store i32 %336, i32* %7, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = load i32, i32* %7, align 4
  store i32 %339, i32* %3, align 4
  br label %357

340:                                              ; preds = %333
  %341 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %342 = call i32 @snd_hdsp_initialize_channels(%struct.hdsp* %341)
  %343 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %344 = call i32 @snd_hdsp_initialize_midi_flush(%struct.hdsp* %343)
  %345 = load i32, i32* @HDSP_FirmwareLoaded, align 4
  %346 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %347 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %351 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %352 = call i32 @snd_hdsp_create_alsa_devices(%struct.snd_card* %350, %struct.hdsp* %351)
  store i32 %352, i32* %7, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %340
  %355 = load i32, i32* %7, align 4
  store i32 %355, i32* %3, align 4
  br label %357

356:                                              ; preds = %340
  store i32 0, i32* %3, align 4
  br label %357

357:                                              ; preds = %356, %354, %338, %317, %277, %275, %263, %243, %230, %203, %175, %160, %150, %120
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32* @ioremap_nocache(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_initialize_memory(%struct.hdsp*) #1

declare dso_local i32 @hdsp_wait_for_iobox(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @hdsp_request_fw_loader(%struct.hdsp*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @snd_hdsp_create_hwdep(%struct.snd_card*, %struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_enable_io(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_initialize_channels(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_initialize_midi_flush(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_create_alsa_devices(%struct.snd_card*, %struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
