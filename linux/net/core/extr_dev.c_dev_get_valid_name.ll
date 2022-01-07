; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_valid_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_valid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_get_valid_name(%struct.net* %0, %struct.net_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.net*, %struct.net** %5, align 8
  %9 = icmp ne %struct.net* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @dev_valid_name(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strchr(i8* %20, i8 signext 37)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @dev_alloc_name_ns(%struct.net* %24, %struct.net_device* %25, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %19
  %29 = load %struct.net*, %struct.net** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @__dev_get_by_name(%struct.net* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @IFNAMSIZ, align 4
  %48 = call i32 @strlcpy(i8* %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %33, %23, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_valid_name(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @dev_alloc_name_ns(%struct.net*, %struct.net_device*, i8*) #1

declare dso_local i64 @__dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
