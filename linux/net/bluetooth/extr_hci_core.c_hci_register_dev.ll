; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i8*, i8*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@hci_index_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hci%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%p name %s bus %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bt_debugfs = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@hci_rfkill_ops = common dso_local global i32 0, align 4
@HCI_RFKILLED = common dso_local global i32 0, align 4
@HCI_SETUP = common dso_local global i32 0, align 4
@HCI_AUTO_OFF = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@hci_dev_list_lock = common dso_local global i32 0, align 4
@hci_dev_list = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@HCI_DEV_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_register_dev(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 14
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %10, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %220

23:                                               ; preds = %15
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @ida_simple_get(i32* @hci_index_ida, i32 0, i32 0, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @ida_simple_get(i32* @hci_index_ida, i32 1, i32 0, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %220

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %220

41:                                               ; preds = %36
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.hci_dev* %50, i32 %53, i32 %56)
  %58 = load i32, i32* @WQ_HIGHPRI, align 4
  %59 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %41
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %214

72:                                               ; preds = %41
  %73 = load i32, i32* @WQ_HIGHPRI, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %72
  %85 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @destroy_workqueue(i8* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %214

91:                                               ; preds = %72
  %92 = load i32, i32* @bt_debugfs, align 4
  %93 = call i32 @IS_ERR_OR_NULL(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @bt_debugfs, align 4
  %100 = call i32 @debugfs_create_dir(i32 %98, i32 %99)
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %95, %91
  %104 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %105 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %104, i32 0, i32 8
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_set_name(i32* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 8
  %112 = call i32 @device_add(i32* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %205

116:                                              ; preds = %103
  %117 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %118 = call i32 @hci_leds_init(%struct.hci_dev* %117)
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %122, i32 0, i32 8
  %124 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %125 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %126 = call i32* @rfkill_alloc(i32 %121, i32* %123, i32 %124, i32* @hci_rfkill_ops, %struct.hci_dev* %125)
  %127 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %128 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %127, i32 0, i32 7
  store i32* %126, i32** %128, align 8
  %129 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %130 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %116
  %134 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %135 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %134, i32 0, i32 7
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @rfkill_register(i32* %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 7
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @rfkill_destroy(i32* %142)
  %144 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %145 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %144, i32 0, i32 7
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %139, %133
  br label %147

147:                                              ; preds = %146, %116
  %148 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %149 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = call i64 @rfkill_blocked(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %160 = load i32, i32* @HCI_RFKILLED, align 4
  %161 = call i32 @hci_dev_set_flag(%struct.hci_dev* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %152, %147
  %163 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %164 = load i32, i32* @HCI_SETUP, align 4
  %165 = call i32 @hci_dev_set_flag(%struct.hci_dev* %163, i32 %164)
  %166 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %167 = load i32, i32* @HCI_AUTO_OFF, align 4
  %168 = call i32 @hci_dev_set_flag(%struct.hci_dev* %166, i32 %167)
  %169 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %170 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 128
  br i1 %172, label %173, label %177

173:                                              ; preds = %162
  %174 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %175 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %176 = call i32 @hci_dev_set_flag(%struct.hci_dev* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %162
  %178 = call i32 @write_lock(i32* @hci_dev_list_lock)
  %179 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %180 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %179, i32 0, i32 6
  %181 = call i32 @list_add(i32* %180, i32* @hci_dev_list)
  %182 = call i32 @write_unlock(i32* @hci_dev_list_lock)
  %183 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %184 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %185 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %184, i32 0, i32 5
  %186 = call i64 @test_bit(i32 %183, i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %177
  %189 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %190 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %191 = call i32 @hci_dev_set_flag(%struct.hci_dev* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %177
  %193 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %194 = load i32, i32* @HCI_DEV_REG, align 4
  %195 = call i32 @hci_sock_dev_event(%struct.hci_dev* %193, i32 %194)
  %196 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %197 = call i32 @hci_dev_hold(%struct.hci_dev* %196)
  %198 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %199 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %202 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %201, i32 0, i32 4
  %203 = call i32 @queue_work(i8* %200, i32* %202)
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %220

205:                                              ; preds = %115
  %206 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %207 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @destroy_workqueue(i8* %208)
  %210 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %211 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @destroy_workqueue(i8* %212)
  br label %214

214:                                              ; preds = %205, %84, %69
  %215 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %216 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ida_simple_remove(i32* @hci_index_ida, i32 %217)
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %214, %192, %39, %33, %20
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i32, i32) #1

declare dso_local i8* @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @hci_leds_init(%struct.hci_dev*) #1

declare dso_local i32* @rfkill_alloc(i32, i32*, i32, i32*, %struct.hci_dev*) #1

declare dso_local i64 @rfkill_register(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

declare dso_local i64 @rfkill_blocked(i32*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_sock_dev_event(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_hold(%struct.hci_dev*) #1

declare dso_local i32 @queue_work(i8*, i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
