; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.snd_card*, %struct.usb_device* }
%struct.snd_card = type { i8*, i8*, i8*, i8*, i32 }
%struct.usb_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't set alt interface.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EP1_BUFSIZE = common dso_local global i32 0, align 4
@usb_ep1_command_reply_dispatch = common dso_local global i32 0, align 4
@snd_usb_caiaq_midi_output_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid EPs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EP1_CMD_GET_DEVICE_INFO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CAIAQ_USB_STR_LEN = common dso_local global i32 0, align 4
@MODNAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_caiaqdev*)* @init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_card(%struct.snd_usb_caiaqdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_caiaqdev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 1
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %3, align 8
  %12 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  %16 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %17 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.snd_card*, %struct.snd_card** %18, align 8
  store %struct.snd_card* %19, %struct.snd_card** %7, align 8
  %20 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %21 = call %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev* %20)
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i64 @usb_set_interface(%struct.usb_device* %22, i32 0, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %215

30:                                               ; preds = %1
  %31 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %32 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %31, i32 0, i32 2
  %33 = call i32 @usb_init_urb(i32* %32)
  %34 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %35 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %34, i32 0, i32 6
  %36 = call i32 @usb_init_urb(i32* %35)
  %37 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %38 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %37, i32 0, i32 2
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %41 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %40, i32 1)
  %42 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %43 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EP1_BUFSIZE, align 4
  %46 = load i32, i32* @usb_ep1_command_reply_dispatch, align 4
  %47 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %48 = call i32 @usb_fill_bulk_urb(i32* %38, %struct.usb_device* %39, i32 %41, i32 %44, i32 %45, i32 %46, %struct.snd_usb_caiaqdev* %47)
  %49 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %50 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %49, i32 0, i32 6
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = call i32 @usb_sndbulkpipe(%struct.usb_device* %52, i32 1)
  %54 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %55 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EP1_BUFSIZE, align 4
  %58 = load i32, i32* @snd_usb_caiaq_midi_output_done, align 4
  %59 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %60 = call i32 @usb_fill_bulk_urb(i32* %50, %struct.usb_device* %51, i32 %53, i32 %56, i32 %57, i32 %58, %struct.snd_usb_caiaqdev* %59)
  %61 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %62 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %61, i32 0, i32 2
  %63 = call i64 @usb_urb_ep_type_check(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %30
  %66 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %67 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %66, i32 0, i32 6
  %68 = call i64 @usb_urb_ep_type_check(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %30
  %71 = load %struct.device*, %struct.device** %8, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %215

75:                                               ; preds = %65
  %76 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %77 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %76, i32 0, i32 4
  %78 = call i32 @init_waitqueue_head(i32* %77)
  %79 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %80 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %79, i32 0, i32 5
  %81 = call i32 @init_waitqueue_head(i32* %80)
  %82 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %83 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %82, i32 0, i32 2
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i64 @usb_submit_urb(i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %215

90:                                               ; preds = %75
  %91 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %92 = load i32, i32* @EP1_CMD_GET_DEVICE_INFO, align 4
  %93 = call i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev* %91, i32 %92, i32* null, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %210

97:                                               ; preds = %90
  %98 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %99 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %102 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HZ, align 4
  %105 = call i32 @wait_event_timeout(i32 %100, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %210

110:                                              ; preds = %97
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %117 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @CAIAQ_USB_STR_LEN, align 4
  %120 = call i32 @usb_string(%struct.usb_device* %111, i32 %115, i8* %118, i32 %119)
  %121 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %122 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %123 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %127 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @CAIAQ_USB_STR_LEN, align 4
  %130 = call i32 @usb_string(%struct.usb_device* %121, i32 %125, i8* %128, i32 %129)
  %131 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %132 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** @MODNAME, align 8
  %135 = call i32 @strlcpy(i8* %133, i8* %134, i32 8)
  %136 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %137 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %140 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strlcpy(i8* %138, i8* %141, i32 8)
  %143 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %144 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %147 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @strlcpy(i8* %145, i8* %148, i32 8)
  %150 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %151 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %193

156:                                              ; preds = %110
  %157 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %158 = call i32 @memset(i8* %157, i32 0, i32 8)
  %159 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %160 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %4, align 8
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %186, %156
  %163 = load i8*, i8** %4, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %169, 8
  br label %171

171:                                              ; preds = %167, %162
  %172 = phi i1 [ false, %162 ], [ %170, %167 ]
  br i1 %172, label %173, label %189

173:                                              ; preds = %171
  %174 = load i8*, i8** %4, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 32
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load i8*, i8** %4, align 8
  %180 = load i8, i8* %179, align 1
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %183
  store i8 %180, i8* %184, align 1
  br label %185

185:                                              ; preds = %178, %173
  br label %186

186:                                              ; preds = %185
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %4, align 8
  br label %162

189:                                              ; preds = %171
  %190 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %191 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %192 = call i32 @snd_card_set_id(%struct.snd_card* %190, i8* %191)
  br label %193

193:                                              ; preds = %189, %110
  %194 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %196 = call i32 @usb_make_path(%struct.usb_device* %194, i8* %195, i32 32)
  %197 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %198 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %201 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %204 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %207 = call i32 @snprintf(i32 %199, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %202, i8* %205, i8* %206)
  %208 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %209 = call i32 @setup_card(%struct.snd_usb_caiaqdev* %208)
  store i32 0, i32* %2, align 4
  br label %215

210:                                              ; preds = %107, %96
  %211 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %212 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %211, i32 0, i32 2
  %213 = call i32 @usb_kill_urb(i32* %212)
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %210, %193, %87, %70, %25
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev*) #1

declare dso_local i64 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, %struct.usb_device*, i32, i32, i32, i32, %struct.snd_usb_caiaqdev*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_urb_ep_type_check(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev*, i32, i32*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snd_card_set_id(%struct.snd_card*, i8*) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @setup_card(%struct.snd_usb_caiaqdev*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
