; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_ctl_file* }
%struct.snd_ctl_file = type { i32*, i32, i32, %struct.snd_card*, i32, i32, i32 }
%struct.snd_card = type { i32, i32, i32 }

@SNDRV_DEVICE_TYPE_CONTROL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_CTL_SUBDEV_ITEMS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_ctl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.snd_ctl_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call i32 @stream_open(%struct.inode* %11, %struct.file* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %3, align 4
  br label %122

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @iminor(%struct.inode* %19)
  %21 = load i32, i32* @SNDRV_DEVICE_TYPE_CONTROL, align 4
  %22 = call %struct.snd_card* @snd_lookup_minor_data(i32 %20, i32 %21)
  store %struct.snd_card* %22, %struct.snd_card** %7, align 8
  %23 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %24 = icmp ne %struct.snd_card* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %114

28:                                               ; preds = %18
  %29 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = call i32 @snd_card_file_add(%struct.snd_card* %29, %struct.file* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %114

37:                                               ; preds = %28
  %38 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %39 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @try_module_get(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %110

46:                                               ; preds = %37
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.snd_ctl_file* @kzalloc(i32 40, i32 %47)
  store %struct.snd_ctl_file* %48, %struct.snd_ctl_file** %8, align 8
  %49 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %50 = icmp eq %struct.snd_ctl_file* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %105

54:                                               ; preds = %46
  %55 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %55, i32 0, i32 6
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %58, i32 0, i32 5
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %61, i32 0, i32 4
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %65 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %65, i32 0, i32 3
  store %struct.snd_card* %64, %struct.snd_card** %66, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %78, %54
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SND_CTL_SUBDEV_ITEMS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %73 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %67

81:                                               ; preds = %67
  %82 = load i32, i32* @current, align 4
  %83 = call i32 @task_pid(i32 %82)
  %84 = call i32 @get_pid(i32 %83)
  %85 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  store %struct.snd_ctl_file* %87, %struct.snd_ctl_file** %89, align 8
  %90 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %91 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %90, i32 0, i32 1
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @write_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %95 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %94, i32 0, i32 1
  %96 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %97 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %96, i32 0, i32 2
  %98 = call i32 @list_add_tail(i32* %95, i32* %97)
  %99 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %100 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %99, i32 0, i32 1
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @write_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %104 = call i32 @snd_card_unref(%struct.snd_card* %103)
  store i32 0, i32* %3, align 4
  br label %122

105:                                              ; preds = %51
  %106 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %107 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @module_put(i32 %108)
  br label %110

110:                                              ; preds = %105, %43
  %111 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %112 = load %struct.file*, %struct.file** %5, align 8
  %113 = call i32 @snd_card_file_remove(%struct.snd_card* %111, %struct.file* %112)
  br label %114

114:                                              ; preds = %110, %34, %25
  %115 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %116 = icmp ne %struct.snd_card* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %119 = call i32 @snd_card_unref(%struct.snd_card* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %81, %16
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_card* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @snd_card_file_add(%struct.snd_card*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.snd_ctl_file* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_card_unref(%struct.snd_card*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.snd_card*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
