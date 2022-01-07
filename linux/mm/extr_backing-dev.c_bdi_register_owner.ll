; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_bdi_register_owner.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_bdi_register_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdi_register_owner(%struct.backing_dev_info* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backing_dev_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MAJOR(i32 %10)
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MINOR(i32 %14)
  %16 = call i32 @bdi_register(%struct.backing_dev_info* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %23 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  %25 = call i32 @WARN_ON(%struct.device* %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %28 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %27, i32 0, i32 0
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @get_device(%struct.device* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bdi_register(%struct.backing_dev_info*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @WARN_ON(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
